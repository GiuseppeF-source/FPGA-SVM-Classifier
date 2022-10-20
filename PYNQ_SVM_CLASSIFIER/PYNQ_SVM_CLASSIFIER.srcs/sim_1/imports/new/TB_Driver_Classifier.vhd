library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_textio.all;
use iEEE.std_logic_arith.all;

LIBRARY xil_defaultlib;
USE xil_defaultlib.personal_type_pkg.ALL;

use work.ram_pkg.all;

use STD.textio.all;

entity TB_Driver_Classifier is
end TB_Driver_Classifier;

architecture arch of TB_Driver_Classifier is

------------------------------------------
-- Component Declaration
------------------------------------------
--component Classifier is
--  Port ( 
--  Attribute_j                 : in Attr_in_array_of_std_logic_vector; -- Query da classificare
--  SV_Alpha_Label              : in Acc_SVxAlphaxSVLabel_in_array_of_std_logic_vector; -- Vettore pre-computato
--  Kernel_Scale_inv_quadro_SVM : in  std_logic_vector( 11 downto 0 ); -- Kernel_Scale^-2 
--  Bias_SVM                    : in  std_logic_vector( 6 downto 0 ); -- Bias da aggiungere alla fine 
--  Output_Classifier           : out std_logic; -- Per ora ultimo bit del risultato SVM ( il segno )
--  RST_SVM                     : in  std_logic;
--  RST_PIPE                    : in  std_logic;
--  CE_PIPE                     : in  std_logic;
--  CE_DSP_AxB_Cascade          : in  std_logic;
--  CE_DSP_AxB_plus_C           : in  std_logic;
--  CLK                         : in  std_logic
--  );
--end component;

--component RAM_Kernel_Scale is
--  Generic (
--    WIDTH: integer := 12; -- 2 parte intera + 10 parte frazionaria
--    DEPTH: integer := 16 -- 16 invece di 15 in modo da avere 4 bit di indirizzo, con 15 ne usa 3
--);
--  Port (
--  addr_RAM_Kernel_Scale : in std_logic_vector((clogb2(DEPTH)-1) downto 0);    -- Address bus, width determined from RAM_DEPTH
--  din_RAM_Kernel_Scale  : in std_logic_vector(WIDTH-1 downto 0);                -- RAM input data
--  clk_RAM_Kernel_Scale  : in std_logic;                                           -- Clock
--  we_RAM_Kernel_Scale   : in std_logic;                                           -- Write enable
--  en_RAM_Kernel_Scale   : in std_logic;                                           -- RAM Enable, for additional power savings, disable port when not in use
--  regce_RAM_Kernel_Scale: in std_logic;                                           -- Output register enable
--  dout_RAM_Kernel_Scale : out std_logic_vector(WIDTH-1 downto 0)               -- RAM output data 
--);
--end component;

--component RAM_Bias is
--generic (
--WIDTH: integer := 7; -- 3 parte intera + 4 parte frazionaria 
--DEPTH: integer := 16 -- 16 invece di 15 in modo da avere 4 bit di indirizzo, con 15 ne usa 3
--);
--  Port (
--  addr_RAM_Bias : in std_logic_vector((clogb2(DEPTH)-1) downto 0);    -- Address bus, width determined from RAM_DEPTH
--  din_RAM_Bias  : in std_logic_vector(WIDTH-1 downto 0);                -- RAM input data
--  clk_RAM_Bias  : in std_logic;                                           -- Clock
--  we_RAM_Bias   : in std_logic;                                           -- Write enable
--  en_RAM_Bias   : in std_logic;                                           -- RAM Enable, for additional power savings, disable port when not in use
--  regce_RAM_Bias: in std_logic;                                           -- Output register enable
--  dout_RAM_Bias : out std_logic_vector(WIDTH-1 downto 0)               -- RAM output data 
--);
--end component;

