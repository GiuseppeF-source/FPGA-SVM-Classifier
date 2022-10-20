library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_FSM_Voting is
--  Port ( );
end TB_FSM_Voting;

architecture arch of TB_FSM_Voting is
constant clk_period    : time := 20ns;
signal start           : std_logic := '0'; 
signal s_axis_aclk     : std_logic := '0'; 
signal m_axis_tready   : std_logic; 
signal start_FSM3      : std_logic := '0'; 
signal ce_voting       : std_logic; 
signal reset_voting    : std_logic; 
signal sign_valid      : std_logic := '0'; 
signal win_class_valid : std_logic := '0'; 
signal valid_to_DMA    : std_logic;  
                       

begin

DUT: entity work.FSM_Voting(arch) port map ( 
    start           => start,
    s_axis_aclk     => s_axis_aclk,
    m_axis_tready   => m_axis_tready,
    start_FSM3      => start_FSM3,
    ce_voting       => ce_voting, 
    reset_voting    => reset_voting, 
    sign_valid      => sign_valid, 
    win_class_valid => win_class_valid, 
    valid_to_DMA    => valid_to_DMA
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
    start_FSM3 <= '1';
    
    wait for 3*clk_period;
    
    -- stallo
    wait for clk_period/2;
    m_axis_tready <= '0';
    wait for 3*clk_period;
    m_axis_tready <= '1';
    -- fine stallo  
    
    wait for 16*clk_period;
    wait for clk_period/10;
    
    win_class_valid <= '1';
    wait for 2*clk_period;
    win_class_valid <= '0';
  
    wait;

end process;

end arch;
