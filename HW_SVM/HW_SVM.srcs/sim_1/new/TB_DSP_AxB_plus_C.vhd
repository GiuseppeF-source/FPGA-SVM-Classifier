
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity TB_DSP_AxB_plus_C is
--  Port ( );
end TB_DSP_AxB_plus_C;

architecture Behavioral of TB_DSP_AxB_plus_C is

component DSP_AxB_plus_C is
  port (
    Accumulated             : in  std_logic_vector( 29 downto 0 ); -- Risultato accumulato precedentemente
    Kernel_Scale_inv_quadro : in  std_logic_vector( 17 downto 0 ); -- Kernel_Scale^-2
    Bias                    : in  std_logic_vector( 47 downto 0 ); -- Bias 
    Output_SVM              : out std_logic_vector( 47 downto 0 ); -- Risultato finale SVM
    RST                     : in  std_logic;
    CE                      : in  std_logic;
    CLK                     : in  std_logic
  );
end component;

constant period : time := 20 ns;
signal s_Accumulated             :   std_logic_vector( 29 downto 0 ); -- Risultato accumulato precedentemente
signal s_Kernel_Scale_inv_quadro :   std_logic_vector( 17 downto 0 ); -- Kernel_Scale^-2
signal s_Bias                    :   std_logic_vector( 47 downto 0 ); -- Bias 
signal s_Output_SVM              :   std_logic_vector( 47 downto 0 ); -- Risultato finale SVM
signal s_RST                     :   std_logic;
signal s_CE                      :   std_logic;
signal s_CLK                     :   std_logic;


begin
-- connecting testbench signals with component
    UUT : DSP_AxB_plus_C port map (
                                    Accumulated => s_Accumulated, 
                                    Kernel_Scale_inv_quadro => s_Kernel_Scale_inv_quadro, 
                                    Bias => s_Bias,
                                    Output_SVM => s_Output_SVM, 
                                    CE => s_CE,
                                    RST => s_RST,
                                    CLK => s_CLK );
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
                    s_RST <= '1';
                    s_CE <= '1';
                    wait for 30ns;
                    s_RST <= '0';
                    wait for 20ns;
                    s_Accumulated <= x"0000000"&b"01";
                    s_Kernel_Scale_inv_quadro <= x"0000"&b"01";
                    s_Bias <= X"00000000000"&b"0010";
                    wait;
               end process;  
                                     
end Behavioral;
