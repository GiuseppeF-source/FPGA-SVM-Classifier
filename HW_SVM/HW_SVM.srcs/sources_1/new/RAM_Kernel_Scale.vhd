library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.ram_pkg.all;

entity RAM_Kernel_Scale is
  Generic (
    WIDTH: integer := 12; -- 2 parte intera + 10 parte frazionaria
    DEPTH: integer := 16 -- 16 invece di 15 in modo da avere 4 bit di indirizzo, con 15 ne usa 3
);
  Port (
  addr_RAM_Kernel_Scale : in std_logic_vector((clogb2(DEPTH)-1) downto 0);    -- Address bus, width determined from RAM_DEPTH
  din_RAM_Kernel_Scale  : in std_logic_vector(WIDTH-1 downto 0);                -- RAM input data
  clk_RAM_Kernel_Scale  : in std_logic;                                           -- Clock
  we_RAM_Kernel_Scale   : in std_logic;                                           -- Write enable
  en_RAM_Kernel_Scale   : in std_logic;                                           -- RAM Enable, for additional power savings, disable port when not in use
  regce_RAM_Kernel_Scale: in std_logic;                                           -- Output register enable
  dout_RAM_Kernel_Scale : out std_logic_vector(WIDTH-1 downto 0)               -- RAM output data 
);
end RAM_Kernel_Scale;

architecture arch of RAM_Kernel_Scale is

component xilinx_single_port_ram_no_change is
generic (
    RAM_WIDTH : integer := WIDTH;          -- Specify RAM data width
    RAM_DEPTH : integer := DEPTH;          -- Specify RAM depth (number of entries)
    RAM_PERFORMANCE : string := "LOW_LATENCY";     -- Select "HIGH_PERFORMANCE" or "LOW_LATENCY" 
    INIT_FILE : string := "C:\work\Master_Degree_Thesis\Dati_Classifier_bin\Coeff_TB\Partizione_1\Kernel_Scale.dat"           -- Specify name/location of RAM initialization file if using one (leave blank if not)
    );

port (
        addra : in std_logic_vector((clogb2(RAM_DEPTH)-1) downto 0);    -- Address bus, width determined from RAM_DEPTH
        dina  : in std_logic_vector(RAM_WIDTH-1 downto 0);		        -- RAM input data
        clka  : in std_logic;                       			        -- Clock
        wea   : in std_logic;                       			        -- Write enable
        ena   : in std_logic;                       			        -- RAM Enable, for additional power savings, disable port when not in use
        regcea: in std_logic;                       			        -- Output register enable
        douta : out std_logic_vector(RAM_WIDTH-1 downto 0)   	        -- RAM output data
    );

end component;

begin

inst_RAM_Kernel_Scale:
xilinx_single_port_ram_no_change 
--  generic map (
-- RAM_WIDTH => WIDTH,
-- RAM_DEPTH => DEPTH,
-- RAM_PERFORMANCE => RAM_PERFORMANCE,
-- INIT_FILE => INIT_FILE
--)
  port map  (
 addra  => addr_RAM_Kernel_Scale,
 dina   => din_RAM_Kernel_Scale,
 clka   => clk_RAM_Kernel_Scale,
 wea    => we_RAM_Kernel_Scale,
 ena    => en_RAM_Kernel_Scale,
 regcea => regce_RAM_Kernel_Scale,
 douta  => dout_RAM_Kernel_Scale
);

end arch;
