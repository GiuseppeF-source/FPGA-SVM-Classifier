library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;


entity TB_axis_to_bram_PCV is
--  Port ( );
end TB_axis_to_bram_PCV;

architecture rtl of TB_axis_to_bram_PCV is

constant clk_period : time:= 20ns;
constant n_in_bit  : natural := 32;
constant n_out_bit : natural := 408;
  
signal clk      : std_logic:='0';
signal trig     : std_logic:='0';
signal in_ready : std_logic;
signal in_valid : std_logic:='0';
signal data_in  : std_logic_vector( n_in_bit -1 downto 0 ) := ( others => '0');
signal addr_ram : std_logic_vector( 3 downto 0 );
signal data_out : std_logic_vector( n_out_bit-1 downto 0 );
signal en_ram   : std_logic;
signal we_ram   : std_logic;

signal data_next: natural;


begin

DUT: entity work.axis_to_bram_PCV 
  Port map (
  clk      => clk     ,
  trig     => trig    ,
  in_ready => in_ready,
  in_valid => in_valid,
  data_in  => data_in ,
  addr_ram => addr_ram,
  data_out => data_out,
  en_ram   => en_ram  ,
  we_ram   => we_ram  
  );

clk <= not clk after clk_period/2;

stimuli_p: process 
begin
wait for clk_period*5;
trig <= '1';
wait for clk_period*2;
in_valid <= '1';


end process;

dma_p: process (clk)
begin 
    if rising_edge(clk) then 
    
        if ( in_valid and in_ready) = '1' then
           data_next <=  data_next + 1;
        else 
            data_next <= data_next;
        end if;
        
    end if;
    
end process;

data_in <= conv_std_logic_vector(data_next,32);

end rtl;
