
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
LIBRARY xil_defaultlib;
USE xil_defaultlib.personal_type_pkg.ALL;

entity TB_PIPE_SVM is
end TB_PIPE_SVM;

architecture arch of TB_PIPE_SVM is

constant period : time := 20 ns;
signal  s_clk                   :  std_logic; 

signal  s_in_attribute          : Attr_in_array_of_std_logic_vector;
signal  s_in_pre_comp_vec       : Acc_SVxAlphaxSVLabel_in_array_of_std_logic_vector;
signal  s_in_rst_pipe           : std_logic := '1';
signal  s_in_ce_pipe            : std_logic := '0';

signal  s_in_kernel_scale       : std_logic_vector( 11 downto 0 );
signal  s_in_bias               : std_logic_vector(  6 downto 0 );
signal  s_in_rst_svm            : std_logic := '1';
signal  s_in_CE_DSP_AxB_Cascade : std_logic := '0';
signal  s_in_CE_DSP_AxB_plus_C  : std_logic := '0';
signal  s_out_sign              : std_logic;

begin

UUT_PIPE_SVM: entity xil_defaultlib.PIPE_SVM(arch)
port map (
        clk               => s_clk ,    
    -----------
    --  PIPE 
    -----------  
    in_attribute          => s_in_attribute ,
    in_pre_comp_vec       => s_in_pre_comp_vec ,
    in_rst_pipe           => s_in_rst_pipe ,
    in_ce_pipe            => s_in_ce_pipe ,
    -----------
    --  SVM 
    -----------
    in_kernel_scale       => s_in_kernel_scale ,
    in_bias               => s_in_bias , 
    in_rst_svm            => s_in_rst_svm ,
    in_CE_DSP_AxB_Cascade => s_in_CE_DSP_AxB_Cascade ,
    in_CE_DSP_AxB_plus_C  => s_in_CE_DSP_AxB_plus_C ,
    out_sign              => s_out_sign
);

-------------------------------------------
-- Inizio variazione segnali
-------------------------------------------
s_clk <= not s_clk after period / 2;

stimulus: process
    begin 
        wait for 5*period;
        -- CE abilitati --------
        s_in_ce_pipe            <= '1';
        s_in_CE_DSP_AxB_Cascade <= '1';
        s_in_CE_DSP_AxB_plus_C  <= '1';
        
        wait for period;
        -- RST disabilitati -----
        s_in_rst_pipe           <= '0';
        s_in_rst_svm            <= '0';
        
        wait for period;
        -- input di prova -------
        for i in 0 to 34-1 loop 
            s_in_attribute(i)    <= "00000001";
            s_in_pre_comp_vec(i) <= "000000000001";
        end loop;
        s_in_kernel_scale        <= "000000000001";
        s_in_bias                <= "0000001";
        
end process;

end arch;
