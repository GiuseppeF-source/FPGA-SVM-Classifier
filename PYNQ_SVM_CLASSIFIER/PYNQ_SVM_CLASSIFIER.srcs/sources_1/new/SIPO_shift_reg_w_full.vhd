library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity SIPO_shift_reg_w_full is
  Generic (
    n_in_bit  : natural := 32;
    depth     : natural := 13;
    n_out_bit : natural := 408
  );
  Port (
    clk      : in  std_logic;
    rst      : in  std_logic;
    ce       : in  std_logic;
    data_in  : in  std_logic_vector ( n_in_bit-1 downto 0 );
    data_out : out std_logic_vector ( n_out_bit-1 downto 0);
    full     : out std_logic
   );
end SIPO_shift_reg_w_full;

architecture rtl of SIPO_shift_reg_w_full is

type shift_reg_t is array (0 to depth - 1) of std_logic_vector(data_in'range);
signal  shift_reg : shift_reg_t;

signal count : natural range 0 to depth+1 :=0;
constant diff_w_mult32 : natural := (n_in_bit*depth - n_out_bit );

begin

shift_p: process ( clk ) 
begin 
    if rising_edge(clk) then 
        if rst = '1' then
            count <= 0;
        else
            if ce = '1' then
                count <= count + 1;
    transf_loop:
                for i in 1 to depth-1 loop
                    shift_reg(i) <= shift_reg( i - 1 ); -- shift dei 32 bit 
                end loop;
                    shift_reg(0) <= data_in;
            end if;
        end if;
    end if;

end process;

full <= '1' when ( count = 13 ) else '0';

output_gen: 
    for i in  depth-1 downto 1 generate 
        data_out( (i+1)*n_in_bit - diff_w_mult32 -1  downto (i)*n_in_bit - diff_w_mult32  ) <= shift_reg(i); 
    end generate;
        data_out( n_in_bit - diff_w_mult32 -1 downto 0 )                        <= shift_reg(0)(n_in_bit -1 downto diff_w_mult32); -- scarto gli ultimi 8 bit 

end rtl;
