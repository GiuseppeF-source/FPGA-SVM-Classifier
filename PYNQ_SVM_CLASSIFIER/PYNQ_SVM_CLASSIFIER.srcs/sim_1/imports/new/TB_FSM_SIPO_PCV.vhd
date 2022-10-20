
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_FSM_SIPO_PCV is
--  Port ( );
end TB_FSM_SIPO_PCV;

architecture arch of TB_FSM_SIPO_PCV is

constant clk_period                 :  time := 20ns;
signal   s_axis_aclk                  :  std_logic := '0';    
signal   m_axis_tready                :  std_logic := '1'; 
signal   start                        :  std_logic := '0';
signal   start_fsm2                   :  std_logic; 
signal   addr_RAM_Pre_Computed_Vector :  std_logic_vector( 4-1 downto 0 );
signal   en_RAM_Pre_Computed_Vector   :  std_logic;
signal   out_valid_sipo               :  std_logic := '0'; -- valid da SIPO
signal   ce_sipo                      :  std_logic;
signal   rst                          :  std_logic;

begin

DUT: entity work.FSM_SIPO_PCV(arch)
port map (
    s_axis_aclk   =>  s_axis_aclk  ,  
  -- per gestione stallo
    m_axis_tready  =>   m_axis_tready,
  -- partenza ed avvio altra sub fsm
    start   =>   start,     
    start_fsm2  =>  start_fsm2  ,
  -- gestione SIPO
      ce_sipo          =>  ce_sipo,
      rst              =>  rst,
  -- gestione RAM 
    addr_RAM_Pre_Computed_Vector =>  addr_RAM_Pre_Computed_Vector,
    en_RAM_Pre_Computed_Vector  =>   en_RAM_Pre_Computed_Vector,
  -- controllo dati pronti da processare
    out_valid_sipo  => out_valid_sipo              
);

s_axis_aclk <= not s_axis_aclk after 10ns;

signal_variation: process 
begin
    wait for 5 * clk_period; -- 100ns
    wait until rising_edge(s_axis_aclk);
    
        
    wait for 2*clk_period;
    wait for clk_period/2;
    start <= '1';
    
    wait for 12*clk_period;
    out_valid_sipo <= '1';    
    
    wait for 30*clk_period;
    m_axis_tready <= '0';
    
    wait for 3*clk_period;
    m_axis_tready <= '1';
    
    wait;

end process;

end arch;
