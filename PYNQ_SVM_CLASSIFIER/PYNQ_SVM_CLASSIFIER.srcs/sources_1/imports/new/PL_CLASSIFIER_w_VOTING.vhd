-- vsg_off
-- vsg_off
-- vsg_off
-- vsg_off
-- vsg_off
-- vsg_off
-- vsg_off
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
LIBRARY xil_defaultlib;
USE xil_defaultlib.personal_type_pkg.ALL;

entity PL_CLASSIFIER_w_VOTING is
  Port ( 
  -- GPIO INPUT interface 
  start            : in std_logic := '0';
  classification   : in std_logic := '0';
  
  -- AXI-Stream  INPUT interface
  s_axis_aclk      : in  std_logic;
  s_axis_tready    : out std_logic;                          -- from SIPO
  s_axis_tvalid    : in  std_logic;                          -- from DMA
  s_axis_tdata     : in  std_logic_vector( 32 -1 downto 0 ); -- from DMA 
  
  -- AXI-Stream OUTPUT interface
  m_axis_tdata     : out std_logic_vector( 32 -1 downto 0 );
  m_axis_tvalid    : out std_logic;
  m_axis_tready    :  in std_logic;

  
  -- INPUT interface for RAM 
  -- RAM Pre-comp Vect
  bram_addr_Pre_Comp_Vect   : in std_logic_vector( 3 downto 0 );  
  bram_wrdata_Pre_Comp_Vect : in std_logic_vector( 407 downto 0 );
  bram_en_Pre_Comp_Vect     : in std_logic;
  bram_we_Pre_Comp_Vect     : in std_logic;
  -- RAM Kernel Scale
  bram_addr_Kernel_Scale    : in std_logic_vector( 3 downto 0 ); 
  bram_wrdata_Kernel_Scale  : in std_logic_vector( 11 downto 0 ); 
  bram_en_Kernel_Scale      : in std_logic;
  bram_we_Kernel_Scale      : in std_logic; 
  -- RAM Bias
  bram_addr_Bias            : in std_logic_vector( 3 downto 0 ); 
  bram_wrdata_Bias          : in std_logic_vector( 6 downto 0 ); 
  bram_en_Bias              : in std_logic;
  bram_we_Bias              : in std_logic;
  -- Abilitazione Caricamento RAM
  trig_axis_to_BRAM_PCV          : out std_logic; -- trigger = 1 permette caricamento da DMA a BRAM ( comanda uP )            
  trig_axis_to_BRAM_Kernel_Scale : out std_logic; -- trigger = 1 permette caricamento da DMA a BRAM ( comanda uP )        
  trig_axis_to_BRAM_Bias         : out std_logic -- trigger = 1 permette caricamento da DMA a BRAM ( comanda uP )
  );
end PL_CLASSIFIER_w_VOTING;

architecture arch of PL_CLASSIFIER_w_VOTING is

