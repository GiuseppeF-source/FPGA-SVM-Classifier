library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity TB_FSM_Kernel_Bias is
--  Port ( );
end TB_FSM_Kernel_Bias;

architecture arch of TB_FSM_Kernel_Bias is
constant  clk_period : time := 20ns;
signal     s_axis_aclk              :   std_logic := '0';    
signal     m_axis_tready            :   std_logic; 
signal     start                    :   std_logic := '0';
signal     addr_RAM_Kernel_Scale    :  std_logic_vector( 4-1 downto 0 );
signal     en_RAM_RAM_Kernel_Scale  :  std_logic;
signal     addr_RAM_Bias            :  std_logic_vector( 4-1 downto 0 );
signal     en_RAM_Bias              :  std_logic; 
signal     ce_DSP_AxB_plus_C_classifier: std_logic;
signal     start_FSM2              : std_logic := '0';

begin

DUT: entity work.FSM_Kernel_Bias(arch) port map (
s_axis_aclk                  => s_axis_aclk,
m_axis_tready                => m_axis_tready,
start                        => start,
addr_RAM_Kernel_Scale        => addr_RAM_Kernel_Scale,
en_RAM_RAM_Kernel_Scale      => en_RAM_RAM_Kernel_Scale,
addr_RAM_Bias                => addr_RAM_Bias,
en_RAM_Bias                  => en_RAM_Bias,
start_FSM2                   => start_FSM2,
ce_DSP_AxB_plus_C_classifier => ce_DSP_AxB_plus_C_classifier
);

s_axis_aclk <= not s_axis_aclk after clk_period/2;

signal_variation: process 
begin
    wait for 5 * clk_period; -- 100ns
    wait until rising_edge(s_axis_aclk);
    
    m_axis_tready <= '1'; 
    
    wait for 2*clk_period;
    start <= '1';
    wait for 2*clk_period;
    wait for clk_period/2;
    start_FSM2 <= '1';
    wait for 48*clk_period;
    -- stallo
    m_axis_tready <= '0';
    wait for 3*clk_period;
    m_axis_tready <= '1';
    -- fine stallo 
    
    
    wait;

end process;

end arch;
