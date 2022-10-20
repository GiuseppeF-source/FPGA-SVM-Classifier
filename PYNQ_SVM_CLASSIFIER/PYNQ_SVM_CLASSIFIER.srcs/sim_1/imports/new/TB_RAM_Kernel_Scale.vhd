
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.ram_pkg.all;

entity TB_RAM_Kernel_Scale is
end TB_RAM_Kernel_Scale;

architecture arch of TB_RAM_Kernel_Scale is


constant RAM_WIDTH : integer := 12;  
constant RAM_DEPTH : integer := 16; 
signal addr_RAM_Kernel_Scale :  std_logic_vector((clogb2(RAM_DEPTH)-1) downto 0);     -- Address bus, width determined from RAM_DEPTH
signal din_RAM_Kernel_Scale  :  std_logic_vector(RAM_WIDTH-1 downto 0) := ( others => '0');          -- RAM input data
signal clk  :  std_logic;                                                             -- Clock
signal we_RAM_Kernel_Scale   :  std_logic := '0';                                     -- Write enable
signal en_RAM_Kernel_Scale   :  std_logic := '0';                                     -- RAM en_BRAM_Kernel_Scaleble, for additional power savings, disable port when not in use
signal regce_RAM_Kernel_Scale:  std_logic := '0';                                     -- Output register en_BRAM_Kernel_Scaleble
signal dout_RAM_Kernel_Scale :  std_logic_vector(RAM_WIDTH-1 downto 0) ;              -- RAM output data
constant period : time := 20 ns; 


begin

UUT: entity work.RAM_Kernel_Scale(arch)
generic map (
WIDTH => RAM_WIDTH, -- 2 parte intera + 10 parte frazionaria
DEPTH => RAM_DEPTH -- 16 invece di 15 in modo da avere 4 bit di indirizzo, con 15 ne usa 3
)
port map (
addr_RAM_Kernel_Scale => addr_RAM_Kernel_Scale,
din_RAM_Kernel_Scale => din_RAM_Kernel_Scale,
clk_RAM_Kernel_Scale => clk,
we_RAM_Kernel_Scale => we_RAM_Kernel_Scale,
en_RAM_Kernel_Scale => en_RAM_Kernel_Scale,
regce_RAM_Kernel_Scale => regce_RAM_Kernel_Scale,
dout_RAM_Kernel_Scale => dout_RAM_Kernel_Scale
);


-- continuous clock
    Clock_Cycle: process              
        Begin
            clk <= '0';
            wait for period/2;
            clk <= '1';
            wait for period/2;
        end process;
        
 -- variation of signal    
        Input_process: process
         Begin
            wait for 100ns;
            en_RAM_Kernel_Scale <= '1'; 
            addr_RAM_Kernel_Scale <= (others => '0');   
            wait for 60ns;
            addr_RAM_Kernel_Scale <= "0001";
            wait for 60ns;
            addr_RAM_Kernel_Scale <= "0010";
            wait for 60ns;
            addr_RAM_Kernel_Scale <= "0011";

            wait;
        end process;      

end arch;