-------------------------------
-- SIPO_Buffer signal 
-------------------------------
signal i_ce_sipo         : std_logic := '1'; 
signal i_rst_sipo        : std_logic := '0';
signal i_valid_sipo      : std_logic;
signal i_ready_from_SIPO : std_logic;
signal i_out_data_sipo   : std_logic_vector( 271 downto 0); -- 8bit di attributo *34, in 2's complement  
-------------------------------
-- Classifier signal 
-------------------------------
type t_Attr_j is array (0 to 34 - 1 ) of std_logic_vector( 7 downto 0 );
signal i_Attr_classifier : Attr_in_array_of_std_logic_vector;--t_Attr_j;--
type t_Pre_comp_vect is array (0 to 34 -1) of std_logic_vector( 11 downto 0 );
signal i_Pre_comp_vect   : Acc_SVxAlphaxSVLabel_in_array_of_std_logic_vector;--t_Pre_comp_vect;--
signal i_Kernel_Scale    : std_logic_vector( 11 downto 0 );
signal i_Bias            : std_logic_vector( 6 downto 0 );
signal i_out_Classifier  : std_logic;
signal i_rst_svm         : std_logic := '0';
signal i_rst_pipe        : std_logic := '0';
signal i_ce_pipe         : std_logic := '1';
signal i_ce_dsp_cascade  : std_logic := '1';
signal i_ce_dsp_axbplusc : std_logic := '1';
-------------------------------
-- RAM_Pre_Computed_Vector signal 
-------------------------------
signal i_addr_RAM_Pre_Computed_Vector :  std_logic_vector(4   -1 downto 0);  -- Address bus, width determined from RAM_DEPTH
signal i_din_RAM_Pre_Computed_Vector  :  std_logic_vector(408 -1 downto 0);  -- RAM input data
signal i_we_RAM_Pre_Computed_Vector   :  std_logic := '0';                   -- Write enable
signal i_en_RAM_Pre_Computed_Vector   :  std_logic := '1';                   -- RAM Enable, for additional power savings, disable port when not in use
signal i_regce_RAM_Pre_Computed_Vector:  std_logic := '1';                   -- Output register enable
signal i_dout_RAM_Pre_Computed_Vector :  std_logic_vector(408 -1 downto 0);  -- RAM output data 
-------------------------------
-- RAM_Kernel_Scale signal 
-------------------------------
signal i_addr_RAM_Kernel_Scale       : std_logic_vector(4  -1 downto 0);     -- Address bus, width determined from RAM_DEPTH
signal i_din_RAM_Kernel_Scale        : std_logic_vector(12 -1 downto 0);     -- RAM input data
signal i_we_RAM_Kernel_Scale         : std_logic := '0';                     -- Write enable
signal i_en_RAM_Kernel_Scale         : std_logic := '1';                     -- RAM Enable, for additional power savings, disable port when not in use
signal i_regce_RAM_Kernel_Scale      : std_logic := '0';                     -- Output register enable
signal i_dout_RAM_Kernel_Scale       : std_logic_vector (12 -1  downto 0);
-------------------------------
-- RAM_Bias signal 
-------------------------------
signal i_addr_RAM_Bias :  std_logic_vector( 4 -1 downto 0);                  -- Address bus, width determined from RAM_DEPTH
signal i_din_RAM_Bias  :  std_logic_vector( 7 -1 downto 0);                  -- RAM input data
signal i_we_RAM_Bias   :  std_logic := '0';                                  -- Write enable
signal i_en_RAM_Bias   :  std_logic := '1';                                  -- RAM Enable, for additional power savings, disable port when not in use
signal i_regce_RAM_Bias:  std_logic := '0';                                  -- Output register enable
signal i_dout_RAM_Bias :  std_logic_vector( 7- 1 downto 0);
-------------------------------
-- Voting_w_ce signal 
-------------------------------
signal i_rst_voting       : std_logic;
signal i_ce_voting        : std_logic;
signal i_sign_classifier  : std_logic;
signal i_sign_valid       : std_logic;
signal i_win_class        : std_logic_vector( 2 downto 0 );
signal i_win_class_valid  : std_logic;
-------------------------------
-- FSM signal 
-------------------------------
signal i_BRAM_PS_to_PL                      : std_logic; -- 0 scrive il PS, 1 legge la PL
signal i_FSM_addr_RAM_Pre_Computed_Vector   : std_logic_vector( 4-1 downto 0 );
signal i_FSM_en_RAM_Pre_Computed_Vector     : std_logic;
signal i_FSM_addr_RAM_Kernel_Scale          : std_logic_vector( 4-1 downto 0 );
signal i_FSM_en_RAM_RAM_Kernel_Scaler       : std_logic;
signal i_FSM_addr_RAM_Bias                  : std_logic_vector( 4-1 downto 0 );
signal i_FSM_en_RAM_Bias                    : std_logic;


