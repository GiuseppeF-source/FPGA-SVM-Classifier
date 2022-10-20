library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.ram_pkg.all;

entity RAM_DP_Bias is
    generic (
        WIDTH: integer := 7; -- 3 parte intera + 4 parte frazionaria 
        DEPTH: integer := 16 -- 16 invece di 15 in modo da avere 4 bit di indirizzo, con 15 ne usa 3
    );
    Port (
        addra_RAM_Bias : in std_logic_vector((clogb2(DEPTH)-1) downto 0);    -- Address bus, width determined from RAM_DEPTH
        addrb_RAM_Bias : in std_logic_vector((clogb2(DEPTH)-1) downto 0);    -- Address bus, width determined from RAM_DEPTH
        din_RAM_Bias  : in std_logic_vector(WIDTH-1 downto 0);                -- RAM input data
        clk_RAM_Bias  : in std_logic;                                           -- Clock
        we_RAM_Bias   : in std_logic;                                           -- Write enable
        en_RAM_Bias   : in std_logic;                                           -- RAM Enable, for additional power savings, disable port when not in use
        regce_RAM_Bias: in std_logic;                                           -- Output register enable
        dout_RAM_Bias : out std_logic_vector(WIDTH-1 downto 0)               -- RAM output data 
);
end RAM_DP_Bias;

architecture arch of RAM_DP_Bias is

component xilinx_simple_dual_port_1_clock_ram is
generic (
    RAM_WIDTH : integer ;                    -- Specify RAM data width
    RAM_DEPTH : integer ;                    -- Specify RAM depth (number of entries)
    RAM_PERFORMANCE : string ;               -- Select "HIGH_PERFORMANCE" or "LOW_LATENCY" 
    INIT_FILE : string                       -- Specify name/location of RAM initialization file if using one (leave blank if not)
    );

port (
        addra : in std_logic_vector((clogb2(RAM_DEPTH)-1) downto 0);     -- Write address bus, width determined from RAM_DEPTH
        addrb : in std_logic_vector((clogb2(RAM_DEPTH)-1) downto 0);     -- Read address bus, width determined from RAM_DEPTH
        dina  : in std_logic_vector(RAM_WIDTH-1 downto 0);		  -- RAM input data
        clka  : in std_logic;                       			  -- Clock
        wea   : in std_logic;                       			  -- Write enable
        enb   : in std_logic;                       			  -- RAM Enable, for additional power savings, disable port when not in use
        regceb: in std_logic;                       			  -- Output register enable
        doutb : out std_logic_vector(RAM_WIDTH-1 downto 0)   			  -- RAM output data
    );

end component;

begin

inst_RAM_Bias:
xilinx_simple_dual_port_1_clock_ram 
generic map (
 RAM_WIDTH => WIDTH,
 RAM_DEPTH => DEPTH,
 RAM_PERFORMANCE => "LOW_LATENCY",
 INIT_FILE => "C:\Users\yoxo\Desktop\Giuseppe\Unical\CdL_LM_Tesi\Dati_Classifier_bin\Coefficienti\Partizione_1\Bias.dat" 
)
  port map  (
 addra  => addra_RAM_Bias,
 addrb  => addrb_RAM_Bias,
 dina   => din_RAM_Bias,
 clka   => clk_RAM_Bias,
 wea    => we_RAM_Bias,
 enb    => en_RAM_Bias,
 regceb => regce_RAM_Bias,
 doutb  => dout_RAM_Bias
);

end arch;
