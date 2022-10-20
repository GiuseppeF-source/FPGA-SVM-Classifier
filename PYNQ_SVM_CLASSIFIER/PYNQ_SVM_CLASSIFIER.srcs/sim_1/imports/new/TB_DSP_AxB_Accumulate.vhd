
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity TB_DSP_AxB_Accumulate is
--  Port ( );
end TB_DSP_AxB_Accumulate;

architecture Behavioral of TB_DSP_AxB_Accumulate is

component DSP_AxB_Accumulate is
  port (
    Attribute_x_SV_i   : in std_logic_vector(29 downto 0); -- Prodotto scalare tra Attributo e SV i-esimo
    Alpha_x_Y_i        : in std_logic_vector(17 downto 0); -- Coeff associato al SV i-esimo
    Accumulated_Output : out std_logic_vector(47 downto 0); -- OUT
    RST                : in std_logic;
    CE                 : in std_logic;
    CLK                : in std_logic
  );
end component;

signal s_Attribute_x_SV_i : std_logic_vector( 29 downto 0 );
signal s_Alpha_x_Y_i        : std_logic_vector( 17 downto 0 );
signal s_RST         : std_logic;
signal s_CE          : std_logic;
signal s_CLK           : std_logic;
signal s_Accumulated_Output : std_logic_vector( 47 downto 0 );

constant period : time := 20 ns; 


begin

-- connecting testbench signals with component
    UUT : DSP_AxB_Accumulate port map (
                                    Attribute_x_SV_i => s_Attribute_x_SV_i, 
                                    Alpha_x_Y_i => s_Alpha_x_Y_i, 
                                    Accumulated_Output => s_Accumulated_Output,
                                    RST => s_RST, 
                                    CE => s_CE,
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
                        --s_CE <= '1';
                        s_RST <= '0';
                       -- wait for 20ns;
                        s_Attribute_x_SV_i <= x"0000000"&b"01";
                        s_Alpha_x_Y_i <= x"0000"&b"01";
                        wait;
                   end process;
                        

end Behavioral;
