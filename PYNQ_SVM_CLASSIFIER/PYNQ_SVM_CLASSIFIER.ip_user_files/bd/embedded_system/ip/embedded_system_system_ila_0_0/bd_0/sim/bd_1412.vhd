--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Command: generate_target bd_1412.bd
--Design : bd_1412
--Purpose: IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_1412 is
  port (
    SLOT_0_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXIS_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXIS_tlast : in STD_LOGIC;
    SLOT_0_AXIS_tready : in STD_LOGIC;
    SLOT_0_AXIS_tvalid : in STD_LOGIC;
    SLOT_1_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_1_AXIS_tlast : in STD_LOGIC;
    SLOT_1_AXIS_tready : in STD_LOGIC;
    SLOT_1_AXIS_tvalid : in STD_LOGIC;
    SLOT_2_AXI_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    SLOT_2_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_2_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_2_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_arready : in STD_LOGIC;
    SLOT_2_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_arvalid : in STD_LOGIC;
    SLOT_2_AXI_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    SLOT_2_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_2_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_2_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_awready : in STD_LOGIC;
    SLOT_2_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_awvalid : in STD_LOGIC;
    SLOT_2_AXI_bready : in STD_LOGIC;
    SLOT_2_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_bvalid : in STD_LOGIC;
    SLOT_2_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_2_AXI_rlast : in STD_LOGIC;
    SLOT_2_AXI_rready : in STD_LOGIC;
    SLOT_2_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_rvalid : in STD_LOGIC;
    SLOT_2_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_2_AXI_wlast : in STD_LOGIC;
    SLOT_2_AXI_wready : in STD_LOGIC;
    SLOT_2_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_wvalid : in STD_LOGIC;
    SLOT_3_AXI_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    SLOT_3_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_3_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_3_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_3_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_3_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_3_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_3_AXI_arready : in STD_LOGIC;
    SLOT_3_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_3_AXI_arvalid : in STD_LOGIC;
    SLOT_3_AXI_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    SLOT_3_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_3_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_3_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_3_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_3_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_3_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_3_AXI_awready : in STD_LOGIC;
    SLOT_3_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_3_AXI_awvalid : in STD_LOGIC;
    SLOT_3_AXI_bready : in STD_LOGIC;
    SLOT_3_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_3_AXI_bvalid : in STD_LOGIC;
    SLOT_3_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_3_AXI_rlast : in STD_LOGIC;
    SLOT_3_AXI_rready : in STD_LOGIC;
    SLOT_3_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_3_AXI_rvalid : in STD_LOGIC;
    SLOT_3_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_3_AXI_wlast : in STD_LOGIC;
    SLOT_3_AXI_wready : in STD_LOGIC;
    SLOT_3_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_3_AXI_wvalid : in STD_LOGIC;
    SLOT_4_AXI_araddr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    SLOT_4_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_4_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_4_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_4_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_4_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_4_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_4_AXI_arready : in STD_LOGIC;
    SLOT_4_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_4_AXI_arvalid : in STD_LOGIC;
    SLOT_4_AXI_awaddr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    SLOT_4_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_4_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_4_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_4_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_4_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_4_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_4_AXI_awready : in STD_LOGIC;
    SLOT_4_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_4_AXI_awvalid : in STD_LOGIC;
    SLOT_4_AXI_bready : in STD_LOGIC;
    SLOT_4_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_4_AXI_bvalid : in STD_LOGIC;
    SLOT_4_AXI_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    SLOT_4_AXI_rlast : in STD_LOGIC;
    SLOT_4_AXI_rready : in STD_LOGIC;
    SLOT_4_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_4_AXI_rvalid : in STD_LOGIC;
    SLOT_4_AXI_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    SLOT_4_AXI_wlast : in STD_LOGIC;
    SLOT_4_AXI_wready : in STD_LOGIC;
    SLOT_4_AXI_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    SLOT_4_AXI_wvalid : in STD_LOGIC;
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 511 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    resetn : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of bd_1412 : entity is "bd_1412,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_1412,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=17,numReposBlks=17,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of bd_1412 : entity is "embedded_system_system_ila_0_0.hwdef";
end bd_1412;

architecture STRUCTURE of bd_1412 is
  component bd_1412_ila_lib_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 511 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe9 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe10 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe11 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe12 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe13 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe14 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe15 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe16 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    probe17 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe18 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe19 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe20 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe21 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe22 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe23 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe24 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe25 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    probe26 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe27 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe28 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe29 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe30 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe31 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe32 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe33 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe34 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe35 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe36 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe37 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe38 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe39 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe40 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe41 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe42 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe43 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe44 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe45 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe46 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    probe47 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe48 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe49 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe50 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe51 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe52 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe53 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe54 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe55 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    probe56 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe57 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe58 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe59 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe60 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe61 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe62 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe63 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe64 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe65 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe66 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe67 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe68 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe69 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe70 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe71 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe72 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe73 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe74 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe75 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe76 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    probe77 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe78 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe79 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe80 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe81 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe82 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe83 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe84 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe85 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    probe86 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe87 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe88 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe89 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe90 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe91 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe92 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe93 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe94 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe95 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe96 : in STD_LOGIC_VECTOR ( 511 downto 0 );
    probe97 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe98 : in STD_LOGIC_VECTOR ( 511 downto 0 );
    probe99 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    probe100 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe101 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe102 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe103 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe104 : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component bd_1412_ila_lib_0;
  component bd_1412_g_inst_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_slot_2_axi_b_cnt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_2_axi_r_cnt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_3_axi_b_cnt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_3_axi_r_cnt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_4_axi_b_cnt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_4_axi_r_cnt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_2_axi_aw_cnt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_2_axi_ar_cnt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_3_axi_aw_cnt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_3_axi_ar_cnt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_4_axi_aw_cnt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_4_axi_ar_cnt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_0_axis_tvalid : in STD_LOGIC;
    slot_0_axis_tready : in STD_LOGIC;
    slot_0_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_0_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_0_axis_tlast : in STD_LOGIC;
    slot_1_axis_tvalid : in STD_LOGIC;
    slot_1_axis_tready : in STD_LOGIC;
    slot_1_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_1_axis_tlast : in STD_LOGIC;
    slot_2_axi_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    slot_2_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_2_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    slot_2_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_2_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_2_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_2_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_2_axi_awvalid : in STD_LOGIC;
    slot_2_axi_awready : in STD_LOGIC;
    slot_2_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_2_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_2_axi_wlast : in STD_LOGIC;
    slot_2_axi_wvalid : in STD_LOGIC;
    slot_2_axi_wready : in STD_LOGIC;
    slot_2_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_2_axi_bvalid : in STD_LOGIC;
    slot_2_axi_bready : in STD_LOGIC;
    slot_2_axi_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    slot_2_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    slot_2_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_2_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_2_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_2_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_2_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_2_axi_arvalid : in STD_LOGIC;
    slot_2_axi_arready : in STD_LOGIC;
    slot_2_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_2_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_2_axi_rlast : in STD_LOGIC;
    slot_2_axi_rvalid : in STD_LOGIC;
    slot_2_axi_rready : in STD_LOGIC;
    slot_3_axi_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    slot_3_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_3_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    slot_3_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_3_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_3_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_3_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_3_axi_awvalid : in STD_LOGIC;
    slot_3_axi_awready : in STD_LOGIC;
    slot_3_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_3_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_3_axi_wlast : in STD_LOGIC;
    slot_3_axi_wvalid : in STD_LOGIC;
    slot_3_axi_wready : in STD_LOGIC;
    slot_3_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_3_axi_bvalid : in STD_LOGIC;
    slot_3_axi_bready : in STD_LOGIC;
    slot_3_axi_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    slot_3_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    slot_3_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_3_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_3_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_3_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_3_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_3_axi_arvalid : in STD_LOGIC;
    slot_3_axi_arready : in STD_LOGIC;
    slot_3_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_3_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_3_axi_rlast : in STD_LOGIC;
    slot_3_axi_rvalid : in STD_LOGIC;
    slot_3_axi_rready : in STD_LOGIC;
    slot_4_axi_awaddr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    slot_4_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_4_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    slot_4_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_4_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_4_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_4_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_4_axi_awvalid : in STD_LOGIC;
    slot_4_axi_awready : in STD_LOGIC;
    slot_4_axi_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    slot_4_axi_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    slot_4_axi_wlast : in STD_LOGIC;
    slot_4_axi_wvalid : in STD_LOGIC;
    slot_4_axi_wready : in STD_LOGIC;
    slot_4_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_4_axi_bvalid : in STD_LOGIC;
    slot_4_axi_bready : in STD_LOGIC;
    slot_4_axi_araddr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    slot_4_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    slot_4_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_4_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_4_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_4_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_4_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_4_axi_arvalid : in STD_LOGIC;
    slot_4_axi_arready : in STD_LOGIC;
    slot_4_axi_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    slot_4_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_4_axi_rlast : in STD_LOGIC;
    slot_4_axi_rvalid : in STD_LOGIC;
    slot_4_axi_rready : in STD_LOGIC;
    m_slot_0_axis_tvalid : out STD_LOGIC;
    m_slot_0_axis_tready : out STD_LOGIC;
    m_slot_0_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_slot_0_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_slot_0_axis_tlast : out STD_LOGIC;
    m_slot_1_axis_tvalid : out STD_LOGIC;
    m_slot_1_axis_tready : out STD_LOGIC;
    m_slot_1_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_slot_1_axis_tlast : out STD_LOGIC;
    m_slot_2_axi_awaddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_slot_2_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_slot_2_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_slot_2_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_slot_2_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_2_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_slot_2_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_slot_2_axi_awvalid : out STD_LOGIC;
    m_slot_2_axi_awready : out STD_LOGIC;
    m_slot_2_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_slot_2_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_slot_2_axi_wlast : out STD_LOGIC;
    m_slot_2_axi_wvalid : out STD_LOGIC;
    m_slot_2_axi_wready : out STD_LOGIC;
    m_slot_2_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_2_axi_bvalid : out STD_LOGIC;
    m_slot_2_axi_bready : out STD_LOGIC;
    m_slot_2_axi_araddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_slot_2_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_slot_2_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_slot_2_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_2_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_slot_2_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_slot_2_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_slot_2_axi_arvalid : out STD_LOGIC;
    m_slot_2_axi_arready : out STD_LOGIC;
    m_slot_2_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_slot_2_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_2_axi_rlast : out STD_LOGIC;
    m_slot_2_axi_rvalid : out STD_LOGIC;
    m_slot_2_axi_rready : out STD_LOGIC;
    m_slot_3_axi_awaddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_slot_3_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_slot_3_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_slot_3_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_slot_3_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_3_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_slot_3_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_slot_3_axi_awvalid : out STD_LOGIC;
    m_slot_3_axi_awready : out STD_LOGIC;
    m_slot_3_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_slot_3_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_slot_3_axi_wlast : out STD_LOGIC;
    m_slot_3_axi_wvalid : out STD_LOGIC;
    m_slot_3_axi_wready : out STD_LOGIC;
    m_slot_3_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_3_axi_bvalid : out STD_LOGIC;
    m_slot_3_axi_bready : out STD_LOGIC;
    m_slot_3_axi_araddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_slot_3_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_slot_3_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_slot_3_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_3_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_slot_3_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_slot_3_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_slot_3_axi_arvalid : out STD_LOGIC;
    m_slot_3_axi_arready : out STD_LOGIC;
    m_slot_3_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_slot_3_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_3_axi_rlast : out STD_LOGIC;
    m_slot_3_axi_rvalid : out STD_LOGIC;
    m_slot_3_axi_rready : out STD_LOGIC;
    m_slot_4_axi_awaddr : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_slot_4_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_slot_4_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_slot_4_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_slot_4_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_4_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_slot_4_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_slot_4_axi_awvalid : out STD_LOGIC;
    m_slot_4_axi_awready : out STD_LOGIC;
    m_slot_4_axi_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_slot_4_axi_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_slot_4_axi_wlast : out STD_LOGIC;
    m_slot_4_axi_wvalid : out STD_LOGIC;
    m_slot_4_axi_wready : out STD_LOGIC;
    m_slot_4_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_4_axi_bvalid : out STD_LOGIC;
    m_slot_4_axi_bready : out STD_LOGIC;
    m_slot_4_axi_araddr : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_slot_4_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_slot_4_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_slot_4_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_4_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_slot_4_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_slot_4_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_slot_4_axi_arvalid : out STD_LOGIC;
    m_slot_4_axi_arready : out STD_LOGIC;
    m_slot_4_axi_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_slot_4_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_4_axi_rlast : out STD_LOGIC;
    m_slot_4_axi_rvalid : out STD_LOGIC;
    m_slot_4_axi_rready : out STD_LOGIC;
    slot_2_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_2_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_3_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_3_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_4_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_4_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_slot_2_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_slot_2_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_slot_3_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_slot_3_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_slot_4_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_slot_4_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component bd_1412_g_inst_0;
  component bd_1412_slot_2_aw_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component bd_1412_slot_2_aw_0;
  component bd_1412_slot_2_w_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component bd_1412_slot_2_w_0;
  component bd_1412_slot_2_b_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component bd_1412_slot_2_b_0;
  component bd_1412_slot_2_ar_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component bd_1412_slot_2_ar_0;
  component bd_1412_slot_2_r_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component bd_1412_slot_2_r_0;
  component bd_1412_slot_3_aw_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component bd_1412_slot_3_aw_0;
  component bd_1412_slot_3_w_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component bd_1412_slot_3_w_0;
  component bd_1412_slot_3_b_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component bd_1412_slot_3_b_0;
  component bd_1412_slot_3_ar_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component bd_1412_slot_3_ar_0;
  component bd_1412_slot_3_r_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component bd_1412_slot_3_r_0;
  component bd_1412_slot_4_aw_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component bd_1412_slot_4_aw_0;
  component bd_1412_slot_4_w_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component bd_1412_slot_4_w_0;
  component bd_1412_slot_4_b_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component bd_1412_slot_4_b_0;
  component bd_1412_slot_4_ar_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component bd_1412_slot_4_ar_0;
  component bd_1412_slot_4_r_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component bd_1412_slot_4_r_0;
  signal Conn1_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_TLAST : STD_LOGIC;
  signal Conn1_TREADY : STD_LOGIC;
  signal Conn1_TVALID : STD_LOGIC;
  signal Conn2_ARADDR : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Conn2_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn2_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn2_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_ARREADY : STD_LOGIC;
  signal Conn2_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn2_ARVALID : STD_LOGIC;
  signal Conn2_AWADDR : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Conn2_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn2_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn2_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn2_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_AWREADY : STD_LOGIC;
  signal Conn2_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn2_AWVALID : STD_LOGIC;
  signal Conn2_BREADY : STD_LOGIC;
  signal Conn2_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_BVALID : STD_LOGIC;
  signal Conn2_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_RLAST : STD_LOGIC;
  signal Conn2_RREADY : STD_LOGIC;
  signal Conn2_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_RVALID : STD_LOGIC;
  signal Conn2_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_WLAST : STD_LOGIC;
  signal Conn2_WREADY : STD_LOGIC;
  signal Conn2_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_WVALID : STD_LOGIC;
  signal Conn3_ARADDR : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Conn3_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn3_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn3_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn3_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn3_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn3_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn3_ARREADY : STD_LOGIC;
  signal Conn3_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn3_ARVALID : STD_LOGIC;
  signal Conn3_AWADDR : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Conn3_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn3_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn3_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn3_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn3_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn3_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn3_AWREADY : STD_LOGIC;
  signal Conn3_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn3_AWVALID : STD_LOGIC;
  signal Conn3_BREADY : STD_LOGIC;
  signal Conn3_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn3_BVALID : STD_LOGIC;
  signal Conn3_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_RLAST : STD_LOGIC;
  signal Conn3_RREADY : STD_LOGIC;
  signal Conn3_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn3_RVALID : STD_LOGIC;
  signal Conn3_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn3_WLAST : STD_LOGIC;
  signal Conn3_WREADY : STD_LOGIC;
  signal Conn3_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn3_WVALID : STD_LOGIC;
  signal Conn4_ARADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal Conn4_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn4_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn4_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn4_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn4_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn4_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn4_ARREADY : STD_LOGIC;
  signal Conn4_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn4_ARVALID : STD_LOGIC;
  signal Conn4_AWADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal Conn4_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn4_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn4_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn4_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn4_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn4_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn4_AWREADY : STD_LOGIC;
  signal Conn4_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn4_AWVALID : STD_LOGIC;
  signal Conn4_BREADY : STD_LOGIC;
  signal Conn4_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn4_BVALID : STD_LOGIC;
  signal Conn4_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal Conn4_RLAST : STD_LOGIC;
  signal Conn4_RREADY : STD_LOGIC;
  signal Conn4_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn4_RVALID : STD_LOGIC;
  signal Conn4_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal Conn4_WLAST : STD_LOGIC;
  signal Conn4_WREADY : STD_LOGIC;
  signal Conn4_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal Conn4_WVALID : STD_LOGIC;
  signal Conn_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn_TLAST : STD_LOGIC;
  signal Conn_TREADY : STD_LOGIC;
  signal Conn_TVALID : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal net_slot_0_axis_tdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal net_slot_0_axis_tkeep : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal net_slot_0_axis_tlast : STD_LOGIC;
  signal net_slot_0_axis_tready : STD_LOGIC;
  signal net_slot_0_axis_tvalid : STD_LOGIC;
  signal net_slot_1_axis_tdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal net_slot_1_axis_tlast : STD_LOGIC;
  signal net_slot_1_axis_tready : STD_LOGIC;
  signal net_slot_1_axis_tvalid : STD_LOGIC;
  signal net_slot_2_axi_ar_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_2_axi_ar_ctrl : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_2_axi_araddr : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal net_slot_2_axi_arburst : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_2_axi_arcache : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal net_slot_2_axi_arlen : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal net_slot_2_axi_arlock : STD_LOGIC_VECTOR ( 0 to 0 );
  signal net_slot_2_axi_arprot : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_2_axi_arqos : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal net_slot_2_axi_arready : STD_LOGIC;
  signal net_slot_2_axi_arsize : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_2_axi_arvalid : STD_LOGIC;
  signal net_slot_2_axi_aw_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_2_axi_aw_ctrl : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_2_axi_awaddr : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal net_slot_2_axi_awburst : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_2_axi_awcache : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal net_slot_2_axi_awlen : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal net_slot_2_axi_awlock : STD_LOGIC_VECTOR ( 0 to 0 );
  signal net_slot_2_axi_awprot : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_2_axi_awqos : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal net_slot_2_axi_awready : STD_LOGIC;
  signal net_slot_2_axi_awsize : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_2_axi_awvalid : STD_LOGIC;
  signal net_slot_2_axi_b_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_2_axi_b_ctrl : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_2_axi_bready : STD_LOGIC;
  signal net_slot_2_axi_bresp : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_2_axi_bvalid : STD_LOGIC;
  signal net_slot_2_axi_r_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_2_axi_r_ctrl : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_2_axi_rdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal net_slot_2_axi_rlast : STD_LOGIC;
  signal net_slot_2_axi_rready : STD_LOGIC;
  signal net_slot_2_axi_rresp : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_2_axi_rvalid : STD_LOGIC;
  signal net_slot_2_axi_w_ctrl : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_2_axi_wdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal net_slot_2_axi_wlast : STD_LOGIC;
  signal net_slot_2_axi_wready : STD_LOGIC;
  signal net_slot_2_axi_wstrb : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal net_slot_2_axi_wvalid : STD_LOGIC;
  signal net_slot_3_axi_ar_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_3_axi_ar_ctrl : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_3_axi_araddr : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal net_slot_3_axi_arburst : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_3_axi_arcache : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal net_slot_3_axi_arlen : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal net_slot_3_axi_arlock : STD_LOGIC_VECTOR ( 0 to 0 );
  signal net_slot_3_axi_arprot : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_3_axi_arqos : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal net_slot_3_axi_arready : STD_LOGIC;
  signal net_slot_3_axi_arsize : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_3_axi_arvalid : STD_LOGIC;
  signal net_slot_3_axi_aw_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_3_axi_aw_ctrl : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_3_axi_awaddr : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal net_slot_3_axi_awburst : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_3_axi_awcache : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal net_slot_3_axi_awlen : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal net_slot_3_axi_awlock : STD_LOGIC_VECTOR ( 0 to 0 );
  signal net_slot_3_axi_awprot : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_3_axi_awqos : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal net_slot_3_axi_awready : STD_LOGIC;
  signal net_slot_3_axi_awsize : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_3_axi_awvalid : STD_LOGIC;
  signal net_slot_3_axi_b_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_3_axi_b_ctrl : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_3_axi_bready : STD_LOGIC;
  signal net_slot_3_axi_bresp : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_3_axi_bvalid : STD_LOGIC;
  signal net_slot_3_axi_r_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_3_axi_r_ctrl : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_3_axi_rdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal net_slot_3_axi_rlast : STD_LOGIC;
  signal net_slot_3_axi_rready : STD_LOGIC;
  signal net_slot_3_axi_rresp : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_3_axi_rvalid : STD_LOGIC;
  signal net_slot_3_axi_w_ctrl : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_3_axi_wdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal net_slot_3_axi_wlast : STD_LOGIC;
  signal net_slot_3_axi_wready : STD_LOGIC;
  signal net_slot_3_axi_wstrb : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal net_slot_3_axi_wvalid : STD_LOGIC;
  signal net_slot_4_axi_ar_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_4_axi_ar_ctrl : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_4_axi_araddr : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal net_slot_4_axi_arburst : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_4_axi_arcache : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal net_slot_4_axi_arlen : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal net_slot_4_axi_arlock : STD_LOGIC_VECTOR ( 0 to 0 );
  signal net_slot_4_axi_arprot : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_4_axi_arqos : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal net_slot_4_axi_arready : STD_LOGIC;
  signal net_slot_4_axi_arsize : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_4_axi_arvalid : STD_LOGIC;
  signal net_slot_4_axi_aw_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_4_axi_aw_ctrl : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_4_axi_awaddr : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal net_slot_4_axi_awburst : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_4_axi_awcache : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal net_slot_4_axi_awlen : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal net_slot_4_axi_awlock : STD_LOGIC_VECTOR ( 0 to 0 );
  signal net_slot_4_axi_awprot : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_4_axi_awqos : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal net_slot_4_axi_awready : STD_LOGIC;
  signal net_slot_4_axi_awsize : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_4_axi_awvalid : STD_LOGIC;
  signal net_slot_4_axi_b_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_4_axi_b_ctrl : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_4_axi_bready : STD_LOGIC;
  signal net_slot_4_axi_bresp : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_4_axi_bvalid : STD_LOGIC;
  signal net_slot_4_axi_r_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_4_axi_r_ctrl : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_4_axi_rdata : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal net_slot_4_axi_rlast : STD_LOGIC;
  signal net_slot_4_axi_rready : STD_LOGIC;
  signal net_slot_4_axi_rresp : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_4_axi_rvalid : STD_LOGIC;
  signal net_slot_4_axi_w_ctrl : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_4_axi_wdata : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal net_slot_4_axi_wlast : STD_LOGIC;
  signal net_slot_4_axi_wready : STD_LOGIC;
  signal net_slot_4_axi_wstrb : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal net_slot_4_axi_wvalid : STD_LOGIC;
  signal probe0_1 : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal probe1_1 : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal probe2_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal probe3_1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal probe4_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal probe5_1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal resetn_1 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of SLOT_0_AXIS_tlast : signal is "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TLAST";
  attribute X_INTERFACE_INFO of SLOT_0_AXIS_tready : signal is "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TREADY";
  attribute X_INTERFACE_INFO of SLOT_0_AXIS_tvalid : signal is "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TVALID";
  attribute X_INTERFACE_INFO of SLOT_1_AXIS_tlast : signal is "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TLAST";
  attribute X_INTERFACE_INFO of SLOT_1_AXIS_tready : signal is "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TREADY";
  attribute X_INTERFACE_INFO of SLOT_1_AXIS_tvalid : signal is "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TVALID";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARREADY";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARVALID";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWREADY";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWVALID";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI BREADY";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI BVALID";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_rlast : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RLAST";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RREADY";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RVALID";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_wlast : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WLAST";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WREADY";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WVALID";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARREADY";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARVALID";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWREADY";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWVALID";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BREADY";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BVALID";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_rlast : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RLAST";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RREADY";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RVALID";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_wlast : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WLAST";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WREADY";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WVALID";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARREADY";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARVALID";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWREADY";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWVALID";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI BREADY";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI BVALID";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_rlast : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI RLAST";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI RREADY";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI RVALID";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_wlast : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI WLAST";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI WREADY";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI WVALID";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF SLOT_0_AXIS:SLOT_1_AXIS:SLOT_2_AXI:SLOT_3_AXI:SLOT_4_AXI, ASSOCIATED_RESET resetn, CLK_DOMAIN embedded_system_processing_system7_0_0_FCLK_CLK0, FREQ_HZ 50000000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 RST.RESETN RST";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME RST.RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of SLOT_0_AXIS_tdata : signal is "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of SLOT_0_AXIS_tdata : signal is "XIL_INTERFACENAME SLOT_0_AXIS, CLK_DOMAIN embedded_system_processing_system7_0_0_FCLK_CLK0, FREQ_HZ 50000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of SLOT_0_AXIS_tkeep : signal is "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TKEEP";
  attribute X_INTERFACE_INFO of SLOT_1_AXIS_tdata : signal is "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of SLOT_1_AXIS_tdata : signal is "XIL_INTERFACENAME SLOT_1_AXIS, CLK_DOMAIN embedded_system_processing_system7_0_0_FCLK_CLK0, FREQ_HZ 50000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARADDR";
  attribute X_INTERFACE_PARAMETER of SLOT_2_AXI_araddr : signal is "XIL_INTERFACENAME SLOT_2_AXI, ADDR_WIDTH 12, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN embedded_system_processing_system7_0_0_FCLK_CLK0, DATA_WIDTH 32, FREQ_HZ 50000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 16, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_arburst : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARBURST";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_arcache : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARCACHE";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_arlen : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARLEN";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_arlock : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARLOCK";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARPROT";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_arqos : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARQOS";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_arsize : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARSIZE";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWADDR";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_awburst : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWBURST";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_awcache : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWCACHE";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_awlen : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWLEN";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_awlock : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWLOCK";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWPROT";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_awqos : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWQOS";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_awsize : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWSIZE";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI BRESP";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RDATA";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RRESP";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WDATA";
  attribute X_INTERFACE_INFO of SLOT_2_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WSTRB";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARADDR";
  attribute X_INTERFACE_PARAMETER of SLOT_3_AXI_araddr : signal is "XIL_INTERFACENAME SLOT_3_AXI, ADDR_WIDTH 12, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN embedded_system_processing_system7_0_0_FCLK_CLK0, DATA_WIDTH 32, FREQ_HZ 50000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 16, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_arburst : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARBURST";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_arcache : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARCACHE";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_arlen : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARLEN";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_arlock : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARLOCK";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARPROT";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_arqos : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARQOS";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_arsize : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARSIZE";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWADDR";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_awburst : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWBURST";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_awcache : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWCACHE";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_awlen : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWLEN";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_awlock : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWLOCK";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWPROT";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_awqos : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWQOS";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_awsize : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWSIZE";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BRESP";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RDATA";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RRESP";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WDATA";
  attribute X_INTERFACE_INFO of SLOT_3_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WSTRB";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARADDR";
  attribute X_INTERFACE_PARAMETER of SLOT_4_AXI_araddr : signal is "XIL_INTERFACENAME SLOT_4_AXI, ADDR_WIDTH 15, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN embedded_system_processing_system7_0_0_FCLK_CLK0, DATA_WIDTH 512, FREQ_HZ 50000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_arburst : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARBURST";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_arcache : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARCACHE";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_arlen : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARLEN";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_arlock : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARLOCK";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARPROT";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_arqos : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARQOS";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_arsize : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARSIZE";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWADDR";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_awburst : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWBURST";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_awcache : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWCACHE";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_awlen : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWLEN";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_awlock : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWLOCK";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWPROT";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_awqos : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWQOS";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_awsize : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWSIZE";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI BRESP";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI RDATA";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI RRESP";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI WDATA";
  attribute X_INTERFACE_INFO of SLOT_4_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 SLOT_4_AXI WSTRB";
begin
  Conn1_TDATA(31 downto 0) <= SLOT_1_AXIS_tdata(31 downto 0);
  Conn1_TLAST <= SLOT_1_AXIS_tlast;
  Conn1_TREADY <= SLOT_1_AXIS_tready;
  Conn1_TVALID <= SLOT_1_AXIS_tvalid;
  Conn2_ARADDR(11 downto 0) <= SLOT_2_AXI_araddr(11 downto 0);
  Conn2_ARBURST(1 downto 0) <= SLOT_2_AXI_arburst(1 downto 0);
  Conn2_ARCACHE(3 downto 0) <= SLOT_2_AXI_arcache(3 downto 0);
  Conn2_ARLEN(7 downto 0) <= SLOT_2_AXI_arlen(7 downto 0);
  Conn2_ARLOCK(0) <= SLOT_2_AXI_arlock(0);
  Conn2_ARPROT(2 downto 0) <= SLOT_2_AXI_arprot(2 downto 0);
  Conn2_ARQOS(3 downto 0) <= SLOT_2_AXI_arqos(3 downto 0);
  Conn2_ARREADY <= SLOT_2_AXI_arready;
  Conn2_ARSIZE(2 downto 0) <= SLOT_2_AXI_arsize(2 downto 0);
  Conn2_ARVALID <= SLOT_2_AXI_arvalid;
  Conn2_AWADDR(11 downto 0) <= SLOT_2_AXI_awaddr(11 downto 0);
  Conn2_AWBURST(1 downto 0) <= SLOT_2_AXI_awburst(1 downto 0);
  Conn2_AWCACHE(3 downto 0) <= SLOT_2_AXI_awcache(3 downto 0);
  Conn2_AWLEN(7 downto 0) <= SLOT_2_AXI_awlen(7 downto 0);
  Conn2_AWLOCK(0) <= SLOT_2_AXI_awlock(0);
  Conn2_AWPROT(2 downto 0) <= SLOT_2_AXI_awprot(2 downto 0);
  Conn2_AWQOS(3 downto 0) <= SLOT_2_AXI_awqos(3 downto 0);
  Conn2_AWREADY <= SLOT_2_AXI_awready;
  Conn2_AWSIZE(2 downto 0) <= SLOT_2_AXI_awsize(2 downto 0);
  Conn2_AWVALID <= SLOT_2_AXI_awvalid;
  Conn2_BREADY <= SLOT_2_AXI_bready;
  Conn2_BRESP(1 downto 0) <= SLOT_2_AXI_bresp(1 downto 0);
  Conn2_BVALID <= SLOT_2_AXI_bvalid;
  Conn2_RDATA(31 downto 0) <= SLOT_2_AXI_rdata(31 downto 0);
  Conn2_RLAST <= SLOT_2_AXI_rlast;
  Conn2_RREADY <= SLOT_2_AXI_rready;
  Conn2_RRESP(1 downto 0) <= SLOT_2_AXI_rresp(1 downto 0);
  Conn2_RVALID <= SLOT_2_AXI_rvalid;
  Conn2_WDATA(31 downto 0) <= SLOT_2_AXI_wdata(31 downto 0);
  Conn2_WLAST <= SLOT_2_AXI_wlast;
  Conn2_WREADY <= SLOT_2_AXI_wready;
  Conn2_WSTRB(3 downto 0) <= SLOT_2_AXI_wstrb(3 downto 0);
  Conn2_WVALID <= SLOT_2_AXI_wvalid;
  Conn3_ARADDR(11 downto 0) <= SLOT_3_AXI_araddr(11 downto 0);
  Conn3_ARBURST(1 downto 0) <= SLOT_3_AXI_arburst(1 downto 0);
  Conn3_ARCACHE(3 downto 0) <= SLOT_3_AXI_arcache(3 downto 0);
  Conn3_ARLEN(7 downto 0) <= SLOT_3_AXI_arlen(7 downto 0);
  Conn3_ARLOCK(0) <= SLOT_3_AXI_arlock(0);
  Conn3_ARPROT(2 downto 0) <= SLOT_3_AXI_arprot(2 downto 0);
  Conn3_ARQOS(3 downto 0) <= SLOT_3_AXI_arqos(3 downto 0);
  Conn3_ARREADY <= SLOT_3_AXI_arready;
  Conn3_ARSIZE(2 downto 0) <= SLOT_3_AXI_arsize(2 downto 0);
  Conn3_ARVALID <= SLOT_3_AXI_arvalid;
  Conn3_AWADDR(11 downto 0) <= SLOT_3_AXI_awaddr(11 downto 0);
  Conn3_AWBURST(1 downto 0) <= SLOT_3_AXI_awburst(1 downto 0);
  Conn3_AWCACHE(3 downto 0) <= SLOT_3_AXI_awcache(3 downto 0);
  Conn3_AWLEN(7 downto 0) <= SLOT_3_AXI_awlen(7 downto 0);
  Conn3_AWLOCK(0) <= SLOT_3_AXI_awlock(0);
  Conn3_AWPROT(2 downto 0) <= SLOT_3_AXI_awprot(2 downto 0);
  Conn3_AWQOS(3 downto 0) <= SLOT_3_AXI_awqos(3 downto 0);
  Conn3_AWREADY <= SLOT_3_AXI_awready;
  Conn3_AWSIZE(2 downto 0) <= SLOT_3_AXI_awsize(2 downto 0);
  Conn3_AWVALID <= SLOT_3_AXI_awvalid;
  Conn3_BREADY <= SLOT_3_AXI_bready;
  Conn3_BRESP(1 downto 0) <= SLOT_3_AXI_bresp(1 downto 0);
  Conn3_BVALID <= SLOT_3_AXI_bvalid;
  Conn3_RDATA(31 downto 0) <= SLOT_3_AXI_rdata(31 downto 0);
  Conn3_RLAST <= SLOT_3_AXI_rlast;
  Conn3_RREADY <= SLOT_3_AXI_rready;
  Conn3_RRESP(1 downto 0) <= SLOT_3_AXI_rresp(1 downto 0);
  Conn3_RVALID <= SLOT_3_AXI_rvalid;
  Conn3_WDATA(31 downto 0) <= SLOT_3_AXI_wdata(31 downto 0);
  Conn3_WLAST <= SLOT_3_AXI_wlast;
  Conn3_WREADY <= SLOT_3_AXI_wready;
  Conn3_WSTRB(3 downto 0) <= SLOT_3_AXI_wstrb(3 downto 0);
  Conn3_WVALID <= SLOT_3_AXI_wvalid;
  Conn4_ARADDR(14 downto 0) <= SLOT_4_AXI_araddr(14 downto 0);
  Conn4_ARBURST(1 downto 0) <= SLOT_4_AXI_arburst(1 downto 0);
  Conn4_ARCACHE(3 downto 0) <= SLOT_4_AXI_arcache(3 downto 0);
  Conn4_ARLEN(7 downto 0) <= SLOT_4_AXI_arlen(7 downto 0);
  Conn4_ARLOCK(0) <= SLOT_4_AXI_arlock(0);
  Conn4_ARPROT(2 downto 0) <= SLOT_4_AXI_arprot(2 downto 0);
  Conn4_ARQOS(3 downto 0) <= SLOT_4_AXI_arqos(3 downto 0);
  Conn4_ARREADY <= SLOT_4_AXI_arready;
  Conn4_ARSIZE(2 downto 0) <= SLOT_4_AXI_arsize(2 downto 0);
  Conn4_ARVALID <= SLOT_4_AXI_arvalid;
  Conn4_AWADDR(14 downto 0) <= SLOT_4_AXI_awaddr(14 downto 0);
  Conn4_AWBURST(1 downto 0) <= SLOT_4_AXI_awburst(1 downto 0);
  Conn4_AWCACHE(3 downto 0) <= SLOT_4_AXI_awcache(3 downto 0);
  Conn4_AWLEN(7 downto 0) <= SLOT_4_AXI_awlen(7 downto 0);
  Conn4_AWLOCK(0) <= SLOT_4_AXI_awlock(0);
  Conn4_AWPROT(2 downto 0) <= SLOT_4_AXI_awprot(2 downto 0);
  Conn4_AWQOS(3 downto 0) <= SLOT_4_AXI_awqos(3 downto 0);
  Conn4_AWREADY <= SLOT_4_AXI_awready;
  Conn4_AWSIZE(2 downto 0) <= SLOT_4_AXI_awsize(2 downto 0);
  Conn4_AWVALID <= SLOT_4_AXI_awvalid;
  Conn4_BREADY <= SLOT_4_AXI_bready;
  Conn4_BRESP(1 downto 0) <= SLOT_4_AXI_bresp(1 downto 0);
  Conn4_BVALID <= SLOT_4_AXI_bvalid;
  Conn4_RDATA(511 downto 0) <= SLOT_4_AXI_rdata(511 downto 0);
  Conn4_RLAST <= SLOT_4_AXI_rlast;
  Conn4_RREADY <= SLOT_4_AXI_rready;
  Conn4_RRESP(1 downto 0) <= SLOT_4_AXI_rresp(1 downto 0);
  Conn4_RVALID <= SLOT_4_AXI_rvalid;
  Conn4_WDATA(511 downto 0) <= SLOT_4_AXI_wdata(511 downto 0);
  Conn4_WLAST <= SLOT_4_AXI_wlast;
  Conn4_WREADY <= SLOT_4_AXI_wready;
  Conn4_WSTRB(63 downto 0) <= SLOT_4_AXI_wstrb(63 downto 0);
  Conn4_WVALID <= SLOT_4_AXI_wvalid;
  Conn_TDATA(31 downto 0) <= SLOT_0_AXIS_tdata(31 downto 0);
  Conn_TKEEP(3 downto 0) <= SLOT_0_AXIS_tkeep(3 downto 0);
  Conn_TLAST <= SLOT_0_AXIS_tlast;
  Conn_TREADY <= SLOT_0_AXIS_tready;
  Conn_TVALID <= SLOT_0_AXIS_tvalid;
  clk_1 <= clk;
  probe0_1(14 downto 0) <= probe0(14 downto 0);
  probe1_1(511 downto 0) <= probe1(511 downto 0);
  probe2_1(31 downto 0) <= probe2(31 downto 0);
  probe3_1(11 downto 0) <= probe3(11 downto 0);
  probe4_1(31 downto 0) <= probe4(31 downto 0);
  probe5_1(11 downto 0) <= probe5(11 downto 0);
  resetn_1 <= resetn;
g_inst: component bd_1412_g_inst_0
     port map (
      aclk => clk_1,
      aresetn => resetn_1,
      m_slot_0_axis_tdata(31 downto 0) => net_slot_0_axis_tdata(31 downto 0),
      m_slot_0_axis_tkeep(3 downto 0) => net_slot_0_axis_tkeep(3 downto 0),
      m_slot_0_axis_tlast => net_slot_0_axis_tlast,
      m_slot_0_axis_tready => net_slot_0_axis_tready,
      m_slot_0_axis_tvalid => net_slot_0_axis_tvalid,
      m_slot_1_axis_tdata(31 downto 0) => net_slot_1_axis_tdata(31 downto 0),
      m_slot_1_axis_tlast => net_slot_1_axis_tlast,
      m_slot_1_axis_tready => net_slot_1_axis_tready,
      m_slot_1_axis_tvalid => net_slot_1_axis_tvalid,
      m_slot_2_axi_ar_cnt(1 downto 0) => net_slot_2_axi_ar_cnt(1 downto 0),
      m_slot_2_axi_araddr(11 downto 0) => net_slot_2_axi_araddr(11 downto 0),
      m_slot_2_axi_arburst(1 downto 0) => net_slot_2_axi_arburst(1 downto 0),
      m_slot_2_axi_arcache(3 downto 0) => net_slot_2_axi_arcache(3 downto 0),
      m_slot_2_axi_arlen(7 downto 0) => net_slot_2_axi_arlen(7 downto 0),
      m_slot_2_axi_arlock(0) => net_slot_2_axi_arlock(0),
      m_slot_2_axi_arprot(2 downto 0) => net_slot_2_axi_arprot(2 downto 0),
      m_slot_2_axi_arqos(3 downto 0) => net_slot_2_axi_arqos(3 downto 0),
      m_slot_2_axi_arready => net_slot_2_axi_arready,
      m_slot_2_axi_arsize(2 downto 0) => net_slot_2_axi_arsize(2 downto 0),
      m_slot_2_axi_arvalid => net_slot_2_axi_arvalid,
      m_slot_2_axi_aw_cnt(1 downto 0) => net_slot_2_axi_aw_cnt(1 downto 0),
      m_slot_2_axi_awaddr(11 downto 0) => net_slot_2_axi_awaddr(11 downto 0),
      m_slot_2_axi_awburst(1 downto 0) => net_slot_2_axi_awburst(1 downto 0),
      m_slot_2_axi_awcache(3 downto 0) => net_slot_2_axi_awcache(3 downto 0),
      m_slot_2_axi_awlen(7 downto 0) => net_slot_2_axi_awlen(7 downto 0),
      m_slot_2_axi_awlock(0) => net_slot_2_axi_awlock(0),
      m_slot_2_axi_awprot(2 downto 0) => net_slot_2_axi_awprot(2 downto 0),
      m_slot_2_axi_awqos(3 downto 0) => net_slot_2_axi_awqos(3 downto 0),
      m_slot_2_axi_awready => net_slot_2_axi_awready,
      m_slot_2_axi_awsize(2 downto 0) => net_slot_2_axi_awsize(2 downto 0),
      m_slot_2_axi_awvalid => net_slot_2_axi_awvalid,
      m_slot_2_axi_b_cnt(1 downto 0) => net_slot_2_axi_b_cnt(1 downto 0),
      m_slot_2_axi_bready => net_slot_2_axi_bready,
      m_slot_2_axi_bresp(1 downto 0) => net_slot_2_axi_bresp(1 downto 0),
      m_slot_2_axi_bvalid => net_slot_2_axi_bvalid,
      m_slot_2_axi_r_cnt(1 downto 0) => net_slot_2_axi_r_cnt(1 downto 0),
      m_slot_2_axi_rdata(31 downto 0) => net_slot_2_axi_rdata(31 downto 0),
      m_slot_2_axi_rlast => net_slot_2_axi_rlast,
      m_slot_2_axi_rready => net_slot_2_axi_rready,
      m_slot_2_axi_rresp(1 downto 0) => net_slot_2_axi_rresp(1 downto 0),
      m_slot_2_axi_rvalid => net_slot_2_axi_rvalid,
      m_slot_2_axi_wdata(31 downto 0) => net_slot_2_axi_wdata(31 downto 0),
      m_slot_2_axi_wlast => net_slot_2_axi_wlast,
      m_slot_2_axi_wready => net_slot_2_axi_wready,
      m_slot_2_axi_wstrb(3 downto 0) => net_slot_2_axi_wstrb(3 downto 0),
      m_slot_2_axi_wvalid => net_slot_2_axi_wvalid,
      m_slot_3_axi_ar_cnt(1 downto 0) => net_slot_3_axi_ar_cnt(1 downto 0),
      m_slot_3_axi_araddr(11 downto 0) => net_slot_3_axi_araddr(11 downto 0),
      m_slot_3_axi_arburst(1 downto 0) => net_slot_3_axi_arburst(1 downto 0),
      m_slot_3_axi_arcache(3 downto 0) => net_slot_3_axi_arcache(3 downto 0),
      m_slot_3_axi_arlen(7 downto 0) => net_slot_3_axi_arlen(7 downto 0),
      m_slot_3_axi_arlock(0) => net_slot_3_axi_arlock(0),
      m_slot_3_axi_arprot(2 downto 0) => net_slot_3_axi_arprot(2 downto 0),
      m_slot_3_axi_arqos(3 downto 0) => net_slot_3_axi_arqos(3 downto 0),
      m_slot_3_axi_arready => net_slot_3_axi_arready,
      m_slot_3_axi_arsize(2 downto 0) => net_slot_3_axi_arsize(2 downto 0),
      m_slot_3_axi_arvalid => net_slot_3_axi_arvalid,
      m_slot_3_axi_aw_cnt(1 downto 0) => net_slot_3_axi_aw_cnt(1 downto 0),
      m_slot_3_axi_awaddr(11 downto 0) => net_slot_3_axi_awaddr(11 downto 0),
      m_slot_3_axi_awburst(1 downto 0) => net_slot_3_axi_awburst(1 downto 0),
      m_slot_3_axi_awcache(3 downto 0) => net_slot_3_axi_awcache(3 downto 0),
      m_slot_3_axi_awlen(7 downto 0) => net_slot_3_axi_awlen(7 downto 0),
      m_slot_3_axi_awlock(0) => net_slot_3_axi_awlock(0),
      m_slot_3_axi_awprot(2 downto 0) => net_slot_3_axi_awprot(2 downto 0),
      m_slot_3_axi_awqos(3 downto 0) => net_slot_3_axi_awqos(3 downto 0),
      m_slot_3_axi_awready => net_slot_3_axi_awready,
      m_slot_3_axi_awsize(2 downto 0) => net_slot_3_axi_awsize(2 downto 0),
      m_slot_3_axi_awvalid => net_slot_3_axi_awvalid,
      m_slot_3_axi_b_cnt(1 downto 0) => net_slot_3_axi_b_cnt(1 downto 0),
      m_slot_3_axi_bready => net_slot_3_axi_bready,
      m_slot_3_axi_bresp(1 downto 0) => net_slot_3_axi_bresp(1 downto 0),
      m_slot_3_axi_bvalid => net_slot_3_axi_bvalid,
      m_slot_3_axi_r_cnt(1 downto 0) => net_slot_3_axi_r_cnt(1 downto 0),
      m_slot_3_axi_rdata(31 downto 0) => net_slot_3_axi_rdata(31 downto 0),
      m_slot_3_axi_rlast => net_slot_3_axi_rlast,
      m_slot_3_axi_rready => net_slot_3_axi_rready,
      m_slot_3_axi_rresp(1 downto 0) => net_slot_3_axi_rresp(1 downto 0),
      m_slot_3_axi_rvalid => net_slot_3_axi_rvalid,
      m_slot_3_axi_wdata(31 downto 0) => net_slot_3_axi_wdata(31 downto 0),
      m_slot_3_axi_wlast => net_slot_3_axi_wlast,
      m_slot_3_axi_wready => net_slot_3_axi_wready,
      m_slot_3_axi_wstrb(3 downto 0) => net_slot_3_axi_wstrb(3 downto 0),
      m_slot_3_axi_wvalid => net_slot_3_axi_wvalid,
      m_slot_4_axi_ar_cnt(1 downto 0) => net_slot_4_axi_ar_cnt(1 downto 0),
      m_slot_4_axi_araddr(14 downto 0) => net_slot_4_axi_araddr(14 downto 0),
      m_slot_4_axi_arburst(1 downto 0) => net_slot_4_axi_arburst(1 downto 0),
      m_slot_4_axi_arcache(3 downto 0) => net_slot_4_axi_arcache(3 downto 0),
      m_slot_4_axi_arlen(7 downto 0) => net_slot_4_axi_arlen(7 downto 0),
      m_slot_4_axi_arlock(0) => net_slot_4_axi_arlock(0),
      m_slot_4_axi_arprot(2 downto 0) => net_slot_4_axi_arprot(2 downto 0),
      m_slot_4_axi_arqos(3 downto 0) => net_slot_4_axi_arqos(3 downto 0),
      m_slot_4_axi_arready => net_slot_4_axi_arready,
      m_slot_4_axi_arsize(2 downto 0) => net_slot_4_axi_arsize(2 downto 0),
      m_slot_4_axi_arvalid => net_slot_4_axi_arvalid,
      m_slot_4_axi_aw_cnt(1 downto 0) => net_slot_4_axi_aw_cnt(1 downto 0),
      m_slot_4_axi_awaddr(14 downto 0) => net_slot_4_axi_awaddr(14 downto 0),
      m_slot_4_axi_awburst(1 downto 0) => net_slot_4_axi_awburst(1 downto 0),
      m_slot_4_axi_awcache(3 downto 0) => net_slot_4_axi_awcache(3 downto 0),
      m_slot_4_axi_awlen(7 downto 0) => net_slot_4_axi_awlen(7 downto 0),
      m_slot_4_axi_awlock(0) => net_slot_4_axi_awlock(0),
      m_slot_4_axi_awprot(2 downto 0) => net_slot_4_axi_awprot(2 downto 0),
      m_slot_4_axi_awqos(3 downto 0) => net_slot_4_axi_awqos(3 downto 0),
      m_slot_4_axi_awready => net_slot_4_axi_awready,
      m_slot_4_axi_awsize(2 downto 0) => net_slot_4_axi_awsize(2 downto 0),
      m_slot_4_axi_awvalid => net_slot_4_axi_awvalid,
      m_slot_4_axi_b_cnt(1 downto 0) => net_slot_4_axi_b_cnt(1 downto 0),
      m_slot_4_axi_bready => net_slot_4_axi_bready,
      m_slot_4_axi_bresp(1 downto 0) => net_slot_4_axi_bresp(1 downto 0),
      m_slot_4_axi_bvalid => net_slot_4_axi_bvalid,
      m_slot_4_axi_r_cnt(1 downto 0) => net_slot_4_axi_r_cnt(1 downto 0),
      m_slot_4_axi_rdata(511 downto 0) => net_slot_4_axi_rdata(511 downto 0),
      m_slot_4_axi_rlast => net_slot_4_axi_rlast,
      m_slot_4_axi_rready => net_slot_4_axi_rready,
      m_slot_4_axi_rresp(1 downto 0) => net_slot_4_axi_rresp(1 downto 0),
      m_slot_4_axi_rvalid => net_slot_4_axi_rvalid,
      m_slot_4_axi_wdata(511 downto 0) => net_slot_4_axi_wdata(511 downto 0),
      m_slot_4_axi_wlast => net_slot_4_axi_wlast,
      m_slot_4_axi_wready => net_slot_4_axi_wready,
      m_slot_4_axi_wstrb(63 downto 0) => net_slot_4_axi_wstrb(63 downto 0),
      m_slot_4_axi_wvalid => net_slot_4_axi_wvalid,
      slot_0_axis_tdata(31 downto 0) => Conn_TDATA(31 downto 0),
      slot_0_axis_tkeep(3 downto 0) => Conn_TKEEP(3 downto 0),
      slot_0_axis_tlast => Conn_TLAST,
      slot_0_axis_tready => Conn_TREADY,
      slot_0_axis_tvalid => Conn_TVALID,
      slot_1_axis_tdata(31 downto 0) => Conn1_TDATA(31 downto 0),
      slot_1_axis_tlast => Conn1_TLAST,
      slot_1_axis_tready => Conn1_TREADY,
      slot_1_axis_tvalid => Conn1_TVALID,
      slot_2_axi_araddr(11 downto 0) => Conn2_ARADDR(11 downto 0),
      slot_2_axi_arburst(1 downto 0) => Conn2_ARBURST(1 downto 0),
      slot_2_axi_arcache(3 downto 0) => Conn2_ARCACHE(3 downto 0),
      slot_2_axi_arlen(7 downto 0) => Conn2_ARLEN(7 downto 0),
      slot_2_axi_arlock(0) => Conn2_ARLOCK(0),
      slot_2_axi_arprot(2 downto 0) => Conn2_ARPROT(2 downto 0),
      slot_2_axi_arqos(3 downto 0) => Conn2_ARQOS(3 downto 0),
      slot_2_axi_arready => Conn2_ARREADY,
      slot_2_axi_arsize(2 downto 0) => Conn2_ARSIZE(2 downto 0),
      slot_2_axi_arvalid => Conn2_ARVALID,
      slot_2_axi_awaddr(11 downto 0) => Conn2_AWADDR(11 downto 0),
      slot_2_axi_awburst(1 downto 0) => Conn2_AWBURST(1 downto 0),
      slot_2_axi_awcache(3 downto 0) => Conn2_AWCACHE(3 downto 0),
      slot_2_axi_awlen(7 downto 0) => Conn2_AWLEN(7 downto 0),
      slot_2_axi_awlock(0) => Conn2_AWLOCK(0),
      slot_2_axi_awprot(2 downto 0) => Conn2_AWPROT(2 downto 0),
      slot_2_axi_awqos(3 downto 0) => Conn2_AWQOS(3 downto 0),
      slot_2_axi_awready => Conn2_AWREADY,
      slot_2_axi_awsize(2 downto 0) => Conn2_AWSIZE(2 downto 0),
      slot_2_axi_awvalid => Conn2_AWVALID,
      slot_2_axi_bready => Conn2_BREADY,
      slot_2_axi_bresp(1 downto 0) => Conn2_BRESP(1 downto 0),
      slot_2_axi_bvalid => Conn2_BVALID,
      slot_2_axi_rdata(31 downto 0) => Conn2_RDATA(31 downto 0),
      slot_2_axi_rlast => Conn2_RLAST,
      slot_2_axi_rready => Conn2_RREADY,
      slot_2_axi_rresp(1 downto 0) => Conn2_RRESP(1 downto 0),
      slot_2_axi_rvalid => Conn2_RVALID,
      slot_2_axi_wdata(31 downto 0) => Conn2_WDATA(31 downto 0),
      slot_2_axi_wlast => Conn2_WLAST,
      slot_2_axi_wready => Conn2_WREADY,
      slot_2_axi_wstrb(3 downto 0) => Conn2_WSTRB(3 downto 0),
      slot_2_axi_wvalid => Conn2_WVALID,
      slot_3_axi_araddr(11 downto 0) => Conn3_ARADDR(11 downto 0),
      slot_3_axi_arburst(1 downto 0) => Conn3_ARBURST(1 downto 0),
      slot_3_axi_arcache(3 downto 0) => Conn3_ARCACHE(3 downto 0),
      slot_3_axi_arlen(7 downto 0) => Conn3_ARLEN(7 downto 0),
      slot_3_axi_arlock(0) => Conn3_ARLOCK(0),
      slot_3_axi_arprot(2 downto 0) => Conn3_ARPROT(2 downto 0),
      slot_3_axi_arqos(3 downto 0) => Conn3_ARQOS(3 downto 0),
      slot_3_axi_arready => Conn3_ARREADY,
      slot_3_axi_arsize(2 downto 0) => Conn3_ARSIZE(2 downto 0),
      slot_3_axi_arvalid => Conn3_ARVALID,
      slot_3_axi_awaddr(11 downto 0) => Conn3_AWADDR(11 downto 0),
      slot_3_axi_awburst(1 downto 0) => Conn3_AWBURST(1 downto 0),
      slot_3_axi_awcache(3 downto 0) => Conn3_AWCACHE(3 downto 0),
      slot_3_axi_awlen(7 downto 0) => Conn3_AWLEN(7 downto 0),
      slot_3_axi_awlock(0) => Conn3_AWLOCK(0),
      slot_3_axi_awprot(2 downto 0) => Conn3_AWPROT(2 downto 0),
      slot_3_axi_awqos(3 downto 0) => Conn3_AWQOS(3 downto 0),
      slot_3_axi_awready => Conn3_AWREADY,
      slot_3_axi_awsize(2 downto 0) => Conn3_AWSIZE(2 downto 0),
      slot_3_axi_awvalid => Conn3_AWVALID,
      slot_3_axi_bready => Conn3_BREADY,
      slot_3_axi_bresp(1 downto 0) => Conn3_BRESP(1 downto 0),
      slot_3_axi_bvalid => Conn3_BVALID,
      slot_3_axi_rdata(31 downto 0) => Conn3_RDATA(31 downto 0),
      slot_3_axi_rlast => Conn3_RLAST,
      slot_3_axi_rready => Conn3_RREADY,
      slot_3_axi_rresp(1 downto 0) => Conn3_RRESP(1 downto 0),
      slot_3_axi_rvalid => Conn3_RVALID,
      slot_3_axi_wdata(31 downto 0) => Conn3_WDATA(31 downto 0),
      slot_3_axi_wlast => Conn3_WLAST,
      slot_3_axi_wready => Conn3_WREADY,
      slot_3_axi_wstrb(3 downto 0) => Conn3_WSTRB(3 downto 0),
      slot_3_axi_wvalid => Conn3_WVALID,
      slot_4_axi_araddr(14 downto 0) => Conn4_ARADDR(14 downto 0),
      slot_4_axi_arburst(1 downto 0) => Conn4_ARBURST(1 downto 0),
      slot_4_axi_arcache(3 downto 0) => Conn4_ARCACHE(3 downto 0),
      slot_4_axi_arlen(7 downto 0) => Conn4_ARLEN(7 downto 0),
      slot_4_axi_arlock(0) => Conn4_ARLOCK(0),
      slot_4_axi_arprot(2 downto 0) => Conn4_ARPROT(2 downto 0),
      slot_4_axi_arqos(3 downto 0) => Conn4_ARQOS(3 downto 0),
      slot_4_axi_arready => Conn4_ARREADY,
      slot_4_axi_arsize(2 downto 0) => Conn4_ARSIZE(2 downto 0),
      slot_4_axi_arvalid => Conn4_ARVALID,
      slot_4_axi_awaddr(14 downto 0) => Conn4_AWADDR(14 downto 0),
      slot_4_axi_awburst(1 downto 0) => Conn4_AWBURST(1 downto 0),
      slot_4_axi_awcache(3 downto 0) => Conn4_AWCACHE(3 downto 0),
      slot_4_axi_awlen(7 downto 0) => Conn4_AWLEN(7 downto 0),
      slot_4_axi_awlock(0) => Conn4_AWLOCK(0),
      slot_4_axi_awprot(2 downto 0) => Conn4_AWPROT(2 downto 0),
      slot_4_axi_awqos(3 downto 0) => Conn4_AWQOS(3 downto 0),
      slot_4_axi_awready => Conn4_AWREADY,
      slot_4_axi_awsize(2 downto 0) => Conn4_AWSIZE(2 downto 0),
      slot_4_axi_awvalid => Conn4_AWVALID,
      slot_4_axi_bready => Conn4_BREADY,
      slot_4_axi_bresp(1 downto 0) => Conn4_BRESP(1 downto 0),
      slot_4_axi_bvalid => Conn4_BVALID,
      slot_4_axi_rdata(511 downto 0) => Conn4_RDATA(511 downto 0),
      slot_4_axi_rlast => Conn4_RLAST,
      slot_4_axi_rready => Conn4_RREADY,
      slot_4_axi_rresp(1 downto 0) => Conn4_RRESP(1 downto 0),
      slot_4_axi_rvalid => Conn4_RVALID,
      slot_4_axi_wdata(511 downto 0) => Conn4_WDATA(511 downto 0),
      slot_4_axi_wlast => Conn4_WLAST,
      slot_4_axi_wready => Conn4_WREADY,
      slot_4_axi_wstrb(63 downto 0) => Conn4_WSTRB(63 downto 0),
      slot_4_axi_wvalid => Conn4_WVALID
    );
ila_lib: component bd_1412_ila_lib_0
     port map (
      clk => clk_1,
      probe0(14 downto 0) => probe0_1(14 downto 0),
      probe1(511 downto 0) => probe1_1(511 downto 0),
      probe10(0) => net_slot_0_axis_tlast,
      probe100(1 downto 0) => net_slot_4_axi_aw_ctrl(1 downto 0),
      probe101(2 downto 0) => net_slot_4_axi_w_ctrl(2 downto 0),
      probe102(1 downto 0) => net_slot_4_axi_b_ctrl(1 downto 0),
      probe103(1 downto 0) => net_slot_4_axi_ar_ctrl(1 downto 0),
      probe104(2 downto 0) => net_slot_4_axi_r_ctrl(2 downto 0),
      probe11(31 downto 0) => net_slot_1_axis_tdata(31 downto 0),
      probe12(0) => net_slot_1_axis_tvalid,
      probe13(0) => net_slot_1_axis_tready,
      probe14(0) => net_slot_1_axis_tlast,
      probe15(1 downto 0) => net_slot_2_axi_ar_cnt(1 downto 0),
      probe16(11 downto 0) => net_slot_2_axi_araddr(11 downto 0),
      probe17(1 downto 0) => net_slot_2_axi_arburst(1 downto 0),
      probe18(3 downto 0) => net_slot_2_axi_arcache(3 downto 0),
      probe19(7 downto 0) => net_slot_2_axi_arlen(7 downto 0),
      probe2(31 downto 0) => probe2_1(31 downto 0),
      probe20(0) => net_slot_2_axi_arlock(0),
      probe21(2 downto 0) => net_slot_2_axi_arprot(2 downto 0),
      probe22(3 downto 0) => net_slot_2_axi_arqos(3 downto 0),
      probe23(2 downto 0) => net_slot_2_axi_arsize(2 downto 0),
      probe24(1 downto 0) => net_slot_2_axi_aw_cnt(1 downto 0),
      probe25(11 downto 0) => net_slot_2_axi_awaddr(11 downto 0),
      probe26(1 downto 0) => net_slot_2_axi_awburst(1 downto 0),
      probe27(3 downto 0) => net_slot_2_axi_awcache(3 downto 0),
      probe28(7 downto 0) => net_slot_2_axi_awlen(7 downto 0),
      probe29(0) => net_slot_2_axi_awlock(0),
      probe3(11 downto 0) => probe3_1(11 downto 0),
      probe30(2 downto 0) => net_slot_2_axi_awprot(2 downto 0),
      probe31(3 downto 0) => net_slot_2_axi_awqos(3 downto 0),
      probe32(2 downto 0) => net_slot_2_axi_awsize(2 downto 0),
      probe33(1 downto 0) => net_slot_2_axi_b_cnt(1 downto 0),
      probe34(1 downto 0) => net_slot_2_axi_bresp(1 downto 0),
      probe35(1 downto 0) => net_slot_2_axi_r_cnt(1 downto 0),
      probe36(31 downto 0) => net_slot_2_axi_rdata(31 downto 0),
      probe37(1 downto 0) => net_slot_2_axi_rresp(1 downto 0),
      probe38(31 downto 0) => net_slot_2_axi_wdata(31 downto 0),
      probe39(3 downto 0) => net_slot_2_axi_wstrb(3 downto 0),
      probe4(31 downto 0) => probe4_1(31 downto 0),
      probe40(1 downto 0) => net_slot_2_axi_aw_ctrl(1 downto 0),
      probe41(2 downto 0) => net_slot_2_axi_w_ctrl(2 downto 0),
      probe42(1 downto 0) => net_slot_2_axi_b_ctrl(1 downto 0),
      probe43(1 downto 0) => net_slot_2_axi_ar_ctrl(1 downto 0),
      probe44(2 downto 0) => net_slot_2_axi_r_ctrl(2 downto 0),
      probe45(1 downto 0) => net_slot_3_axi_ar_cnt(1 downto 0),
      probe46(11 downto 0) => net_slot_3_axi_araddr(11 downto 0),
      probe47(1 downto 0) => net_slot_3_axi_arburst(1 downto 0),
      probe48(3 downto 0) => net_slot_3_axi_arcache(3 downto 0),
      probe49(7 downto 0) => net_slot_3_axi_arlen(7 downto 0),
      probe5(11 downto 0) => probe5_1(11 downto 0),
      probe50(0) => net_slot_3_axi_arlock(0),
      probe51(2 downto 0) => net_slot_3_axi_arprot(2 downto 0),
      probe52(3 downto 0) => net_slot_3_axi_arqos(3 downto 0),
      probe53(2 downto 0) => net_slot_3_axi_arsize(2 downto 0),
      probe54(1 downto 0) => net_slot_3_axi_aw_cnt(1 downto 0),
      probe55(11 downto 0) => net_slot_3_axi_awaddr(11 downto 0),
      probe56(1 downto 0) => net_slot_3_axi_awburst(1 downto 0),
      probe57(3 downto 0) => net_slot_3_axi_awcache(3 downto 0),
      probe58(7 downto 0) => net_slot_3_axi_awlen(7 downto 0),
      probe59(0) => net_slot_3_axi_awlock(0),
      probe6(31 downto 0) => net_slot_0_axis_tdata(31 downto 0),
      probe60(2 downto 0) => net_slot_3_axi_awprot(2 downto 0),
      probe61(3 downto 0) => net_slot_3_axi_awqos(3 downto 0),
      probe62(2 downto 0) => net_slot_3_axi_awsize(2 downto 0),
      probe63(1 downto 0) => net_slot_3_axi_b_cnt(1 downto 0),
      probe64(1 downto 0) => net_slot_3_axi_bresp(1 downto 0),
      probe65(1 downto 0) => net_slot_3_axi_r_cnt(1 downto 0),
      probe66(31 downto 0) => net_slot_3_axi_rdata(31 downto 0),
      probe67(1 downto 0) => net_slot_3_axi_rresp(1 downto 0),
      probe68(31 downto 0) => net_slot_3_axi_wdata(31 downto 0),
      probe69(3 downto 0) => net_slot_3_axi_wstrb(3 downto 0),
      probe7(3 downto 0) => net_slot_0_axis_tkeep(3 downto 0),
      probe70(1 downto 0) => net_slot_3_axi_aw_ctrl(1 downto 0),
      probe71(2 downto 0) => net_slot_3_axi_w_ctrl(2 downto 0),
      probe72(1 downto 0) => net_slot_3_axi_b_ctrl(1 downto 0),
      probe73(1 downto 0) => net_slot_3_axi_ar_ctrl(1 downto 0),
      probe74(2 downto 0) => net_slot_3_axi_r_ctrl(2 downto 0),
      probe75(1 downto 0) => net_slot_4_axi_ar_cnt(1 downto 0),
      probe76(14 downto 0) => net_slot_4_axi_araddr(14 downto 0),
      probe77(1 downto 0) => net_slot_4_axi_arburst(1 downto 0),
      probe78(3 downto 0) => net_slot_4_axi_arcache(3 downto 0),
      probe79(7 downto 0) => net_slot_4_axi_arlen(7 downto 0),
      probe8(0) => net_slot_0_axis_tvalid,
      probe80(0) => net_slot_4_axi_arlock(0),
      probe81(2 downto 0) => net_slot_4_axi_arprot(2 downto 0),
      probe82(3 downto 0) => net_slot_4_axi_arqos(3 downto 0),
      probe83(2 downto 0) => net_slot_4_axi_arsize(2 downto 0),
      probe84(1 downto 0) => net_slot_4_axi_aw_cnt(1 downto 0),
      probe85(14 downto 0) => net_slot_4_axi_awaddr(14 downto 0),
      probe86(1 downto 0) => net_slot_4_axi_awburst(1 downto 0),
      probe87(3 downto 0) => net_slot_4_axi_awcache(3 downto 0),
      probe88(7 downto 0) => net_slot_4_axi_awlen(7 downto 0),
      probe89(0) => net_slot_4_axi_awlock(0),
      probe9(0) => net_slot_0_axis_tready,
      probe90(2 downto 0) => net_slot_4_axi_awprot(2 downto 0),
      probe91(3 downto 0) => net_slot_4_axi_awqos(3 downto 0),
      probe92(2 downto 0) => net_slot_4_axi_awsize(2 downto 0),
      probe93(1 downto 0) => net_slot_4_axi_b_cnt(1 downto 0),
      probe94(1 downto 0) => net_slot_4_axi_bresp(1 downto 0),
      probe95(1 downto 0) => net_slot_4_axi_r_cnt(1 downto 0),
      probe96(511 downto 0) => net_slot_4_axi_rdata(511 downto 0),
      probe97(1 downto 0) => net_slot_4_axi_rresp(1 downto 0),
      probe98(511 downto 0) => net_slot_4_axi_wdata(511 downto 0),
      probe99(63 downto 0) => net_slot_4_axi_wstrb(63 downto 0)
    );
slot_2_ar: component bd_1412_slot_2_ar_0
     port map (
      In0(0) => net_slot_2_axi_arvalid,
      In1(0) => net_slot_2_axi_arready,
      dout(1 downto 0) => net_slot_2_axi_ar_ctrl(1 downto 0)
    );
slot_2_aw: component bd_1412_slot_2_aw_0
     port map (
      In0(0) => net_slot_2_axi_awvalid,
      In1(0) => net_slot_2_axi_awready,
      dout(1 downto 0) => net_slot_2_axi_aw_ctrl(1 downto 0)
    );
slot_2_b: component bd_1412_slot_2_b_0
     port map (
      In0(0) => net_slot_2_axi_bvalid,
      In1(0) => net_slot_2_axi_bready,
      dout(1 downto 0) => net_slot_2_axi_b_ctrl(1 downto 0)
    );
slot_2_r: component bd_1412_slot_2_r_0
     port map (
      In0(0) => net_slot_2_axi_rvalid,
      In1(0) => net_slot_2_axi_rready,
      In2(0) => net_slot_2_axi_rlast,
      dout(2 downto 0) => net_slot_2_axi_r_ctrl(2 downto 0)
    );
slot_2_w: component bd_1412_slot_2_w_0
     port map (
      In0(0) => net_slot_2_axi_wvalid,
      In1(0) => net_slot_2_axi_wready,
      In2(0) => net_slot_2_axi_wlast,
      dout(2 downto 0) => net_slot_2_axi_w_ctrl(2 downto 0)
    );
slot_3_ar: component bd_1412_slot_3_ar_0
     port map (
      In0(0) => net_slot_3_axi_arvalid,
      In1(0) => net_slot_3_axi_arready,
      dout(1 downto 0) => net_slot_3_axi_ar_ctrl(1 downto 0)
    );
slot_3_aw: component bd_1412_slot_3_aw_0
     port map (
      In0(0) => net_slot_3_axi_awvalid,
      In1(0) => net_slot_3_axi_awready,
      dout(1 downto 0) => net_slot_3_axi_aw_ctrl(1 downto 0)
    );
slot_3_b: component bd_1412_slot_3_b_0
     port map (
      In0(0) => net_slot_3_axi_bvalid,
      In1(0) => net_slot_3_axi_bready,
      dout(1 downto 0) => net_slot_3_axi_b_ctrl(1 downto 0)
    );
slot_3_r: component bd_1412_slot_3_r_0
     port map (
      In0(0) => net_slot_3_axi_rvalid,
      In1(0) => net_slot_3_axi_rready,
      In2(0) => net_slot_3_axi_rlast,
      dout(2 downto 0) => net_slot_3_axi_r_ctrl(2 downto 0)
    );
slot_3_w: component bd_1412_slot_3_w_0
     port map (
      In0(0) => net_slot_3_axi_wvalid,
      In1(0) => net_slot_3_axi_wready,
      In2(0) => net_slot_3_axi_wlast,
      dout(2 downto 0) => net_slot_3_axi_w_ctrl(2 downto 0)
    );
slot_4_ar: component bd_1412_slot_4_ar_0
     port map (
      In0(0) => net_slot_4_axi_arvalid,
      In1(0) => net_slot_4_axi_arready,
      dout(1 downto 0) => net_slot_4_axi_ar_ctrl(1 downto 0)
    );
slot_4_aw: component bd_1412_slot_4_aw_0
     port map (
      In0(0) => net_slot_4_axi_awvalid,
      In1(0) => net_slot_4_axi_awready,
      dout(1 downto 0) => net_slot_4_axi_aw_ctrl(1 downto 0)
    );
slot_4_b: component bd_1412_slot_4_b_0
     port map (
      In0(0) => net_slot_4_axi_bvalid,
      In1(0) => net_slot_4_axi_bready,
      dout(1 downto 0) => net_slot_4_axi_b_ctrl(1 downto 0)
    );
slot_4_r: component bd_1412_slot_4_r_0
     port map (
      In0(0) => net_slot_4_axi_rvalid,
      In1(0) => net_slot_4_axi_rready,
      In2(0) => net_slot_4_axi_rlast,
      dout(2 downto 0) => net_slot_4_axi_r_ctrl(2 downto 0)
    );
slot_4_w: component bd_1412_slot_4_w_0
     port map (
      In0(0) => net_slot_4_axi_wvalid,
      In1(0) => net_slot_4_axi_wready,
      In2(0) => net_slot_4_axi_wlast,
      dout(2 downto 0) => net_slot_4_axi_w_ctrl(2 downto 0)
    );
end STRUCTURE;