component Classifier is
  Port ( 
  Attribute_j                 : in Attr_in_array_of_std_logic_vector;        -- Query da classificare
  SV_Alpha_Label              : in Acc_SVxAlphaxSVLabel_in_array_of_std_logic_vector; -- Vettore pre-computato
  Kernel_Scale_inv_quadro_SVM : in  std_logic_vector( 11 downto 0 ); -- Kernel_Scale^-2 
  Bias_SVM                    : in  std_logic_vector( 6 downto 0 ); -- Bias da aggiungere alla fine 
  Output_Classifier           : out std_logic; -- Per ora ultimo bit del risultato SVM ( il segno )
  RST_SVM                     : in  std_logic;
  RST_PIPE                    : in  std_logic;
  CE_PIPE                     : in  std_logic;
  CE_DSP_AxB_Cascade          : in  std_logic;
  CE_DSP_AxB_plus_C           : in  std_logic;
  CLK                         : in  std_logic
  );
end component;

component SIPO_buffer is
    Port ( 
    clk: in std_logic;
    ce_sipo: in std_logic;
    rst: in std_logic;
    
    -- AXI-Stream  input interface
    in_ready : out std_logic;
    in_valid : in std_logic;
    in_data : in std_logic_vector(32 - 1 downto 0);
    
    -- AXI-Stream output interface
    
    out_valid : out std_logic;
    out_data : out std_logic_vector( 271 downto 0)-- 8bit di attributo in 2's complement *34 
    );
end component;

component RAM_Pre_Computed_Vector is
  Port (
  addr_RAM_Pre_Computed_Vector : in std_logic_vector( 4-1 downto 0);    -- Address bus, width determined from RAM_DEPTH
  din_RAM_Pre_Computed_Vector  : in std_logic_vector(408-1 downto 0);                -- RAM input data
  clk_RAM_Pre_Computed_Vector  : in std_logic;                                           -- Clock
  we_RAM_Pre_Computed_Vector   : in std_logic;                                           -- Write enable
  en_RAM_Pre_Computed_Vector   : in std_logic;                                           -- RAM Enable, for additional power savings, disable port when not in use
  regce_RAM_Pre_Computed_Vector: in std_logic;                                           -- Output register enable
  dout_RAM_Pre_Computed_Vector : out std_logic_vector(408-1 downto 0)               -- RAM output data 
);
end component;

component RAM_Kernel_Scale is
  Port (
  addr_RAM_Kernel_Scale : in std_logic_vector(4 -1 downto 0);    -- Address bus, width determined from RAM_DEPTH
  din_RAM_Kernel_Scale  : in std_logic_vector(12-1 downto 0);                -- RAM input data
  clk_RAM_Kernel_Scale  : in std_logic;                                           -- Clock
  we_RAM_Kernel_Scale   : in std_logic;                                           -- Write enable
  en_RAM_Kernel_Scale   : in std_logic;                                           -- RAM Enable, for additional power savings, disable port when not in use
  regce_RAM_Kernel_Scale: in std_logic;                                           -- Output register enable
  dout_RAM_Kernel_Scale : out std_logic_vector(12-1 downto 0)               -- RAM output data 
);
end component;

component RAM_Bias is
  Port (
  addr_RAM_Bias : in std_logic_vector(4 -1 downto 0);    -- Address bus, width determined from RAM_DEPTH
  din_RAM_Bias  : in std_logic_vector(7 -1 downto 0);                -- RAM input data
  clk_RAM_Bias  : in std_logic;                                           -- Clock
  we_RAM_Bias   : in std_logic;                                           -- Write enable
  en_RAM_Bias   : in std_logic;                                           -- RAM Enable, for additional power savings, disable port when not in use
  regce_RAM_Bias: in std_logic;                                           -- Output register enable
  dout_RAM_Bias : out std_logic_vector(7 -1 downto 0)               -- RAM output data 
);
end component;

component Voting_w_ce is 
  Port (
  clk             : in std_logic;                                       
  rst             : in std_logic;                                       
  ce              : in std_logic;                                                                                                          
  sign_classifier : in std_logic;                       -- 0 positivo 1 negativo             
  sign_valid      : in std_logic;                       -- input valido da Classifier                                                                               
  win_class       : out std_logic_vector( 2 downto 0 ); -- 6 classi     
  win_class_valid : out std_logic                       -- output valido
);
end component;

