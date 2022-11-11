library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity axis_to_bram_PCV is

  Generic (
  n_in_bit  : natural := 32;
  n_out_bit : natural := 408
  );
  
  Port (
  clk      : in  std_logic;
  trig     : in  std_logic; 
  
   -- AXI-Stream  input interface
  s_axis_tready : out std_logic;
  s_axis_tvalid : in  std_logic;
  s_axis_tdata  : in  std_logic_vector ( n_in_bit-1 downto 0 );
  
  -- BRAM signal
  addr_ram : out std_logic_vector( 3 downto 0 );
  data_out : out std_logic_vector ( n_out_bit-1 downto 0);
  en_ram   : out std_logic;
  we_ram   : out std_logic
    );
end axis_to_bram_PCV;

architecture rtl of axis_to_bram_PCV is

signal ce   : std_logic;
signal rst  : std_logic;
signal full : std_logic;

begin

-- FSM: entity work.FSM_axis_to_bram 
--  Port map (
--     clk      => clk      ,
--     trig     => trig     ,    
--     in_ready => in_ready ,
--     in_valid => in_valid ,    
--     ce       => ce       ,
--     rst      => rst      ,
--     full     => full     ,                  
--     addr_ram => addr_ram ,
--     en_ram   => en_ram   ,
--     we_ram   => we_ram              
--  );

MNG: entity work.AXIS_BRAM_mng
 Port map (
   clk      => clk      ,
   trig     => trig     ,    
   in_ready => s_axis_tready ,
   in_valid => s_axis_tvalid ,    
   ce       => ce       ,
   rst      => rst      ,
   full     => full     ,                  
   addr_ram => addr_ram ,
   en_ram   => en_ram   ,
   we_ram   => we_ram              
);  
 
SIPO: entity work.SIPO_shift_reg_w_full
 Port map (
    clk      => clk          ,
    rst      => rst          ,
    ce       => ce           ,
    data_in  => s_axis_tdata ,
    data_out => data_out     ,
    full     => full     
 );



end rtl;
