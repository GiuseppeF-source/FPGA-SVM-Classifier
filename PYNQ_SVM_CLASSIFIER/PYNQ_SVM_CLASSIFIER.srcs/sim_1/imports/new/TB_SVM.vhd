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
USE xil_defaultlib.personal_type_pkg.ALL;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_SVM is
--generic (
--        num_attribute: integer:= 34
--        );
--  Port ( );
end TB_SVM;

architecture arch of TB_SVM is


constant period : time := 20 ns; 
signal Attribute_j_SVM        :   portADSP_array_of_std_logic_vector; -- array di 36 elementi di tipo std_logic_vector
signal SV_Alpha_Label_j_SVM   :   portBDSP_array_of_std_logic_vector; -- elementi j-esimi del SV i-esimo
signal Kernel_Scale_inv_quadro_SVM:   std_logic_vector( 17 downto 0 ); -- Kernel_Scale^-2
signal Bias_SVM               :   std_logic_vector( 47 downto 0 ); -- Bias da aggiungere alla fine 
signal Output_SVM             :   std_logic_vector( 47 downto 0 );
signal RST_SVM                :   std_logic;
signal CE_DSP_AxB_Cascade     :   std_logic;
signal CE_DSP_AxB_plus_C      :   std_logic;
signal CLK_SVM                :   std_logic;

begin

DUT: entity xil_defaultlib.SVM(arch) 
port map ( 
    Attribute_j_SVM => Attribute_j_SVM,
    SV_Alpha_Label_j_SVM => SV_Alpha_Label_j_SVM,
    Kernel_Scale_inv_quadro_SVM => Kernel_Scale_inv_quadro_SVM,
    Bias_SVM => Bias_SVM,
    Output_SVM => Output_SVM,
    RST_SVM  => RST_SVM,
    CE_DSP_AxB_Cascade => CE_DSP_AxB_Cascade,
    CE_DSP_AxB_plus_C => CE_DSP_AxB_plus_C,
    CLK_SVM =>  CLK_SVM );


-- continuous clock
Clock_Cycle: process              
    Begin
        CLK_SVM <= '0';
        wait for period/2;
        CLK_SVM <= '1';
        wait for period/2;
    end process;
-- variation of signal    
Input_process: process
 Begin
    wait for 100ns;
    RST_SVM <= '1';
    CE_DSP_AxB_Cascade <= '1';
    CE_DSP_AxB_plus_C <= '1';
    wait for 30ns;
    RST_SVM <= '0';
    wait for 20ns;
    
    For j in 0 to num_attribute - 1 loop
        Attribute_j_SVM(j) <= X"000000"&b"1";
        SV_Alpha_Label_j_SVM(j) <= X"0000"&b"01";
    end loop;

    Kernel_Scale_inv_quadro_SVM <= X"0000"&b"01";
    Bias_SVM <= X"000000000001";
    wait;
end process;
                                         
end arch;