--component RAM_Pre_Computed_Vector is
--generic (
--WIDTH: integer := 408; -- ( 7 parte intera + 5 frazionaria ) * 34 
--DEPTH: integer := 16 -- 16 invece di 15 in modo da avere 4 bit di indirizzo, con 15 ne usa 3
--);
--  Port (
--  addr_RAM_Pre_Computed_Vector : in std_logic_vector((clogb2(DEPTH)-1) downto 0);    -- Address bus, width determined from RAM_DEPTH
--  din_RAM_Pre_Computed_Vector  : in std_logic_vector(WIDTH-1 downto 0);                -- RAM input data
--  clk_RAM_Pre_Computed_Vector  : in std_logic;                                           -- Clock
--  we_RAM_Pre_Computed_Vector   : in std_logic;                                           -- Write enable
--  en_RAM_Pre_Computed_Vector   : in std_logic;                                           -- RAM Enable, for additional power savings, disable port when not in use
--  regce_RAM_Pre_Computed_Vector: in std_logic;                                           -- Output register enable
--  dout_RAM_Pre_Computed_Vector : out std_logic_vector(WIDTH-1 downto 0)               -- RAM output data 
--);
--end component;

------------------------------------------
-- Clock related signal and Constants
------------------------------------------
signal   clk :  std_logic := '1' ;
constant clock_period : time := 20 ns;
constant DEPTH_Coeff : integer := 16;
constant WIDTH_Kernel_Scale : integer := 12;
constant WIDTH_Bias : integer := 7;
constant WIDTH_Pre_Computed_Vector : integer := 408; -- 12bit * 34
constant WIDTH_Attribute : integer := 272; -- 8bit * 34
constant num_attribute: integer := 34;

-------------------------------
-- UUT Classifier signal 
-------------------------------
signal s_Attribute_j               : Attr_in_array_of_std_logic_vector ;                   -- sostituito con lettura da file
signal s_SV_Alpha_Label            : Acc_SVxAlphaxSVLabel_in_array_of_std_logic_vector;   -- sostituito da lettura ram
signal Kernel_Scale_inv_quadro_SVM : std_logic_vector( WIDTH_Kernel_Scale -1 downto 0 ); 
signal Bias_SVM                    : std_logic_vector( WIDTH_Bias -1  downto 0 ); 
signal Output_Classifier           : std_logic; 
signal RST_SVM                     : std_logic := '1' ;
signal RST_PIPE                    : std_logic := '1' ;
signal CE_PIPE                     : std_logic := '0';
signal CE_DSP_AxB_Cascade          : std_logic := '0';
signal CE_DSP_AxB_plus_C           : std_logic := '0';

-------------------------------
-- RAM_Kernel_Scale signal 
-------------------------------
signal addr_RAM_Kernel_Scale       : std_logic_vector((clogb2(DEPTH_Coeff)-1) downto 0);    -- Address bus, width determined from RAM_DEPTH
signal din_RAM_Kernel_Scale        : std_logic_vector(WIDTH_Kernel_Scale-1 downto 0);       -- RAM input data
signal we_RAM_Kernel_Scale         : std_logic := '0';                                      -- Write enable
signal en_RAM_Kernel_Scale         : std_logic := '1';                                      -- RAM Enable, for additional power savings, disable port when not in use
signal regce_RAM_Kernel_Scale      : std_logic := '0';                                      -- Output register enable
    --signal dout_RAM_Kernel_Scale       : std_logic_vector(WIDTH_Kernel_Scale-1 downto 0);       -- RAM output data 

-------------------------------
-- RAM_Bias signal 
-------------------------------
signal addr_RAM_Bias :  std_logic_vector((clogb2(DEPTH_Coeff)-1) downto 0);    -- Address bus, width determined from RAM_DEPTH
signal din_RAM_Bias  :  std_logic_vector(WIDTH_Bias-1 downto 0);               -- RAM input data
signal we_RAM_Bias   :  std_logic := '0';                                      -- Write enable
signal en_RAM_Bias   :  std_logic := '1';                                      -- RAM Enable, for additional power savings, disable port when not in use
signal regce_RAM_Bias:  std_logic := '0';                                      -- Output register enable
    --signal dout_RAM_Bias :  std_logic_vector(WIDTH_Bias-1 downto 0);               -- RAM output data 