component FSM is 
  Port (
  s_axis_aclk                    : in std_logic;                                            
  start                          : in std_logic; -- 0 stop --  1 start                      
  classification                 : in std_logic; -- avvia il processamento se 1             
  -- selettore RAM                                                                          
  BRAM_PS_to_PL                  : out std_logic; -- 0 scrive il PS -- 1 legge la PL  
  trig_axis_to_BRAM_PCV          : out std_logic; -- trigger = 1 permette caricamento da DMA a BRAM ( comanda uP )            
  trig_axis_to_BRAM_Kernel_Scale : out std_logic; -- trigger = 1 permette caricamento da DMA a BRAM ( comanda uP )        
  trig_axis_to_BRAM_Bias         : out std_logic; -- trigger = 1 permette caricamento da DMA a BRAM ( comanda uP )      
  -- RAM Pre computed Vector                                                                
  addr_RAM_Pre_Computed_Vector   : out std_logic_vector( 4-1 downto 0 );                    
  en_RAM_Pre_Computed_Vector     : out std_logic;                                           
  -- RAM Kernel Scale                                                                       
  addr_RAM_Kernel_Scale          : out std_logic_vector( 4-1 downto 0 );                    
  en_RAM_RAM_Kernel_Scale        : out std_logic;                                           
  -- RAMs Bias                                                                              
  addr_RAM_Bias                  : out std_logic_vector( 4-1 downto 0 );                    
  en_RAM_Bias                    : out std_logic;                                           
  -- Controllo SIPO Buffer                                                                  
  ce_sipo                        : out std_logic;                                           
  rst_sipo                       : out std_logic;                                           
  in_ready                       : in  std_logic; -- ready comunicato dal modulo SIPO       
  out_valid_sipo                 : in  std_logic; -- valid da SIPO                          
  -- Controllo Classifier                                                                   
  rst_svm_classifier             : out std_logic;                                           
  rst_pipe_classfier             : out std_logic;                                           
  ce_pipe_classifier             : out std_logic;                                           
  ce_DSP_AxB_Cascade_classifier  : out std_logic;                                           
  ce_DSP_AxB_plus_C_classifier   : out std_logic;                                           
  -- Controllo Voting_w_ce                                                                  
  rst_voting                     : out std_logic;                                           
  ce_voting                      : out std_logic;                                           
  sign_valid                     : out std_logic; -- segnala corretta uscita classifier     
  win_class_valid                : in  std_logic;                                           
  -- Gestione AXI-Stream Output                                                             
  m_axis_tready                  :  in std_logic; -- ready from DMA                         
  m_axis_valid                   : out std_logic; -- valid to DMA   
  --m_axis_tlast                   : out std_logic;                        
  -- Gestione AXI-Stream Input                                                              
  s_axis_tready                  : out std_logic 
  --s_axis_tlast                   : in std_logic                                           
);    
end component;

Begin

PM_SIPO: SIPO_buffer Port Map ( 
        clk       => s_axis_aclk,
        ce_sipo   => i_ce_sipo,
        rst       => i_rst_sipo,
        -- AXI-Stream  input interface
        in_ready  => i_ready_from_SIPO,
        in_valid  => s_axis_tvalid,
        in_data   => s_axis_tdata,
        -- AXI-Stream output interface
        --out_ready : in std_logic; -- non indispensabile 
        out_valid => i_valid_sipo,
        out_data  => i_out_data_sipo
   );

PM_Classifier: Classifier Port Map (
        Attribute_j                 => i_Attr_classifier,
        SV_Alpha_Label              => i_Pre_comp_vect,
        Kernel_Scale_inv_quadro_SVM => i_Kernel_Scale, 
        Bias_SVM                    => i_Bias, 
        Output_Classifier           => i_out_Classifier,
        RST_SVM                     => i_rst_svm,
        RST_PIPE                    => i_rst_pipe,
        CE_PIPE                     => i_ce_pipe,
        CE_DSP_AxB_Cascade          => i_ce_dsp_cascade,
        CE_DSP_AxB_plus_C           => i_ce_dsp_axbplusc,
        CLK                         => s_axis_aclk
    );
    
