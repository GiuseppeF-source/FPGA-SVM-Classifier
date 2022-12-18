library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--package personal_type_pkg is
--    constant num_attribute : natural := 34; -- numero degli attribiti, in base al dataset 
--    type portADSP_array_of_std_logic_vector is array(0 to num_attribute-1) of std_logic_vector( 24 downto 0 );
--    type portBDSP_array_of_std_logic_vector is array(0 to num_attribute-1) of std_logic_vector( 17 downto 0 );
--    type Attr_in_array_of_std_logic_vector is array (0 to num_attribute-1) of std_logic_vector( 7 downto 0 );
--    type Acc_SVxAlphaxSVLabel_in_array_of_std_logic_vector is array (0 to num_attribute-1) of std_logic_vector( 11 downto 0 );
--    type portOut_array_of_std_logic_vector is array(0 to num_attribute-1) of std_logic_vector( 47 downto 0 );
--end package;
LIBRARY xil_defaultlib;
use xil_defaultlib.personal_type_pkg.all;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith;

entity TB_Classifier is
end TB_Classifier;

architecture arch of TB_Classifier is

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

constant period : time := 20 ns; 
signal s_Attribute_j                 : Attr_in_array_of_std_logic_vector; -- Query da classificare
signal s_SV_Alpha_Label              : Acc_SVxAlphaxSVLabel_in_array_of_std_logic_vector; -- Vettore pre-computato
signal s_Kernel_Scale_inv_quadro_SVM :  std_logic_vector( 11 downto 0 ); -- Kernel_Scale^-2
signal s_Bias_SVM                    :  std_logic_vector( 6 downto 0 ); -- Bias da aggiungere alla fine 
signal s_Output_Classifier           :  std_logic; -- Per ora ultimo bit del risultato SVM ( il segno )
signal s_RST_SVM                     :  std_logic;
signal s_RST_PIPE                    :  std_logic;
signal s_CE_PIPE                     :  std_logic;
signal s_CE_DSP_AxB_Cascade          :  std_logic;
signal s_CE_DSP_AxB_plus_C           :  std_logic;
signal s_CLK                         :  std_logic;

begin

DUT_Classifier: entity xil_defaultlib.Classifier(arch) 
port map(
 Attribute_j                  => s_Attribute_j,
 SV_Alpha_Label               => s_SV_Alpha_Label,
 Kernel_Scale_inv_quadro_SVM  => s_Kernel_Scale_inv_quadro_SVM,
 Bias_SVM                     => s_Bias_SVM,
 Output_Classifier            => s_Output_Classifier,
 RST_SVM                      => s_RST_SVM,
 RST_PIPE                     => s_RST_PIPE,
 CE_PIPE                      => s_CE_PIPE,
 CE_DSP_AxB_Cascade           => s_CE_DSP_AxB_Cascade,
 CE_DSP_AxB_plus_C            => s_CE_DSP_AxB_plus_C,
 CLK                          => s_CLK 
 );
 
 -- continuous clock
Clock_Cycle: process              
Begin
     s_CLK <= '0';
     wait for period/2;
     s_CLK <= '1';
     wait for period/2;
end process;


-- variation of signal    
Input_process: process
Begin
    wait for 100ns;
    s_RST_SVM <= '1';
    s_RST_PIPE <= '1';
    s_CE_DSP_AxB_Cascade <= '1';
    s_CE_DSP_AxB_plus_C <= '1';
    s_CE_PIPE <= '1';
    wait for 30ns;
    s_RST_PIPE <= '0';
    s_RST_SVM <= '0';
    wait for 20ns;
    
    For j in 0 to 34 - 1 loop
        s_Attribute_j(j)    <= b"00000001";
        s_SV_Alpha_Label(j) <= b"000000000001";
    end loop;
    
    s_Kernel_Scale_inv_quadro_SVM <= X"001";
    s_Bias_SVM <= b"0000001";
    wait;
end process;


end arch;