---------------------------------
-- RAM_Pre_Computed_Vector signal 
---------------------------------
signal addr_RAM_Pre_Computed_Vector :  std_logic_vector((clogb2(DEPTH_Coeff)-1) downto 0);       -- Address bus, width determined from RAM_DEPTH
signal din_RAM_Pre_Computed_Vector  :  std_logic_vector(WIDTH_Pre_Computed_Vector -1 downto 0);  -- RAM input data
signal we_RAM_Pre_Computed_Vector   :  std_logic := '0';                                         -- Write enable
signal en_RAM_Pre_Computed_Vector   :  std_logic := '1';                                         -- RAM Enable, for additional power savings, disable port when not in use
signal regce_RAM_Pre_Computed_Vector:  std_logic := '0';                                         -- Output register enable
signal dout_RAM_Pre_Computed_Vector :  std_logic_vector(WIDTH_Pre_Computed_Vector -1 downto 0);  -- RAM output data 

------------------------------------------
-- Signals necessary for Reading from file
------------------------------------------
type array_of_std is array (0 to 36 - 1) of std_logic_vector(WIDTH_Attribute - 1 downto 0);
signal attributes : array_of_std;
                   
signal addr_test  : integer;

begin

-------------------------------
-- Lettura Attributi da file
-------------------------------
read_file: process
    file text_file : text open read_mode is "C:\Users\yoxo\Desktop\Giuseppe\Unical\CdL_LM_Tesi\Dati_Classifier_bin\Coefficienti\Partizione_1\Attribute_Test.dat";
    variable Attributes_Test : line;
    variable successful      : boolean;            -- variabile di conferma lettura
    variable bitvec          : std_logic_vector( WIDTH_Attribute-1 downto 0 ) := (others => '0');
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