PM_RAM_Pre_Computed_Vector: RAM_Pre_Computed_Vector
    Port map (
        addr_RAM_Pre_Computed_Vector  => i_addr_RAM_Pre_Computed_Vector,
        din_RAM_Pre_Computed_Vector   => i_din_RAM_Pre_Computed_Vector,
        clk_RAM_Pre_Computed_Vector   => s_axis_aclk,
        we_RAM_Pre_Computed_Vector    => i_we_RAM_Pre_Computed_Vector,
        en_RAM_Pre_Computed_Vector    => i_en_RAM_Pre_Computed_Vector,
        regce_RAM_Pre_Computed_Vector => i_regce_RAM_Pre_Computed_Vector,
        dout_RAM_Pre_Computed_Vector  => i_dout_RAM_Pre_Computed_Vector
    );    
    
PM_RAM_Kernel_Scale: RAM_Kernel_Scale Port Map(
        addr_RAM_Kernel_Scale       => i_addr_RAM_Kernel_Scale,
        din_RAM_Kernel_Scale        => i_din_RAM_Kernel_Scale,
        clk_RAM_Kernel_Scale        => s_axis_aclk,
        we_RAM_Kernel_Scale         => i_we_RAM_Kernel_Scale,
        en_RAM_Kernel_Scale         => i_en_RAM_Kernel_Scale,
        regce_RAM_Kernel_Scale      => i_regce_RAM_Kernel_Scale,
        dout_RAM_Kernel_Scale       => i_dout_RAM_Kernel_Scale
    );

PM_RAM_Bias: RAM_Bias Port Map(
        addr_RAM_Bias  => i_addr_RAM_Bias,
        din_RAM_Bias   => i_din_RAM_Bias,
        clk_RAM_Bias   => s_axis_aclk,
        we_RAM_Bias    => i_we_RAM_Bias,
        en_RAM_Bias    => i_en_RAM_Bias,
        regce_RAM_Bias => i_regce_RAM_Bias,
        dout_RAM_Bias  => i_dout_RAM_Bias
    );
     
PM_Voting: Voting_w_ce Port Map ( 
        clk             => s_axis_aclk,
        rst             => i_rst_voting,
        ce              => i_ce_voting,
        sign_classifier => i_sign_classifier,
        sign_valid      => i_sign_valid,
        win_class       => i_win_class,
        win_class_valid => i_win_class_valid
); 

PM_FSM: FSM Port Map (
    s_axis_aclk                   => s_axis_aclk,
    start                         => start,
    classification                => classification,
    -- selettore RAM              
    BRAM_PS_to_PL                 => i_BRAM_PS_to_PL,
    trig_axis_to_BRAM_PCV          => trig_axis_to_BRAM_PCV         ,
    trig_axis_to_BRAM_Kernel_Scale => trig_axis_to_BRAM_Kernel_Scale,
    trig_axis_to_BRAM_Bias         => trig_axis_to_BRAM_Bias        ,
    -- RAM Pre computed Vector    
    addr_RAM_Pre_Computed_Vector  => i_FSM_addr_RAM_Pre_Computed_Vector,
    en_RAM_Pre_Computed_Vector    => i_FSM_en_RAM_Pre_Computed_Vector,
    -- RAM Kernel Scale           
    addr_RAM_Kernel_Scale         => i_FSM_addr_RAM_Kernel_Scale,
    en_RAM_RAM_Kernel_Scale       => i_FSM_en_RAM_RAM_Kernel_Scaler,
    -- RAMs Bias                  
    addr_RAM_Bias                 => i_FSM_addr_RAM_Bias,
    en_RAM_Bias                   => i_FSM_en_RAM_Bias,
    -- Controllo SIPO Buffer      
    ce_sipo                       => i_ce_sipo,
    rst_sipo                      => i_rst_sipo,
    in_ready                      => i_ready_from_SIPO,
    out_valid_sipo                => i_valid_sipo,
    -- Controllo Classifier       
    rst_svm_classifier            => i_rst_svm,
    rst_pipe_classfier            => i_rst_pipe,
    ce_pipe_classifier            => i_ce_pipe,
    ce_DSP_AxB_Cascade_classifier => i_ce_dsp_cascade,
    ce_DSP_AxB_plus_C_classifier  => i_ce_dsp_axbplusc,
    -- Controllo Voting_w_ce      
    rst_voting                    => i_rst_voting,
    ce_voting                     => i_ce_voting,
    sign_valid                    => i_sign_valid,
    win_class_valid               => i_win_class_valid,
    -- Gestione AXI-Stream Output
    m_axis_tready                 => m_axis_tready,
    m_axis_valid                  => m_axis_tvalid,
    --m_axis_tlast                  => m_axis_tlast,
    -- Gestione AXI-Stream Input  
    s_axis_tready                 => s_axis_tready 
    );    

