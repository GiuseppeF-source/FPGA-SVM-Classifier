-- (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:system_ila:1.1
-- IP Revision: 4

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY embedded_system_system_ila_0_0 IS
  PORT (
    clk : IN STD_LOGIC;
    probe0 : IN STD_LOGIC_VECTOR(14 DOWNTO 0);
    probe1 : IN STD_LOGIC_VECTOR(511 DOWNTO 0);
    probe2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    probe3 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    probe4 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    probe5 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    probe6 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe7 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    SLOT_0_AXIS_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SLOT_0_AXIS_tkeep : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    SLOT_0_AXIS_tlast : IN STD_LOGIC;
    SLOT_0_AXIS_tvalid : IN STD_LOGIC;
    SLOT_0_AXIS_tready : IN STD_LOGIC;
    SLOT_1_AXIS_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SLOT_1_AXIS_tlast : IN STD_LOGIC;
    SLOT_1_AXIS_tvalid : IN STD_LOGIC;
    SLOT_1_AXIS_tready : IN STD_LOGIC;
    SLOT_2_AXI_awaddr : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    SLOT_2_AXI_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    SLOT_2_AXI_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    SLOT_2_AXI_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SLOT_2_AXI_awlock : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    SLOT_2_AXI_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    SLOT_2_AXI_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    SLOT_2_AXI_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    SLOT_2_AXI_awvalid : IN STD_LOGIC;
    SLOT_2_AXI_awready : IN STD_LOGIC;
    SLOT_2_AXI_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SLOT_2_AXI_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    SLOT_2_AXI_wlast : IN STD_LOGIC;
    SLOT_2_AXI_wvalid : IN STD_LOGIC;
    SLOT_2_AXI_wready : IN STD_LOGIC;
    SLOT_2_AXI_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SLOT_2_AXI_bvalid : IN STD_LOGIC;
    SLOT_2_AXI_bready : IN STD_LOGIC;
    SLOT_2_AXI_araddr : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    SLOT_2_AXI_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    SLOT_2_AXI_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    SLOT_2_AXI_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SLOT_2_AXI_arlock : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    SLOT_2_AXI_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    SLOT_2_AXI_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    SLOT_2_AXI_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    SLOT_2_AXI_arvalid : IN STD_LOGIC;
    SLOT_2_AXI_arready : IN STD_LOGIC;
    SLOT_2_AXI_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SLOT_2_AXI_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SLOT_2_AXI_rlast : IN STD_LOGIC;
    SLOT_2_AXI_rvalid : IN STD_LOGIC;
    SLOT_2_AXI_rready : IN STD_LOGIC;
    SLOT_3_AXI_awaddr : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    SLOT_3_AXI_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    SLOT_3_AXI_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    SLOT_3_AXI_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SLOT_3_AXI_awlock : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    SLOT_3_AXI_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    SLOT_3_AXI_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    SLOT_3_AXI_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    SLOT_3_AXI_awvalid : IN STD_LOGIC;
    SLOT_3_AXI_awready : IN STD_LOGIC;
    SLOT_3_AXI_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SLOT_3_AXI_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    SLOT_3_AXI_wlast : IN STD_LOGIC;
    SLOT_3_AXI_wvalid : IN STD_LOGIC;
    SLOT_3_AXI_wready : IN STD_LOGIC;
    SLOT_3_AXI_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SLOT_3_AXI_bvalid : IN STD_LOGIC;
    SLOT_3_AXI_bready : IN STD_LOGIC;
    SLOT_3_AXI_araddr : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    SLOT_3_AXI_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    SLOT_3_AXI_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    SLOT_3_AXI_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SLOT_3_AXI_arlock : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    SLOT_3_AXI_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    SLOT_3_AXI_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    SLOT_3_AXI_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    SLOT_3_AXI_arvalid : IN STD_LOGIC;
    SLOT_3_AXI_arready : IN STD_LOGIC;
    SLOT_3_AXI_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    SLOT_3_AXI_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SLOT_3_AXI_rlast : IN STD_LOGIC;
    SLOT_3_AXI_rvalid : IN STD_LOGIC;
    SLOT_3_AXI_rready : IN STD_LOGIC;
    SLOT_4_AXI_awaddr : IN STD_LOGIC_VECTOR(14 DOWNTO 0);
    SLOT_4_AXI_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    SLOT_4_AXI_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    SLOT_4_AXI_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SLOT_4_AXI_awlock : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    SLOT_4_AXI_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    SLOT_4_AXI_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    SLOT_4_AXI_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    SLOT_4_AXI_awvalid : IN STD_LOGIC;
    SLOT_4_AXI_awready : IN STD_LOGIC;
    SLOT_4_AXI_wdata : IN STD_LOGIC_VECTOR(511 DOWNTO 0);
    SLOT_4_AXI_wstrb : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    SLOT_4_AXI_wlast : IN STD_LOGIC;
    SLOT_4_AXI_wvalid : IN STD_LOGIC;
    SLOT_4_AXI_wready : IN STD_LOGIC;
    SLOT_4_AXI_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SLOT_4_AXI_bvalid : IN STD_LOGIC;
    SLOT_4_AXI_bready : IN STD_LOGIC;
    SLOT_4_AXI_araddr : IN STD_LOGIC_VECTOR(14 DOWNTO 0);
    SLOT_4_AXI_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    SLOT_4_AXI_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    SLOT_4_AXI_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SLOT_4_AXI_arlock : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    SLOT_4_AXI_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    SLOT_4_AXI_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    SLOT_4_AXI_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    SLOT_4_AXI_arvalid : IN STD_LOGIC;
    SLOT_4_AXI_arready : IN STD_LOGIC;
    SLOT_4_AXI_rdata : IN STD_LOGIC_VECTOR(511 DOWNTO 0);
    SLOT_4_AXI_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SLOT_4_AXI_rlast : IN STD_LOGIC;
    SLOT_4_AXI_rvalid : IN STD_LOGIC;
    SLOT_4_AXI_rready : IN STD_LOGIC;
    resetn : IN STD_LOGIC
  );
END embedded_system_system_ila_0_0;

ARCHITECTURE embedded_system_system_ila_0_0_arch OF embedded_system_system_ila_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF embedded_system_system_ila_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT bd_1412 IS
    PORT (
      clk : IN STD_LOGIC;
      probe0 : IN STD_LOGIC_VECTOR(14 DOWNTO 0);
      probe1 : IN STD_LOGIC_VECTOR(511 DOWNTO 0);
      probe2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      probe3 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      probe4 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      probe5 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      probe6 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      probe7 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      SLOT_0_AXIS_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SLOT_0_AXIS_tkeep : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      SLOT_0_AXIS_tlast : IN STD_LOGIC;
      SLOT_0_AXIS_tvalid : IN STD_LOGIC;
      SLOT_0_AXIS_tready : IN STD_LOGIC;
      SLOT_1_AXIS_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SLOT_1_AXIS_tlast : IN STD_LOGIC;
      SLOT_1_AXIS_tvalid : IN STD_LOGIC;
      SLOT_1_AXIS_tready : IN STD_LOGIC;
      SLOT_2_AXI_awaddr : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      SLOT_2_AXI_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      SLOT_2_AXI_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      SLOT_2_AXI_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SLOT_2_AXI_awlock : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      SLOT_2_AXI_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      SLOT_2_AXI_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      SLOT_2_AXI_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      SLOT_2_AXI_awvalid : IN STD_LOGIC;
      SLOT_2_AXI_awready : IN STD_LOGIC;
      SLOT_2_AXI_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SLOT_2_AXI_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      SLOT_2_AXI_wlast : IN STD_LOGIC;
      SLOT_2_AXI_wvalid : IN STD_LOGIC;
      SLOT_2_AXI_wready : IN STD_LOGIC;
      SLOT_2_AXI_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SLOT_2_AXI_bvalid : IN STD_LOGIC;
      SLOT_2_AXI_bready : IN STD_LOGIC;
      SLOT_2_AXI_araddr : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      SLOT_2_AXI_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      SLOT_2_AXI_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      SLOT_2_AXI_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SLOT_2_AXI_arlock : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      SLOT_2_AXI_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      SLOT_2_AXI_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      SLOT_2_AXI_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      SLOT_2_AXI_arvalid : IN STD_LOGIC;
      SLOT_2_AXI_arready : IN STD_LOGIC;
      SLOT_2_AXI_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SLOT_2_AXI_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SLOT_2_AXI_rlast : IN STD_LOGIC;
      SLOT_2_AXI_rvalid : IN STD_LOGIC;
      SLOT_2_AXI_rready : IN STD_LOGIC;
      SLOT_3_AXI_awaddr : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      SLOT_3_AXI_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      SLOT_3_AXI_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      SLOT_3_AXI_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SLOT_3_AXI_awlock : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      SLOT_3_AXI_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      SLOT_3_AXI_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      SLOT_3_AXI_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      SLOT_3_AXI_awvalid : IN STD_LOGIC;
      SLOT_3_AXI_awready : IN STD_LOGIC;
      SLOT_3_AXI_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SLOT_3_AXI_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      SLOT_3_AXI_wlast : IN STD_LOGIC;
      SLOT_3_AXI_wvalid : IN STD_LOGIC;
      SLOT_3_AXI_wready : IN STD_LOGIC;
      SLOT_3_AXI_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SLOT_3_AXI_bvalid : IN STD_LOGIC;
      SLOT_3_AXI_bready : IN STD_LOGIC;
      SLOT_3_AXI_araddr : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      SLOT_3_AXI_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      SLOT_3_AXI_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      SLOT_3_AXI_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SLOT_3_AXI_arlock : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      SLOT_3_AXI_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      SLOT_3_AXI_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      SLOT_3_AXI_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      SLOT_3_AXI_arvalid : IN STD_LOGIC;
      SLOT_3_AXI_arready : IN STD_LOGIC;
      SLOT_3_AXI_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      SLOT_3_AXI_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SLOT_3_AXI_rlast : IN STD_LOGIC;
      SLOT_3_AXI_rvalid : IN STD_LOGIC;
      SLOT_3_AXI_rready : IN STD_LOGIC;
      SLOT_4_AXI_awaddr : IN STD_LOGIC_VECTOR(14 DOWNTO 0);
      SLOT_4_AXI_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      SLOT_4_AXI_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      SLOT_4_AXI_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SLOT_4_AXI_awlock : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      SLOT_4_AXI_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      SLOT_4_AXI_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      SLOT_4_AXI_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      SLOT_4_AXI_awvalid : IN STD_LOGIC;
      SLOT_4_AXI_awready : IN STD_LOGIC;
      SLOT_4_AXI_wdata : IN STD_LOGIC_VECTOR(511 DOWNTO 0);
      SLOT_4_AXI_wstrb : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      SLOT_4_AXI_wlast : IN STD_LOGIC;
      SLOT_4_AXI_wvalid : IN STD_LOGIC;
      SLOT_4_AXI_wready : IN STD_LOGIC;
      SLOT_4_AXI_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SLOT_4_AXI_bvalid : IN STD_LOGIC;
      SLOT_4_AXI_bready : IN STD_LOGIC;
      SLOT_4_AXI_araddr : IN STD_LOGIC_VECTOR(14 DOWNTO 0);
      SLOT_4_AXI_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      SLOT_4_AXI_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      SLOT_4_AXI_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SLOT_4_AXI_arlock : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      SLOT_4_AXI_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      SLOT_4_AXI_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      SLOT_4_AXI_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      SLOT_4_AXI_arvalid : IN STD_LOGIC;
      SLOT_4_AXI_arready : IN STD_LOGIC;
      SLOT_4_AXI_rdata : IN STD_LOGIC_VECTOR(511 DOWNTO 0);
      SLOT_4_AXI_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SLOT_4_AXI_rlast : IN STD_LOGIC;
      SLOT_4_AXI_rvalid : IN STD_LOGIC;
      SLOT_4_AXI_rready : IN STD_LOGIC;
      resetn : IN STD_LOGIC
    );
  END COMPONENT bd_1412;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF resetn: SIGNAL IS "XIL_INTERFACENAME RST.resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF resetn: SIGNAL IS "xilinx.com:signal:reset:1.0 RST.resetn RST";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_4_AXI_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_4_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_4_AXI_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_4_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_4_AXI_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_4_AXI RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_4_AXI_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_4_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_4_AXI_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_4_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_4_AXI_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_4_AXI_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_4_AXI_arqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_4_AXI_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_4_AXI_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_4_AXI_arlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_4_AXI_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_4_AXI_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_4_AXI_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_4_AXI_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_4_AXI_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_4_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_4_AXI_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_4_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_4_AXI_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_4_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_4_AXI_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_4_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_4_AXI_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_4_AXI WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_4_AXI_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_4_AXI WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_4_AXI_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_4_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_4_AXI_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_4_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_4_AXI_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_4_AXI_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_4_AXI_awqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_4_AXI_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_4_AXI_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_4_AXI_awlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_4_AXI_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_4_AXI_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_4_AXI_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWLEN";
  ATTRIBUTE X_INTERFACE_PARAMETER OF SLOT_4_AXI_awaddr: SIGNAL IS "XIL_INTERFACENAME SLOT_4_AXI, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 15, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN embedded_system_processing_system7_0_0_FCLK_CLK0, NUM_REA" & 
"D_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_4_AXI_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_arqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_arlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_awqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_awlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWLEN";
  ATTRIBUTE X_INTERFACE_PARAMETER OF SLOT_3_AXI_awaddr: SIGNAL IS "XIL_INTERFACENAME SLOT_3_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 12, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.000, CLK_DOMAIN embedded_system_processing_system7_0_0_FCLK_CLK0, NUM_REA" & 
"D_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_3_AXI_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_arqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_arlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_awqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_awlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWLEN";
  ATTRIBUTE X_INTERFACE_PARAMETER OF SLOT_2_AXI_awaddr: SIGNAL IS "XIL_INTERFACENAME SLOT_2_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 12, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.000, CLK_DOMAIN embedded_system_processing_system7_0_0_FCLK_CLK0, NUM_REA" & 
"D_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_2_AXI_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXIS_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXIS_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXIS_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TLAST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF SLOT_1_AXIS_tdata: SIGNAL IS "XIL_INTERFACENAME SLOT_1_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN embedded_system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_1_AXIS_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXIS_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXIS_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXIS_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXIS_tkeep: SIGNAL IS "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TKEEP";
  ATTRIBUTE X_INTERFACE_PARAMETER OF SLOT_0_AXIS_tdata: SIGNAL IS "XIL_INTERFACENAME SLOT_0_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN embedded_system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF SLOT_0_AXIS_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TDATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME CLK.clk, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN embedded_system_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_BUSIF SLOT_0_AXIS:SLOT_1_AXIS:SLOT_2_AXI:SLOT_3_AXI:SLOT_4_AXI, ASSOCIATED_RESET resetn, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.clk CLK";
BEGIN
  U0 : bd_1412
    PORT MAP (
      clk => clk,
      probe0 => probe0,
      probe1 => probe1,
      probe2 => probe2,
      probe3 => probe3,
      probe4 => probe4,
      probe5 => probe5,
      probe6 => probe6,
      probe7 => probe7,
      SLOT_0_AXIS_tdata => SLOT_0_AXIS_tdata,
      SLOT_0_AXIS_tkeep => SLOT_0_AXIS_tkeep,
      SLOT_0_AXIS_tlast => SLOT_0_AXIS_tlast,
      SLOT_0_AXIS_tvalid => SLOT_0_AXIS_tvalid,
      SLOT_0_AXIS_tready => SLOT_0_AXIS_tready,
      SLOT_1_AXIS_tdata => SLOT_1_AXIS_tdata,
      SLOT_1_AXIS_tlast => SLOT_1_AXIS_tlast,
      SLOT_1_AXIS_tvalid => SLOT_1_AXIS_tvalid,
      SLOT_1_AXIS_tready => SLOT_1_AXIS_tready,
      SLOT_2_AXI_awaddr => SLOT_2_AXI_awaddr,
      SLOT_2_AXI_awlen => SLOT_2_AXI_awlen,
      SLOT_2_AXI_awsize => SLOT_2_AXI_awsize,
      SLOT_2_AXI_awburst => SLOT_2_AXI_awburst,
      SLOT_2_AXI_awlock => SLOT_2_AXI_awlock,
      SLOT_2_AXI_awcache => SLOT_2_AXI_awcache,
      SLOT_2_AXI_awprot => SLOT_2_AXI_awprot,
      SLOT_2_AXI_awqos => SLOT_2_AXI_awqos,
      SLOT_2_AXI_awvalid => SLOT_2_AXI_awvalid,
      SLOT_2_AXI_awready => SLOT_2_AXI_awready,
      SLOT_2_AXI_wdata => SLOT_2_AXI_wdata,
      SLOT_2_AXI_wstrb => SLOT_2_AXI_wstrb,
      SLOT_2_AXI_wlast => SLOT_2_AXI_wlast,
      SLOT_2_AXI_wvalid => SLOT_2_AXI_wvalid,
      SLOT_2_AXI_wready => SLOT_2_AXI_wready,
      SLOT_2_AXI_bresp => SLOT_2_AXI_bresp,
      SLOT_2_AXI_bvalid => SLOT_2_AXI_bvalid,
      SLOT_2_AXI_bready => SLOT_2_AXI_bready,
      SLOT_2_AXI_araddr => SLOT_2_AXI_araddr,
      SLOT_2_AXI_arlen => SLOT_2_AXI_arlen,
      SLOT_2_AXI_arsize => SLOT_2_AXI_arsize,
      SLOT_2_AXI_arburst => SLOT_2_AXI_arburst,
      SLOT_2_AXI_arlock => SLOT_2_AXI_arlock,
      SLOT_2_AXI_arcache => SLOT_2_AXI_arcache,
      SLOT_2_AXI_arprot => SLOT_2_AXI_arprot,
      SLOT_2_AXI_arqos => SLOT_2_AXI_arqos,
      SLOT_2_AXI_arvalid => SLOT_2_AXI_arvalid,
      SLOT_2_AXI_arready => SLOT_2_AXI_arready,
      SLOT_2_AXI_rdata => SLOT_2_AXI_rdata,
      SLOT_2_AXI_rresp => SLOT_2_AXI_rresp,
      SLOT_2_AXI_rlast => SLOT_2_AXI_rlast,
      SLOT_2_AXI_rvalid => SLOT_2_AXI_rvalid,
      SLOT_2_AXI_rready => SLOT_2_AXI_rready,
      SLOT_3_AXI_awaddr => SLOT_3_AXI_awaddr,
      SLOT_3_AXI_awlen => SLOT_3_AXI_awlen,
      SLOT_3_AXI_awsize => SLOT_3_AXI_awsize,
      SLOT_3_AXI_awburst => SLOT_3_AXI_awburst,
      SLOT_3_AXI_awlock => SLOT_3_AXI_awlock,
      SLOT_3_AXI_awcache => SLOT_3_AXI_awcache,
      SLOT_3_AXI_awprot => SLOT_3_AXI_awprot,
      SLOT_3_AXI_awqos => SLOT_3_AXI_awqos,
      SLOT_3_AXI_awvalid => SLOT_3_AXI_awvalid,
      SLOT_3_AXI_awready => SLOT_3_AXI_awready,
      SLOT_3_AXI_wdata => SLOT_3_AXI_wdata,
      SLOT_3_AXI_wstrb => SLOT_3_AXI_wstrb,
      SLOT_3_AXI_wlast => SLOT_3_AXI_wlast,
      SLOT_3_AXI_wvalid => SLOT_3_AXI_wvalid,
      SLOT_3_AXI_wready => SLOT_3_AXI_wready,
      SLOT_3_AXI_bresp => SLOT_3_AXI_bresp,
      SLOT_3_AXI_bvalid => SLOT_3_AXI_bvalid,
      SLOT_3_AXI_bready => SLOT_3_AXI_bready,
      SLOT_3_AXI_araddr => SLOT_3_AXI_araddr,
      SLOT_3_AXI_arlen => SLOT_3_AXI_arlen,
      SLOT_3_AXI_arsize => SLOT_3_AXI_arsize,
      SLOT_3_AXI_arburst => SLOT_3_AXI_arburst,
      SLOT_3_AXI_arlock => SLOT_3_AXI_arlock,
      SLOT_3_AXI_arcache => SLOT_3_AXI_arcache,
      SLOT_3_AXI_arprot => SLOT_3_AXI_arprot,
      SLOT_3_AXI_arqos => SLOT_3_AXI_arqos,
      SLOT_3_AXI_arvalid => SLOT_3_AXI_arvalid,
      SLOT_3_AXI_arready => SLOT_3_AXI_arready,
      SLOT_3_AXI_rdata => SLOT_3_AXI_rdata,
      SLOT_3_AXI_rresp => SLOT_3_AXI_rresp,
      SLOT_3_AXI_rlast => SLOT_3_AXI_rlast,
      SLOT_3_AXI_rvalid => SLOT_3_AXI_rvalid,
      SLOT_3_AXI_rready => SLOT_3_AXI_rready,
      SLOT_4_AXI_awaddr => SLOT_4_AXI_awaddr,
      SLOT_4_AXI_awlen => SLOT_4_AXI_awlen,
      SLOT_4_AXI_awsize => SLOT_4_AXI_awsize,
      SLOT_4_AXI_awburst => SLOT_4_AXI_awburst,
      SLOT_4_AXI_awlock => SLOT_4_AXI_awlock,
      SLOT_4_AXI_awcache => SLOT_4_AXI_awcache,
      SLOT_4_AXI_awprot => SLOT_4_AXI_awprot,
      SLOT_4_AXI_awqos => SLOT_4_AXI_awqos,
      SLOT_4_AXI_awvalid => SLOT_4_AXI_awvalid,
      SLOT_4_AXI_awready => SLOT_4_AXI_awready,
      SLOT_4_AXI_wdata => SLOT_4_AXI_wdata,
      SLOT_4_AXI_wstrb => SLOT_4_AXI_wstrb,
      SLOT_4_AXI_wlast => SLOT_4_AXI_wlast,
      SLOT_4_AXI_wvalid => SLOT_4_AXI_wvalid,
      SLOT_4_AXI_wready => SLOT_4_AXI_wready,
      SLOT_4_AXI_bresp => SLOT_4_AXI_bresp,
      SLOT_4_AXI_bvalid => SLOT_4_AXI_bvalid,
      SLOT_4_AXI_bready => SLOT_4_AXI_bready,
      SLOT_4_AXI_araddr => SLOT_4_AXI_araddr,
      SLOT_4_AXI_arlen => SLOT_4_AXI_arlen,
      SLOT_4_AXI_arsize => SLOT_4_AXI_arsize,
      SLOT_4_AXI_arburst => SLOT_4_AXI_arburst,
      SLOT_4_AXI_arlock => SLOT_4_AXI_arlock,
      SLOT_4_AXI_arcache => SLOT_4_AXI_arcache,
      SLOT_4_AXI_arprot => SLOT_4_AXI_arprot,
      SLOT_4_AXI_arqos => SLOT_4_AXI_arqos,
      SLOT_4_AXI_arvalid => SLOT_4_AXI_arvalid,
      SLOT_4_AXI_arready => SLOT_4_AXI_arready,
      SLOT_4_AXI_rdata => SLOT_4_AXI_rdata,
      SLOT_4_AXI_rresp => SLOT_4_AXI_rresp,
      SLOT_4_AXI_rlast => SLOT_4_AXI_rlast,
      SLOT_4_AXI_rvalid => SLOT_4_AXI_rvalid,
      SLOT_4_AXI_rready => SLOT_4_AXI_rready,
      resetn => resetn
    );
END embedded_system_system_ila_0_0_arch;