-------------------------------------------------
-- Port Map dei Componenti e assegnazione segnali 
-------------------------------------------------
loop_gen:
    for i in  0 to num_attribute-1 generate 
        s_Attribute_j(i)  <=  attributes(0)( 271 - i*8  downto  271 - (i+1)*8 + 1 );               -- MSB della linea letta = MSB di Attribute_j(0
        s_SV_Alpha_Label(i) <=  dout_RAM_Pre_Computed_Vector(407 - i*12 downto 407 - (i+1)*12 + 1 ); -- MSB dell'uscita ram =  MSB SV_ALpha(0) 
    end generate;

  
UUT_Classifier: entity xil_defaultlib.Classifier(arch)
port map( 
    Attribute_j                  => s_Attribute_j,  -- MSB della linea letta = MSB di Attribute_j(0)
    SV_Alpha_Label               => s_SV_Alpha_Label, -- MSB dell'uscita ram =  MSB SV_ALpha(0) 
    Kernel_Scale_inv_quadro_SVM  => Kernel_Scale_inv_quadro_SVM, 
    Bias_SVM                     => Bias_SVM, 
    Output_Classifier            => Output_Classifier,
    RST_SVM                      => RST_SVM,
    RST_PIPE                     => RST_PIPE,
    CE_PIPE                      => CE_PIPE,
    CE_DSP_AxB_Cascade           => CE_DSP_AxB_Cascade,
    CE_DSP_AxB_plus_C            => CE_DSP_AxB_plus_C,
    CLK                          => clk
);


UUT_RAM_Kernel_Scale: entity xil_defaultlib.RAM_Kernel_Scale(arch)
port map(
    addr_RAM_Kernel_Scale       => addr_RAM_Kernel_Scale,
    din_RAM_Kernel_Scale        => din_RAM_Kernel_Scale,
    clk_RAM_Kernel_Scale        => clk,
    we_RAM_Kernel_Scale         => we_RAM_Kernel_Scale,
    en_RAM_Kernel_Scale         => en_RAM_Kernel_Scale,
    regce_RAM_Kernel_Scale      => regce_RAM_Kernel_Scale,
    dout_RAM_Kernel_Scale       => Kernel_Scale_inv_quadro_SVM
);

UUT_RAM_Bias: entity xil_defaultlib.RAM_Bias(arch)
port map(
    addr_RAM_Bias  => addr_RAM_Bias,
    din_RAM_Bias   => din_RAM_Bias,
    clk_RAM_Bias   => clk,
    we_RAM_Bias    => we_RAM_Bias,
    en_RAM_Bias    => en_RAM_Bias,
    regce_RAM_Bias => regce_RAM_Bias,
    dout_RAM_Bias  => Bias_SVM
);

UUT_RAM_Pre_Computed_Vector: entity xil_defaultlib.RAM_Pre_Computed_Vector(arch)
Port map (
    addr_RAM_Pre_Computed_Vector  => addr_RAM_Pre_Computed_Vector,
    din_RAM_Pre_Computed_Vector   => din_RAM_Pre_Computed_Vector,
    clk_RAM_Pre_Computed_Vector   => clk,
    we_RAM_Pre_Computed_Vector    => we_RAM_Pre_Computed_Vector,
    en_RAM_Pre_Computed_Vector    => en_RAM_Pre_Computed_Vector,
    regce_RAM_Pre_Computed_Vector => regce_RAM_Pre_Computed_Vector,
    dout_RAM_Pre_Computed_Vector  => dout_RAM_Pre_Computed_Vector
);

-------------------------------------------
-- Inizio variazione segnali
-------------------------------------------
clk <= not clk after clock_period / 2;

p_stimuli: process
begin 
    wait for 5 * clock_period; -- 100ns process;
    
    -- applicazione di una sola SVM quindi unica lettura 
    -- dalle ram per capire il flusso, timing e correttezza
    -- si ottiene il primo dato valido dopo 39 cicli di clock (549755794181)
    -- 3 -> primo DSP, 33 -> cascata, 3 -> ultimo DSP
    CE_PIPE            <= '1';  -- abilitazione pipe 
    CE_DSP_AxB_Cascade <= '1';  -- abilitazione dei moltiplicatori paralleli e adder cascade
    CE_DSP_AxB_plus_C  <= '1' ; -- abilitazione del blocco per moltiplicare il Kernel_Scale e sommare Bias
    wait for 2* clock_period;
    RST_PIPE           <= '0';  -- disabilitazione reset 
    RST_SVM            <= '0';
    
    wait for 1* clock_period;
     -- gestione indirizzi per i coeff. 
    addr_RAM_Pre_Computed_Vector <= "0000";  
    wait until rising_edge(clk) ;-- for 1* clock_period;
    addr_RAM_Pre_Computed_Vector <= "0001";
     wait until rising_edge(clk) ;-- for 1* clock_period;
    addr_RAM_Pre_Computed_Vector <= "0010";
    wait until rising_edge(clk) ;-- for 1* clock_period;
    addr_RAM_Pre_Computed_Vector <= "0011";
    wait until rising_edge(clk) ;-- for 1* clock_period;
    addr_RAM_Pre_Computed_Vector <= "0100";
    wait until rising_edge(clk) ;-- for 1* clock_period;
    addr_RAM_Pre_Computed_Vector <= "0101";
    wait until rising_edge(clk) ;-- for 1* clock_period;
    addr_RAM_Pre_Computed_Vector <= "0110";
    wait until rising_edge(clk) ;-- for 1* clock_period;
    addr_RAM_Pre_Computed_Vector <= "0111";
    wait until rising_edge(clk) ;-- for 1* clock_period;
    addr_RAM_Pre_Computed_Vector <= "1000";
    wait until rising_edge(clk) ;-- for 1* clock_period;
    addr_RAM_Pre_Computed_Vector <= "1001";
    wait until rising_edge(clk) ;-- for 1* clock_period;
    addr_RAM_Pre_Computed_Vector <= "1010";
    wait until rising_edge(clk) ;-- for 1* clock_period;
    addr_RAM_Pre_Computed_Vector <= "1011";
    wait until rising_edge(clk) ;-- for 1* clock_period;
    addr_RAM_Pre_Computed_Vector <= "1100";
    wait until rising_edge(clk) ;-- for 1* clock_period;
    addr_RAM_Pre_Computed_Vector <= "1101";
    wait until rising_edge(clk) ;-- for 1* clock_period;
    addr_RAM_Pre_Computed_Vector <= "1110";
    wait until rising_edge(clk) ;-- for 1* clock_period;
    
    wait for 21* clock_period;
    
    addr_RAM_Kernel_Scale <= "0000"; -- after 36 * clock_period; 
    wait until rising_edge(clk) ;-- for 1* clock_period;
    addr_RAM_Kernel_Scale <= "0001"; -- after 36 * clock_period;
    addr_RAM_Bias <= "0000"; -- after 37 * clock_period;
    wait until rising_edge(clk) ;-- for 1* clock_period;
    addr_RAM_Kernel_Scale <= "0010"; -- after 36 * clock_period;
    addr_RAM_Bias <= "0001";--after 37 * clock_period;
    wait until rising_edge(clk) ;-- for 1* clock_period;
    addr_RAM_Kernel_Scale <= "0011"; -- after 36 * clock_period;
    addr_RAM_Bias <= "0010";--after 37 * clock_period;
    wait until rising_edge(clk) ;-- for 1* clock_period;
    addr_RAM_Kernel_Scale <= "0100"; -- after 36 * clock_period;
    addr_RAM_Bias <= "0011";--after 37 * clock_period;
    wait until rising_edge(clk) ;-- for 1* clock_period;
    addr_RAM_Kernel_Scale <= "0101"; -- after 36 * clock_period;
    addr_RAM_Bias <= "0100";--after 37 * clock_period;
    wait until rising_edge(clk) ;-- for 1* clock_period;
    addr_RAM_Kernel_Scale <= "0110"; -- after 36 * clock_period;
    addr_RAM_Bias <= "0101";--after 37 * clock_period;
    wait until rising_edge(clk) ;-- for 1* clock_period;
    addr_RAM_Kernel_Scale <= "0111"; -- after 36 * clock_period;
    addr_RAM_Bias <= "0110";--after 37 * clock_period;
    wait until rising_edge(clk) ;-- for 1* clock_period;
    addr_RAM_Kernel_Scale <= "1000"; -- after 36 * clock_period;
    addr_RAM_Bias <= "0111";--after 37 * clock_period;
    wait until rising_edge(clk) ;-- for 1* clock_period;
    addr_RAM_Kernel_Scale <= "1001"; -- after 36 * clock_period;
    addr_RAM_Bias <= "1000";--after 37 * clock_period;
    wait until rising_edge(clk) ;-- for 1* clock_period;
    addr_RAM_Kernel_Scale <= "1010"; -- after 36 * clock_period;
    addr_RAM_Bias <= "1001";--after 37 * clock_period;
    wait until rising_edge(clk) ;-- for 1* clock_period;
    addr_RAM_Kernel_Scale <= "1011"; -- after 36 * clock_period;
    addr_RAM_Bias <= "1010";--after 37 * clock_period;
    wait until rising_edge(clk) ;-- for 1* clock_period;
    addr_RAM_Kernel_Scale <= "1100"; -- after 36 * clock_period;
    addr_RAM_Bias <= "1011";--after 37 * clock_period;
    wait until rising_edge(clk) ;-- for 1* clock_period;
    addr_RAM_Kernel_Scale <= "1101"; -- after 36 * clock_period;
    addr_RAM_Bias <= "1100";--after 37 * clock_period;
    wait until rising_edge(clk) ;-- for 1* clock_period;
    addr_RAM_Kernel_Scale <= "1110"; -- after 36 * clock_period;
    addr_RAM_Bias <= "1101";--after 37 * clock_period;
    wait until rising_edge(clk) ;-- for 1* clock_period;
    addr_RAM_Bias <= "1110";--after 37 * clock_period; 
    wait;
end process;


end arch;
