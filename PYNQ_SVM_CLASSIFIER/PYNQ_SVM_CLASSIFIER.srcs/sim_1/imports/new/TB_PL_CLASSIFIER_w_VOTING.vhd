library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity TB_PL_CLASSIFIER_w_VOTING is
--  Port ( );
end TB_PL_CLASSIFIER_w_VOTING;

architecture arch of TB_PL_CLASSIFIER_w_VOTING is

constant clk_period     : time := 20ns;
signal s_axis_aclk      :  std_logic;
signal s_axis_tready    :  std_logic;                         -- from SIPO
signal s_axis_tvalid    :  std_logic := '0';                         -- from DMA
signal s_axis_tdata     :  std_logic_vector( 32 -1 downto 0 ); -- from DMA 
signal  prova_OUTPUT    :  std_logic;

component PL_CLASSIFIER_w_VOTING is
  Port ( 
  -- AXI-Stream  INPUT interface
  s_axis_aclk      : in  std_logic;
  s_axis_tready    : out std_logic;                         -- from SIPO
  s_axis_tvalid    : in  std_logic;                         -- from DMA
  s_axis_tdata     : in  std_logic_vector( 32 -1 downto 0 ); -- from DMA 
  
  -- AXI-Stream OUTPUT interface
  
   prova_OUTPUT : out std_logic
  
  -- INPUT interface for RAM 
  );
end component;

begin

PM_PL_CLASSIFIER_w_VOTING: PL_CLASSIFIER_w_VOTING Port Map (
    -- AXI-Stream  INPUT interface
    s_axis_aclk      => s_axis_aclk,
    s_axis_tready     => s_axis_tready,
    s_axis_tvalid    => s_axis_tvalid,
    s_axis_tdata      => s_axis_tdata,
    -- AXI-Stream OUTPUT interface
    prova_OUTPUT  => prova_OUTPUT  
    -- INPUT interface for RAM   
);

s_axis_aclk <= not s_axis_aclk after clk_period/2;


p_stimuli: process
begin 
    wait for 5 * clk_period; -- 100ns process;
    s_axis_tvalid  <=  '1'; 
    s_axis_tdata   <= ( others => '0');
end process;
end arch;
