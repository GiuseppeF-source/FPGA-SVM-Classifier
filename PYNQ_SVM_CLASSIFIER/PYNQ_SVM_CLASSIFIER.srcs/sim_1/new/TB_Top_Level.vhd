library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity TB_Top_Level is
end TB_Top_Level;

architecture rtl of TB_Top_Level is

constant AXI_WIDTH                    : natural := 32;
constant PCV_WIDTH                    : natural := 408;
constant KERNEL_WIDTH                 : natural := 12;
constant BIAS_WIDTH                   : natural := 7;
    
-- GPIO INPUT interface      
signal  start                          : std_logic;                                               
signal  classification                 : std_logic;                                                                                                                  
-- AXI-Stream  OUT  interface  -- MAIN DMA                                        
signal  m00_axis_aclk                  : std_logic;                                              
signal  m00_axis_tready                : std_logic;                                 
signal  m00_axis_tvalid                : std_logic;                          
signal  m00_axis_tdata                 : std_logic_vector( AXI_WIDTH -1 downto 0 );  
-- AXI-Stream  OUT  interface  -- PCV DMA                                     
signal  m01_axis_tready                : std_logic;                         
signal  m01_axis_tvalid                : std_logic;                  
signal  m01_axis_tdata                 : std_logic_vector( AXI_WIDTH -1 downto 0 );      
-- AXI-Stream  OUT  interface  -- Kernel Scale DMA                                        
signal  m02_axis_tready                : std_logic;                         
signal  m02_axis_tvalid                : std_logic;                  
signal  m02_axis_tdata                 : std_logic_vector( AXI_WIDTH -1 downto 0 ); 
-- AXI-Stream  OUT  interface  -- Bias DMA                                        
signal  m03_axis_tready                : std_logic;                         
signal  m03_axis_tvalid                : std_logic;                  
signal  m03_axis_tdata                 : std_logic_vector( AXI_WIDTH -1 downto 0 );                                                                                  
-- AXI-Stream IN  interface                                          
signal  s00_axis_tdata                 : std_logic_vector( AXI_WIDTH -1 downto 0 );                     
signal  s00_axis_tvalid                : std_logic;                                              
signal  s00_axis_tready                : std_logic;    -- DMA Sempre disponibile                                                                         
-- RAM Pre-comp Vect        
signal  bram_addr_Pre_Comp_Vect        : std_logic_vector( 3 downto 0 );  -- da utilizzare solo i primi 4         
signal  bram_wrdata_Pre_Comp_Vect      : std_logic_vector( PCV_WIDTH-1 downto 0 ); -- dimensione axi full da portare a 408 
signal  bram_en_Pre_Comp_Vect          : std_logic;                                                                
signal  bram_we_Pre_Comp_Vect          : std_logic;                                         
-- RAM Kernel Scale                   
signal  bram_addr_Kernel_Scale         : std_logic_vector( 3 downto 0 ); -- da utilizzare solo i primi 4bit       
signal  bram_wrdata_Kernel_Scale       : std_logic_vector( KERNEL_WIDTH -1 downto 0 ); -- dimensione axi full da portare a 12   
signal  bram_en_Kernel_Scale           : std_logic;                                                                
signal  bram_we_Kernel_Scale           : std_logic;                                           
-- RAM Bias                           
signal  bram_addr_Bias                 : std_logic_vector( 3 downto 0 ); -- da utilizzare solo i primi 4          
signal  bram_wrdata_Bias               : std_logic_vector( BIAS_WIDTH -1 downto 0 ); -- dimensione axi full da portare a 7    
signal  bram_en_Bias                   : std_logic;                                                                
signal  bram_we_Bias                   : std_logic;   
-- start SETUP RAM
signal  trig_axis_to_BRAM_PCV          :  std_logic;
signal  trig_axis_to_BRAM_Kernel_Scale :  std_logic;
signal  trig_axis_to_BRAM_Bias         :  std_logic;                                         


