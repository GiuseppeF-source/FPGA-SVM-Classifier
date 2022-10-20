--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Command: generate_target bd_1412_wrapper.bd
--Design : bd_1412_wrapper
--Purpose: IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_1412_wrapper is
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
    probe6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    resetn : in STD_LOGIC
  );
end bd_1412_wrapper;

architecture STRUCTURE of bd_1412_wrapper is
  component bd_1412 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 511 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    resetn : in STD_LOGIC;
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
    SLOT_4_AXI_wvalid : in STD_LOGIC
  );
  end component bd_1412;
begin
bd_1412_i: component bd_1412
     port map (
      SLOT_0_AXIS_tdata(31 downto 0) => SLOT_0_AXIS_tdata(31 downto 0),
      SLOT_0_AXIS_tkeep(3 downto 0) => SLOT_0_AXIS_tkeep(3 downto 0),
      SLOT_0_AXIS_tlast => SLOT_0_AXIS_tlast,
      SLOT_0_AXIS_tready => SLOT_0_AXIS_tready,
      SLOT_0_AXIS_tvalid => SLOT_0_AXIS_tvalid,
      SLOT_1_AXIS_tdata(31 downto 0) => SLOT_1_AXIS_tdata(31 downto 0),
      SLOT_1_AXIS_tlast => SLOT_1_AXIS_tlast,
      SLOT_1_AXIS_tready => SLOT_1_AXIS_tready,
      SLOT_1_AXIS_tvalid => SLOT_1_AXIS_tvalid,
      SLOT_2_AXI_araddr(11 downto 0) => SLOT_2_AXI_araddr(11 downto 0),
      SLOT_2_AXI_arburst(1 downto 0) => SLOT_2_AXI_arburst(1 downto 0),
      SLOT_2_AXI_arcache(3 downto 0) => SLOT_2_AXI_arcache(3 downto 0),
      SLOT_2_AXI_arlen(7 downto 0) => SLOT_2_AXI_arlen(7 downto 0),
      SLOT_2_AXI_arlock(0) => SLOT_2_AXI_arlock(0),
      SLOT_2_AXI_arprot(2 downto 0) => SLOT_2_AXI_arprot(2 downto 0),
      SLOT_2_AXI_arqos(3 downto 0) => SLOT_2_AXI_arqos(3 downto 0),
      SLOT_2_AXI_arready => SLOT_2_AXI_arready,
      SLOT_2_AXI_arsize(2 downto 0) => SLOT_2_AXI_arsize(2 downto 0),
      SLOT_2_AXI_arvalid => SLOT_2_AXI_arvalid,
      SLOT_2_AXI_awaddr(11 downto 0) => SLOT_2_AXI_awaddr(11 downto 0),
      SLOT_2_AXI_awburst(1 downto 0) => SLOT_2_AXI_awburst(1 downto 0),
      SLOT_2_AXI_awcache(3 downto 0) => SLOT_2_AXI_awcache(3 downto 0),
      SLOT_2_AXI_awlen(7 downto 0) => SLOT_2_AXI_awlen(7 downto 0),
      SLOT_2_AXI_awlock(0) => SLOT_2_AXI_awlock(0),
      SLOT_2_AXI_awprot(2 downto 0) => SLOT_2_AXI_awprot(2 downto 0),
      SLOT_2_AXI_awqos(3 downto 0) => SLOT_2_AXI_awqos(3 downto 0),
      SLOT_2_AXI_awready => SLOT_2_AXI_awready,
      SLOT_2_AXI_awsize(2 downto 0) => SLOT_2_AXI_awsize(2 downto 0),
      SLOT_2_AXI_awvalid => SLOT_2_AXI_awvalid,
      SLOT_2_AXI_bready => SLOT_2_AXI_bready,
      SLOT_2_AXI_bresp(1 downto 0) => SLOT_2_AXI_bresp(1 downto 0),
      SLOT_2_AXI_bvalid => SLOT_2_AXI_bvalid,
      SLOT_2_AXI_rdata(31 downto 0) => SLOT_2_AXI_rdata(31 downto 0),
      SLOT_2_AXI_rlast => SLOT_2_AXI_rlast,
      SLOT_2_AXI_rready => SLOT_2_AXI_rready,
      SLOT_2_AXI_rresp(1 downto 0) => SLOT_2_AXI_rresp(1 downto 0),
      SLOT_2_AXI_rvalid => SLOT_2_AXI_rvalid,
      SLOT_2_AXI_wdata(31 downto 0) => SLOT_2_AXI_wdata(31 downto 0),
      SLOT_2_AXI_wlast => SLOT_2_AXI_wlast,
      SLOT_2_AXI_wready => SLOT_2_AXI_wready,
      SLOT_2_AXI_wstrb(3 downto 0) => SLOT_2_AXI_wstrb(3 downto 0),
      SLOT_2_AXI_wvalid => SLOT_2_AXI_wvalid,
      SLOT_3_AXI_araddr(11 downto 0) => SLOT_3_AXI_araddr(11 downto 0),
      SLOT_3_AXI_arburst(1 downto 0) => SLOT_3_AXI_arburst(1 downto 0),
      SLOT_3_AXI_arcache(3 downto 0) => SLOT_3_AXI_arcache(3 downto 0),
      SLOT_3_AXI_arlen(7 downto 0) => SLOT_3_AXI_arlen(7 downto 0),
      SLOT_3_AXI_arlock(0) => SLOT_3_AXI_arlock(0),
      SLOT_3_AXI_arprot(2 downto 0) => SLOT_3_AXI_arprot(2 downto 0),
      SLOT_3_AXI_arqos(3 downto 0) => SLOT_3_AXI_arqos(3 downto 0),
      SLOT_3_AXI_arready => SLOT_3_AXI_arready,
      SLOT_3_AXI_arsize(2 downto 0) => SLOT_3_AXI_arsize(2 downto 0),
      SLOT_3_AXI_arvalid => SLOT_3_AXI_arvalid,
      SLOT_3_AXI_awaddr(11 downto 0) => SLOT_3_AXI_awaddr(11 downto 0),
      SLOT_3_AXI_awburst(1 downto 0) => SLOT_3_AXI_awburst(1 downto 0),
      SLOT_3_AXI_awcache(3 downto 0) => SLOT_3_AXI_awcache(3 downto 0),
      SLOT_3_AXI_awlen(7 downto 0) => SLOT_3_AXI_awlen(7 downto 0),
      SLOT_3_AXI_awlock(0) => SLOT_3_AXI_awlock(0),
      SLOT_3_AXI_awprot(2 downto 0) => SLOT_3_AXI_awprot(2 downto 0),
      SLOT_3_AXI_awqos(3 downto 0) => SLOT_3_AXI_awqos(3 downto 0),
      SLOT_3_AXI_awready => SLOT_3_AXI_awready,
      SLOT_3_AXI_awsize(2 downto 0) => SLOT_3_AXI_awsize(2 downto 0),
      SLOT_3_AXI_awvalid => SLOT_3_AXI_awvalid,
      SLOT_3_AXI_bready => SLOT_3_AXI_bready,
      SLOT_3_AXI_bresp(1 downto 0) => SLOT_3_AXI_bresp(1 downto 0),
      SLOT_3_AXI_bvalid => SLOT_3_AXI_bvalid,
      SLOT_3_AXI_rdata(31 downto 0) => SLOT_3_AXI_rdata(31 downto 0),
      SLOT_3_AXI_rlast => SLOT_3_AXI_rlast,
      SLOT_3_AXI_rready => SLOT_3_AXI_rready,
      SLOT_3_AXI_rresp(1 downto 0) => SLOT_3_AXI_rresp(1 downto 0),
      SLOT_3_AXI_rvalid => SLOT_3_AXI_rvalid,
      SLOT_3_AXI_wdata(31 downto 0) => SLOT_3_AXI_wdata(31 downto 0),
      SLOT_3_AXI_wlast => SLOT_3_AXI_wlast,
      SLOT_3_AXI_wready => SLOT_3_AXI_wready,
      SLOT_3_AXI_wstrb(3 downto 0) => SLOT_3_AXI_wstrb(3 downto 0),
      SLOT_3_AXI_wvalid => SLOT_3_AXI_wvalid,
      SLOT_4_AXI_araddr(14 downto 0) => SLOT_4_AXI_araddr(14 downto 0),
      SLOT_4_AXI_arburst(1 downto 0) => SLOT_4_AXI_arburst(1 downto 0),
      SLOT_4_AXI_arcache(3 downto 0) => SLOT_4_AXI_arcache(3 downto 0),
      SLOT_4_AXI_arlen(7 downto 0) => SLOT_4_AXI_arlen(7 downto 0),
      SLOT_4_AXI_arlock(0) => SLOT_4_AXI_arlock(0),
      SLOT_4_AXI_arprot(2 downto 0) => SLOT_4_AXI_arprot(2 downto 0),
      SLOT_4_AXI_arqos(3 downto 0) => SLOT_4_AXI_arqos(3 downto 0),
      SLOT_4_AXI_arready => SLOT_4_AXI_arready,
      SLOT_4_AXI_arsize(2 downto 0) => SLOT_4_AXI_arsize(2 downto 0),
      SLOT_4_AXI_arvalid => SLOT_4_AXI_arvalid,
      SLOT_4_AXI_awaddr(14 downto 0) => SLOT_4_AXI_awaddr(14 downto 0),
      SLOT_4_AXI_awburst(1 downto 0) => SLOT_4_AXI_awburst(1 downto 0),
      SLOT_4_AXI_awcache(3 downto 0) => SLOT_4_AXI_awcache(3 downto 0),
      SLOT_4_AXI_awlen(7 downto 0) => SLOT_4_AXI_awlen(7 downto 0),
      SLOT_4_AXI_awlock(0) => SLOT_4_AXI_awlock(0),
      SLOT_4_AXI_awprot(2 downto 0) => SLOT_4_AXI_awprot(2 downto 0),
      SLOT_4_AXI_awqos(3 downto 0) => SLOT_4_AXI_awqos(3 downto 0),
      SLOT_4_AXI_awready => SLOT_4_AXI_awready,
      SLOT_4_AXI_awsize(2 downto 0) => SLOT_4_AXI_awsize(2 downto 0),
      SLOT_4_AXI_awvalid => SLOT_4_AXI_awvalid,
      SLOT_4_AXI_bready => SLOT_4_AXI_bready,
      SLOT_4_AXI_bresp(1 downto 0) => SLOT_4_AXI_bresp(1 downto 0),
      SLOT_4_AXI_bvalid => SLOT_4_AXI_bvalid,
      SLOT_4_AXI_rdata(511 downto 0) => SLOT_4_AXI_rdata(511 downto 0),
      SLOT_4_AXI_rlast => SLOT_4_AXI_rlast,
      SLOT_4_AXI_rready => SLOT_4_AXI_rready,
      SLOT_4_AXI_rresp(1 downto 0) => SLOT_4_AXI_rresp(1 downto 0),
      SLOT_4_AXI_rvalid => SLOT_4_AXI_rvalid,
      SLOT_4_AXI_wdata(511 downto 0) => SLOT_4_AXI_wdata(511 downto 0),
      SLOT_4_AXI_wlast => SLOT_4_AXI_wlast,
      SLOT_4_AXI_wready => SLOT_4_AXI_wready,
      SLOT_4_AXI_wstrb(63 downto 0) => SLOT_4_AXI_wstrb(63 downto 0),
      SLOT_4_AXI_wvalid => SLOT_4_AXI_wvalid,
      clk => clk,
      probe0(14 downto 0) => probe0(14 downto 0),
      probe1(511 downto 0) => probe1(511 downto 0),
      probe2(31 downto 0) => probe2(31 downto 0),
      probe3(11 downto 0) => probe3(11 downto 0),
      probe4(31 downto 0) => probe4(31 downto 0),
      probe5(11 downto 0) => probe5(11 downto 0),
      probe6(0) => probe6(0),
      probe7(0) => probe7(0),
      resetn => resetn
    );
end STRUCTURE;
