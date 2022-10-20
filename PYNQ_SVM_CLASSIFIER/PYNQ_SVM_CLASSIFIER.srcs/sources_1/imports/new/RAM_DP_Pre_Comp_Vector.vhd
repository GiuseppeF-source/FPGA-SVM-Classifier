library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.ram_pkg.all;

entity RAM_DP_Pre_Comp_Vector is 
    generic (
    WIDTH: integer := 408; -- ( 7 parte intera + 5 frazionaria ) * 34 
    DEPTH: integer := 16 -- 16 invece di 15 in modo da avere 4 bit di indirizzo, con 15 ne usa 3
    );
  Port (
  addra_RAM_Pre_Computed_Vector : in std_logic_vector((clogb2(DEPTH)-1) downto 0);    -- Address bus, width determined from RAM_DEPTH
  addrb_RAM_Pre_Computed_Vector : in std_logic_vector((clogb2(DEPTH)-1) downto 0);
  din_RAM_Pre_Computed_Vector  : in std_logic_vector(WIDTH-1 downto 0);                -- RAM input data
  clk_RAM_Pre_Computed_Vector  : in std_logic;                                           -- Clock
  we_RAM_Pre_Computed_Vector   : in std_logic;                                           -- Write enable
  en_RAM_Pre_Computed_Vector   : in std_logic;                                           -- RAM Enable, for additional power savings, disable port when not in use
  regce_RAM_Pre_Computed_Vector: in std_logic;                                           -- Output register enable
  dout_RAM_Pre_Computed_Vector : out std_logic_vector(WIDTH-1 downto 0)               -- RAM output data 
);
end RAM_DP_Pre_Comp_Vector;

architecture arch of RAM_DP_Pre_Comp_Vector is

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

inst_RDP_PCV:
xilinx_simple_dual_port_1_clock_ram 
generic map (
    RAM_WIDTH => WIDTH,
    RAM_DEPTH => DEPTH,
    RAM_PERFORMANCE => "LOW_LATENCY",
    INIT_FILE => "C:\Users\yoxo\Desktop\Giuseppe\Unical\CdL_LM_Tesi\Dati_Classifier_bin\Coefficienti\Partizione_1\Acc_SVxAlphaxSVLabel.dat" 
)
port map  (
    addra  => addra_RAM_Pre_Computed_Vector,
    addrb  => addrb_RAM_Pre_Computed_Vector,
    dina   => din_RAM_Pre_Computed_Vector,
    clka   => clk_RAM_Pre_Computed_Vector,
    wea    => we_RAM_Pre_Computed_Vector,
    enb    => en_RAM_Pre_Computed_Vector,
    regceb => regce_RAM_Pre_Computed_Vector,
    doutb  => dout_RAM_Pre_Computed_Vector
);



end arch;
