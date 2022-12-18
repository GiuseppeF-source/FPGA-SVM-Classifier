
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.all;

entity counter_3b is
  Port (
  clk   : in std_logic;
  ce    : in std_logic;
  rst   : in std_logic;
  out_count: out std_logic_vector( 2 downto 0)
  );
end counter_3b;

architecture arch of counter_3b is

signal count : natural range 0 to 5 := 0; 

begin

process( clk ) 
begin 
    if rising_edge(clk) then 
        if rst = '1' then
            count <= 0;
        else 
            if ce = '1' then
                count <= count + 1;
            else
                null;
            end if;
        end if;
    end if;
end process;

out_count <= conv_std_logic_vector(count, 3);
end arch;
