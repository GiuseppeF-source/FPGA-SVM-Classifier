--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Command: generate_target bd_d4d3.bd
--Design : bd_d4d3
--Purpose: IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_d4d3 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe10 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe11 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe12 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe14 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 407 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe9 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of bd_d4d3 : entity is "bd_d4d3,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_d4d3,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of bd_d4d3 : entity is "embedded_system_system_ila_0_1.hwdef";
end bd_d4d3;

architecture STRUCTURE of bd_d4d3 is
  component bd_d4d3_ila_lib_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 407 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe9 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe10 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe11 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe12 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe14 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component bd_d4d3_ila_lib_0;
  signal clk_1 : STD_LOGIC;
  signal probe0_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe10_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe11_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe12_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal probe13_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe14_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe1_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe2_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal probe3_1 : STD_LOGIC_VECTOR ( 407 downto 0 );
  signal probe4_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal probe5_1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal probe6_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal probe7_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe8_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe9_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN embedded_system_processing_system7_0_0_FCLK_CLK0, FREQ_HZ 30303030, INSERT_VIP 0, PHASE 0.000";
begin
  clk_1 <= clk;
  probe0_1(0) <= probe0(0);
  probe10_1(0) <= probe10(0);
  probe11_1(0) <= probe11(0);
  probe12_1(31 downto 0) <= probe12(31 downto 0);
  probe13_1(0) <= probe13(0);
  probe14_1(0) <= probe14(0);
  probe1_1(0) <= probe1(0);
  probe2_1(3 downto 0) <= probe2(3 downto 0);
  probe3_1(407 downto 0) <= probe3(407 downto 0);
  probe4_1(3 downto 0) <= probe4(3 downto 0);
  probe5_1(11 downto 0) <= probe5(11 downto 0);
  probe6_1(31 downto 0) <= probe6(31 downto 0);
  probe7_1(0) <= probe7(0);
  probe8_1(0) <= probe8(0);
  probe9_1(31 downto 0) <= probe9(31 downto 0);
ila_lib: component bd_d4d3_ila_lib_0
     port map (
      clk => clk_1,
      probe0(0) => probe0_1(0),
      probe1(0) => probe1_1(0),
      probe10(0) => probe10_1(0),
      probe11(0) => probe11_1(0),
      probe12(31 downto 0) => probe12_1(31 downto 0),
      probe13(0) => probe13_1(0),
      probe14(0) => probe14_1(0),
      probe2(3 downto 0) => probe2_1(3 downto 0),
      probe3(407 downto 0) => probe3_1(407 downto 0),
      probe4(3 downto 0) => probe4_1(3 downto 0),
      probe5(11 downto 0) => probe5_1(11 downto 0),
      probe6(31 downto 0) => probe6_1(31 downto 0),
      probe7(0) => probe7_1(0),
      probe8(0) => probe8_1(0),
      probe9(31 downto 0) => probe9_1(31 downto 0)
    );
end STRUCTURE;
