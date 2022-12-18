library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_textio.all;
use STD.textio.all;

entity TB_CLASSIFIER_w_VOTING is
--  Port ( );
end TB_CLASSIFIER_w_VOTING;

architecture arch of TB_CLASSIFIER_w_VOTING is

component PL_CLASSIFIER_w_VOTING is
  Port ( 
   -- GPIO INPUT interface 
   start            : in std_logic ;
   classification   : in std_logic ;
   
   -- AXI-Stream  INPUT interface
   axi_resetn       : in  std_logic; -- reset Active Low
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
end component;

constant clock_period : time := 20ns;

-- GPIO INPUT interface      
    signal  start                     : std_logic;                                               
    signal  classification            : std_logic;                                                                                                                  
-- AXI-Stream  IN  interface                                         
    signal  s_axis_aclk               : std_logic := '0'; 
	signal  axi_resetn                : std_logic := '0'; -- reset Active Low
    signal  s_axis_tready             : std_logic;                          -- from SIPO        
    signal  s_axis_tvalid             : std_logic := '0';                   -- from DMA         
    signal  s_axis_tdata              : std_logic_vector( 32 -1 downto 0 ); -- from DMA                                                                                            
-- AXI-Stream OUT  interface                                       
    signal  m_axis_tdata              : std_logic_vector( 32 -1 downto 0 );                     
    signal  m_axis_tvalid             : std_logic;                                              
    signal  m_axis_tready             : std_logic :='0';    -- DMA Sempre disponibile                                                                         
-- RAM Pre-comp Vect     
    signal  bram_addr_Pre_Comp_Vect   : std_logic_vector( 3 downto 0 );  -- da utilizzare solo i primi 4         
    signal  bram_wrdata_Pre_Comp_Vect : std_logic_vector( 407 downto 0 ); -- dimensione axi full da portare a 408 
    signal  bram_en_Pre_Comp_Vect     : std_logic;                                                                
    signal  bram_we_Pre_Comp_Vect     : std_logic;                                         
-- RAM Kernel Scale              
    signal  bram_addr_Kernel_Scale    : std_logic_vector( 3 downto 0 ); -- da utilizzare solo i primi 4bit       
    signal  bram_wrdata_Kernel_Scale  : std_logic_vector( 11 downto 0 ); -- dimensione axi full da portare a 12   
    signal  bram_en_Kernel_Scale      : std_logic;                                                                
    signal  bram_we_Kernel_Scale      : std_logic;                                           
-- RAM Bias                      
    signal  bram_addr_Bias            : std_logic_vector( 3 downto 0 ); -- da utilizzare solo i primi 4          
    signal  bram_wrdata_Bias          : std_logic_vector( 6 downto 0 ); -- dimensione axi full da portare a 7    
    signal  bram_en_Bias              : std_logic;                                                                
    signal  bram_we_Bias              : std_logic;   
-- start SETUP RAM
    signal  trig_axis_to_BRAM_PCV          :  std_logic;
    signal  trig_axis_to_BRAM_Kernel_Scale :  std_logic;
    signal  trig_axis_to_BRAM_Bias         :  std_logic;                                         
  
------------------------------------------
-- Signals necessary for Reading from file
------------------------------------------
    type array_of_std is array (0 to 36 - 1) of std_logic_vector(272 - 1 downto 0);
    signal attributes                 : array_of_std;
  
begin

DUT_0: PL_CLASSIFIER_w_VOTING Port Map (
-- GPIO INPUT interface       
  start                          => start,
  classification                 => classification,                             
  -- AXI-Stream  IN    
  axi_resetn					 => axi_resetn,
  s_axis_aclk                    => s_axis_aclk,
  s_axis_tready                  => s_axis_tready,
  s_axis_tvalid                  => s_axis_tvalid,
  s_axis_tdata                   => s_axis_tdata,                            
  -- AXI-Stream OUT              
  m_axis_tdata                   => m_axis_tdata,
  m_axis_tvalid                  => m_axis_tvalid,
  m_axis_tready                  => m_axis_tready,                            
  -- INPUT interface for RAM     
  -- RAM Pre-comp Vect           
  bram_addr_Pre_Comp_Vect        => bram_addr_Pre_Comp_Vect,
  bram_wrdata_Pre_Comp_Vect      => bram_wrdata_Pre_Comp_Vect,
  bram_en_Pre_Comp_Vect          => bram_en_Pre_Comp_Vect,
  bram_we_Pre_Comp_Vect          => bram_we_Pre_Comp_Vect,
  -- RAM Kernel Scale            
  bram_addr_Kernel_Scale         => bram_addr_Kernel_Scale,
  bram_wrdata_Kernel_Scale       => bram_wrdata_Kernel_Scale,
  bram_en_Kernel_Scale           => bram_en_Kernel_Scale,
  bram_we_Kernel_Scale           => bram_we_Kernel_Scale,
  -- RAM Bias                    
  bram_addr_Bias                 => bram_addr_Bias,
  bram_wrdata_Bias               => bram_wrdata_Bias,
  bram_en_Bias                   => bram_en_Bias,
  bram_we_Bias                   => bram_we_Bias,
  trig_axis_to_BRAM_PCV          => trig_axis_to_BRAM_PCV,      
  trig_axis_to_BRAM_Kernel_Scale => trig_axis_to_BRAM_Kernel_Scale,
  trig_axis_to_BRAM_Bias         => trig_axis_to_BRAM_Bias        
); 

-------------------------------
-- Lettura Attributi da file
-------------------------------
read_file: process
    file text_file : text open read_mode is "C:\Users\yoxo\Desktop\Giuseppe\Unical\CdL_LM_Tesi\Dati_Classifier_bin\Coeff_TB\Partizione_1\Attribute_Test.dat";
    variable Attributes_Test : line;
    variable successful      : boolean;            -- variabile di conferma lettura
    variable bitvec          : std_logic_vector( 272 - 1 downto 0 ) := (others => '0');
    variable i : integer := 0;
begin
    while not endfile(text_file) loop
    
        readline(text_file, Attributes_Test); -- passaggio riga alla variabile Attributes_Test 
        
          -- Skip empty lines and single-line comments
        if Attributes_Test.all'length = 0 or Attributes_Test.all(1) = '#' then
         next;
        end if;
        
          -- Lettura 
        read(Attributes_Test, bitvec, successful); -- linea, variabile in cui viene messam, esito
  
        assert successful
          report "Read failed for line: " & Attributes_Test.all
          severity failure; -- check errori di lettura
  
        attributes(i) <= bitvec;
        i := i +1 ;
    end loop;
      file_close(text_file);
      wait;
end process;


-------------------------------------------
-- Inizio variazione segnali
-------------------------------------------
s_axis_aclk <= not s_axis_aclk after clock_period/2;
axi_resetn  <= '0', '1' after 3*clock_period;

p_stimuli: process
begin 
    wait for 5 * clock_period; -- 100ns process;
    wait until rising_edge(s_axis_aclk);
    --wait for 1ns;          -- time for propagation of signal after rising edge 

-- -- IDLE
--     start <= '0';
--     classification <= '0';     
--     wait for  15 * clock_period; 

-- -- Da IDLE a SETUP
--     start <= '1';
--     classification <= '0';     
--     wait for  15 * clock_period; 

-- Da SETUP a PROCESSING
    start <= '1';
    classification <= '1';          
    wait for clock_period;

-- Simulazione DMA 
    ------------------------
    -- OUTPUT Interface S2MM
    ------------------------
    m_axis_tready <= '1'; -- DMA sempre in ricezione
    
    ------------------------
    -- INPUT  Interface MM2S
    ------------------------
    s_axis_tvalid  <= '1'; -- dato del DMA sempre valido 
    --------------------   
    wait for 2.25us;
    m_axis_tready <= '0'; -- DMA non più in ricezione
    wait for 3us;
    m_axis_tready <= '1'; -- DMA nuovamente in ricezione
      
 wait;  
end process;

DMA: process
variable i : integer := 0;
variable n_query : integer := 0;
begin
    if i < 9 then 
        if s_axis_tready = '1' and s_axis_tvalid  <= '1'  then
            if i = 8 then
                s_axis_tdata(31 downto 16) <= attributes(n_query)(15  downto  0 );
                s_axis_tdata(15 downto 0 ) <= (others => '0');
            else
                s_axis_tdata(31 downto 0) <= attributes(n_query)(271 - i*32  downto  240 - i*32 );
            end if;
            i := i + 1;
        else 
            i:= i;
        end if;
    else
        i := 0;
        n_query := n_query + 1;
    end if;
    wait until falling_edge(s_axis_aclk);
end process;


end arch;