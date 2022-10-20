
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity double_shift_reg is
 generic (
 widthA : integer;
 widthB : integer; -- dimensione word A e B
 depth: integer); -- numero reg 
 Port (
    A : in std_logic_vector(widthA -1 downto 0);
    B : in std_logic_vector(widthB -1  downto 0);
    CLK: in std_logic;
    CE : in std_logic;
    RST : in std_logic;
    Out_A : out std_logic_vector ( widthA -1 downto 0);
    Out_B : out std_logic_vector ( widthB -1 downto 0)
  );
 
end double_shift_reg;

architecture arch of double_shift_reg is

type shift_reg_a is array ( 0 to depth - 1 ) of std_logic_vector ( widthA -1 downto 0 );
type shift_reg_b is array ( 0 to depth - 1 ) of std_logic_vector ( widthB -1 downto 0 );

signal signA: shift_reg_a;
signal signB: shift_reg_b;

begin



process(CLK)
    begin
       if(rising_edge(CLK))then
         if(RST='1')then
            rst_loop: for i in 0 to depth-1 loop
                        signA(i)<=(others=>'0');
                        signB(i)<=(others=>'0');
                      end loop;
         else
             if(CE='1')then
                if depth > 1 then
                transf_loop:for i in 1 to depth-1 loop
                               signA(i) <= signA(i-1);
                               signB(i) <= signB(i-1);
                            end loop;
                            signA(0)<= A;
                            signB(0)<= B;
                 else
                            signA(0)<= A;
                            signB(0)<= B;
                 end if;
             end if;
          end if;
        end if;
 end process;

Out_A <= signA( depth-1);
Out_B <= signB( depth-1);

end arch;