begin
    PL_CLASSIFIER_w_VOTING_inst : entity work.PL_CLASSIFIER_w_VOTING
    port map (
      start => start,
      classification => classification,
      s_axis_aclk => m00_axis_aclk,
      s_axis_tready => m00_axis_tready,
      s_axis_tvalid => m00_axis_tvalid,
      s_axis_tdata => m00_axis_tdata,
      m_axis_tdata => s00_axis_tdata,
      m_axis_tvalid => s00_axis_tvalid,
      m_axis_tready => s00_axis_tready,
      bram_addr_Pre_Comp_Vect => bram_addr_Pre_Comp_Vect,
      bram_wrdata_Pre_Comp_Vect => bram_wrdata_Pre_Comp_Vect,
      bram_en_Pre_Comp_Vect => bram_en_Pre_Comp_Vect,
      bram_we_Pre_Comp_Vect => bram_we_Pre_Comp_Vect,
      bram_addr_Kernel_Scale => bram_addr_Kernel_Scale,
      bram_wrdata_Kernel_Scale => bram_wrdata_Kernel_Scale,
      bram_en_Kernel_Scale => bram_en_Kernel_Scale,
      bram_we_Kernel_Scale => bram_we_Kernel_Scale,
      bram_addr_Bias => bram_addr_Bias,
      bram_wrdata_Bias => bram_wrdata_Bias,
      bram_en_Bias => bram_en_Bias,
      bram_we_Bias => bram_we_Bias,
      trig_axis_to_BRAM_PCV => trig_axis_to_BRAM_PCV,
      trig_axis_to_BRAM_Kernel_Scale => trig_axis_to_BRAM_Kernel_Scale,
      trig_axis_to_BRAM_Bias => trig_axis_to_BRAM_Bias
    );
    
    axis_to_bram_PCV_inst : entity work.axis_to_bram_PCV
    generic map (
        n_in_bit => AXI_WIDTH,
        n_out_bit => PCV_WIDTH
    )
    port map (
        clk => m00_axis_aclk,
        trig => trig_axis_to_BRAM_PCV,
        s_axis_tready => m01_axis_tready,
        s_axis_tvalid => m01_axis_tvalid,
        s_axis_tdata => m01_axis_tdata,
        addr_ram => bram_addr_Pre_Comp_Vect,
        data_out => bram_wrdata_Pre_Comp_Vect,
        en_ram => bram_en_Pre_Comp_Vect,
        we_ram => bram_we_Pre_Comp_Vect
    );

    axis_to_bram_Kernel_inst : entity work.axis_to_bram_Kernel
    generic map (
        n_in_bit => AXI_WIDTH,
        n_out_bit => KERNEL_WIDTH
    )
    port map (
        clk => m00_axis_aclk,
        trig => trig_axis_to_BRAM_Kernel_Scale,
        s_axis_tready => m02_axis_tready,
        s_axis_tvalid => m02_axis_tvalid,
        s_axis_tdata => m02_axis_tdata,
        addr_ram => bram_addr_Kernel_Scale,
        data_out => bram_wrdata_Kernel_Scale,
        en_ram => bram_en_Kernel_Scale,
        we_ram => bram_we_Kernel_Scale
    );

    axis_to_bram_Bias_inst : entity work.axis_to_bram_Bias
    generic map (
        n_in_bit => AXI_WIDTH,
        n_out_bit => BIAS_WIDTH
    )
    port map (
        clk => m00_axis_aclk,
        trig => trig_axis_to_BRAM_Bias,
        s_axis_tready => m03_axis_tready,
        s_axis_tvalid => m03_axis_tvalid,
        s_axis_tdata => m03_axis_tdata,
        addr_ram => bram_addr_Bias,
        data_out => bram_wrdata_Bias,
        en_ram => bram_en_Bias,
        we_ram => bram_we_Bias
    );

    TB_Tester_inst : entity work.TB_Tester
    port map (
      start => start,
      classification  => classification,
      m00_axis_aclk   => m00_axis_aclk,
      m00_axis_tready => m00_axis_tready,
      m00_axis_tvalid => m00_axis_tvalid,
      m00_axis_tdata  => m00_axis_tdata,
      s00_axis_tdata  => s00_axis_tdata,
      s00_axis_tvalid => s00_axis_tvalid,
      s00_axis_tready => s00_axis_tready,
      m01_axis_tready => m01_axis_tready,
      m01_axis_tvalid => m01_axis_tvalid,
      m01_axis_tdata => m01_axis_tdata,
      m02_axis_tready => m02_axis_tready,
      m02_axis_tvalid => m02_axis_tvalid,
      m02_axis_tdata  => m02_axis_tdata,
      m03_axis_tready => m03_axis_tready,
      m03_axis_tvalid => m03_axis_tvalid,
      m03_axis_tdata => m03_axis_tdata
    );
  
  

end rtl;
