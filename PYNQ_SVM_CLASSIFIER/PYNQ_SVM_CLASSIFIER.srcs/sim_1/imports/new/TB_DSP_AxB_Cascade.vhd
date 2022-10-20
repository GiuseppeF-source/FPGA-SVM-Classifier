----------------------------------------------------------------------------------
--  Test Bench creato per testare il DSP che svolgerà le 
--  moltiplicazioni in parallelo con adder in cascata
--  della singola SVM. 

----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity TB_DSP_AxB_Cascade is
--  Port ( );
end TB_DSP_AxB_Cascade;

architecture Behavioral of TB_DSP_AxB_Cascade is

component DSP_AxB_Cascade is
  port (
    Attribute_j : in  std_logic_vector( 29 downto 0 ); -- A
    SV_j        : in  std_logic_vector( 17 downto 0 ); -- B
    IN_Cascade  : in  std_logic_vector( 47 downto 0 ); -- PCIN Cascade
    OUT_Cascade : out std_logic_vector( 47 downto 0 ); -- PCOUT Cascade
    RST         : in  std_logic;
    CE          : in  std_logic;
    CLK         : in  std_logic
  );
end component;

signal s_Attribute_j : std_logic_vector( 29 downto 0 );
signal s_SV_j        : std_logic_vector( 17 downto 0 );
signal s_IN_Cascade  : std_logic_vector( 47 downto 0 ):= (others => '0');
signal s_RST         : std_logic;
signal s_CE          : std_logic;
signal CLK           : std_logic;
signal s_OUT_Cascade : std_logic_vector( 47 downto 0 );

constant period : time := 20 ns; 

begin

-- connecting testbench signals with component
    UUT : DSP_AxB_Cascade port map (
                                    Attribute_j => s_Attribute_j, 
                                    SV_j => s_SV_j, 
                                    IN_Cascade => s_IN_Cascade,
                                    RST => s_RST, 
                                    CE => s_CE,
                                    CLK => CLK,
                                    OUT_Cascade => s_OUT_Cascade );
-- continuous clock
    Clock_Cycle: process              
                    Begin
                    CLK <= '0';
                    wait for period/2;
                    CLK <= '1';
                    wait for period/2;
                 end process;
                 
-- variation of signal    
    Input_process: process
                        Begin
                        wait for 100ns;
                        s_RST <= '1';
                        s_CE <= '1';
                        wait for 30ns;
                        s_RST <= '0';
                        wait for 20ns;
                        s_Attribute_j <= x"0000000"&b"01";
                        s_SV_j <= "111111111111111111";
                        wait;
                   end process;
                        


end Behavioral;