-- Passaggio out SIPO -> Classifier
-- da word 271 bit a 34 elementi da 8 bit 
-- stessa cosa per RAM_Pre_Comp. -> Classifier
for_in_classifier:
for i in  0 to 34 -1 generate 
   i_Attr_classifier(i)(7 downto 0) <= i_out_data_sipo(271 - 8*i downto 264 - 8*i );
   i_Pre_comp_vect(i)( 11 downto 0) <= i_dout_RAM_Pre_Computed_Vector(407 - i*12 downto 396 - 12*i);
end generate;

i_Kernel_Scale       <= i_dout_RAM_Kernel_Scale ;
i_Bias               <= i_dout_RAM_Bias ;
i_sign_classifier    <= i_out_Classifier; -- da classifier al voting

-- Gestione dati in uscita,  in AXI-Stream
m_axis_tdata( 2 downto 0 )  <= i_win_class;      -- uscita voting to axi stream
m_axis_tdata( 31 downto 3 ) <= ( others => '0' );


                                    -- input da PS con i_BRAM_PS_to_PL = '1'                                   -- input da FSM
i_addr_RAM_Pre_Computed_Vector  <= bram_addr_Pre_Comp_Vect( 4-1 downto 0 )      when (i_BRAM_PS_to_PL = '0') else i_FSM_addr_RAM_Pre_Computed_Vector;   
i_din_RAM_Pre_Computed_Vector   <= bram_wrdata_Pre_Comp_Vect( 408-1 downto 0 )  when (i_BRAM_PS_to_PL = '0') else (others => '0');                      
i_we_RAM_Pre_Computed_Vector    <= bram_we_Pre_Comp_Vect                        when (i_BRAM_PS_to_PL = '0') else '0';                               
i_en_RAM_Pre_Computed_Vector    <= bram_en_Pre_Comp_Vect                        when (i_BRAM_PS_to_PL = '0') else i_FSM_en_RAM_Pre_Computed_Vector;     
                                                                                                                     
i_addr_RAM_Kernel_Scale         <= bram_addr_Kernel_Scale( 4-1 downto 0 )       when (i_BRAM_PS_to_PL = '0') else i_FSM_addr_RAM_Kernel_Scale;          
i_din_RAM_Kernel_Scale          <= bram_wrdata_Kernel_Scale( 12-1 downto 0 )    when (i_BRAM_PS_to_PL = '0') else (others => '0');                      
i_we_RAM_Kernel_Scale           <= bram_we_Kernel_Scale                         when (i_BRAM_PS_to_PL = '0') else '0';                                  
i_en_RAM_Kernel_Scale           <= bram_en_Kernel_Scale                         when (i_BRAM_PS_to_PL = '0') else i_FSM_en_RAM_RAM_Kernel_Scaler;       
                                                                                                                  
i_addr_RAM_Bias                 <= bram_addr_Bias( 4-1 downto 0 )               when (i_BRAM_PS_to_PL = '0') else i_FSM_addr_RAM_Bias;                  
i_din_RAM_Bias                  <= bram_wrdata_Bias( 7-1 downto 0 )             when (i_BRAM_PS_to_PL = '0') else ( others => '0' );                      
i_we_RAM_Bias                   <= bram_we_Bias                                 when (i_BRAM_PS_to_PL = '0') else '0';                                  
i_en_RAM_Bias                   <= bram_en_Bias                                 when (i_BRAM_PS_to_PL = '0') else i_FSM_en_RAM_Bias;                    

end arch;
