--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Tue Nov  8 21:57:01 2022
--Host        : peppe-pc running 64-bit major release  (build 9200)
--Command     : generate_target embedded_system.bd
--Design      : embedded_system
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_GH6ODQ is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m00_couplers_imp_GH6ODQ;

architecture STRUCTURE of m00_couplers_imp_GH6ODQ is
  component embedded_system_auto_ds_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component embedded_system_auto_ds_0;
  component embedded_system_auto_pc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component embedded_system_auto_pc_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_ds_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ds_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ds_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_ARREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_auto_pc_ARVALID : STD_LOGIC;
  signal auto_ds_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ds_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ds_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_AWREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_auto_pc_AWVALID : STD_LOGIC;
  signal auto_ds_to_auto_pc_BREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_auto_pc_BVALID : STD_LOGIC;
  signal auto_ds_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_auto_pc_RLAST : STD_LOGIC;
  signal auto_ds_to_auto_pc_RREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_auto_pc_RVALID : STD_LOGIC;
  signal auto_ds_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_auto_pc_WLAST : STD_LOGIC;
  signal auto_ds_to_auto_pc_WREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_WVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_WVALID : STD_LOGIC;
  signal m00_couplers_to_auto_ds_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_ds_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_ds_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_ds_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_ds_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_ds_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_ds_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_ds_ARREADY : STD_LOGIC;
  signal m00_couplers_to_auto_ds_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_ds_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_ds_ARVALID : STD_LOGIC;
  signal m00_couplers_to_auto_ds_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_ds_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_ds_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_ds_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_ds_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_ds_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_ds_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_ds_AWREADY : STD_LOGIC;
  signal m00_couplers_to_auto_ds_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_ds_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_ds_AWVALID : STD_LOGIC;
  signal m00_couplers_to_auto_ds_BREADY : STD_LOGIC;
  signal m00_couplers_to_auto_ds_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_ds_BVALID : STD_LOGIC;
  signal m00_couplers_to_auto_ds_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal m00_couplers_to_auto_ds_RLAST : STD_LOGIC;
  signal m00_couplers_to_auto_ds_RREADY : STD_LOGIC;
  signal m00_couplers_to_auto_ds_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_ds_RVALID : STD_LOGIC;
  signal m00_couplers_to_auto_ds_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal m00_couplers_to_auto_ds_WLAST : STD_LOGIC;
  signal m00_couplers_to_auto_ds_WREADY : STD_LOGIC;
  signal m00_couplers_to_auto_ds_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_couplers_to_auto_ds_WVALID : STD_LOGIC;
  signal NLW_auto_pc_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_pc_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= auto_pc_to_m00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= auto_pc_to_m00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_m00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_m00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m00_couplers_to_auto_ds_ARREADY;
  S_AXI_awready <= m00_couplers_to_auto_ds_AWREADY;
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_auto_ds_BRESP(1 downto 0);
  S_AXI_bvalid <= m00_couplers_to_auto_ds_BVALID;
  S_AXI_rdata(511 downto 0) <= m00_couplers_to_auto_ds_RDATA(511 downto 0);
  S_AXI_rlast <= m00_couplers_to_auto_ds_RLAST;
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_auto_ds_RRESP(1 downto 0);
  S_AXI_rvalid <= m00_couplers_to_auto_ds_RVALID;
  S_AXI_wready <= m00_couplers_to_auto_ds_WREADY;
  auto_pc_to_m00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m00_couplers_WREADY <= M_AXI_wready;
  m00_couplers_to_auto_ds_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_auto_ds_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m00_couplers_to_auto_ds_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m00_couplers_to_auto_ds_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m00_couplers_to_auto_ds_ARLOCK(0) <= S_AXI_arlock(0);
  m00_couplers_to_auto_ds_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m00_couplers_to_auto_ds_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m00_couplers_to_auto_ds_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m00_couplers_to_auto_ds_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m00_couplers_to_auto_ds_ARVALID <= S_AXI_arvalid;
  m00_couplers_to_auto_ds_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_auto_ds_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m00_couplers_to_auto_ds_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m00_couplers_to_auto_ds_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m00_couplers_to_auto_ds_AWLOCK(0) <= S_AXI_awlock(0);
  m00_couplers_to_auto_ds_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m00_couplers_to_auto_ds_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m00_couplers_to_auto_ds_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m00_couplers_to_auto_ds_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m00_couplers_to_auto_ds_AWVALID <= S_AXI_awvalid;
  m00_couplers_to_auto_ds_BREADY <= S_AXI_bready;
  m00_couplers_to_auto_ds_RREADY <= S_AXI_rready;
  m00_couplers_to_auto_ds_WDATA(511 downto 0) <= S_AXI_wdata(511 downto 0);
  m00_couplers_to_auto_ds_WLAST <= S_AXI_wlast;
  m00_couplers_to_auto_ds_WSTRB(63 downto 0) <= S_AXI_wstrb(63 downto 0);
  m00_couplers_to_auto_ds_WVALID <= S_AXI_wvalid;
auto_ds: component embedded_system_auto_ds_0
     port map (
      m_axi_araddr(31 downto 0) => auto_ds_to_auto_pc_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_ds_to_auto_pc_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_ds_to_auto_pc_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => auto_ds_to_auto_pc_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_ds_to_auto_pc_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_ds_to_auto_pc_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_ds_to_auto_pc_ARQOS(3 downto 0),
      m_axi_arready => auto_ds_to_auto_pc_ARREADY,
      m_axi_arregion(3 downto 0) => auto_ds_to_auto_pc_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_ds_to_auto_pc_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_ds_to_auto_pc_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_ds_to_auto_pc_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_ds_to_auto_pc_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_ds_to_auto_pc_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => auto_ds_to_auto_pc_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_ds_to_auto_pc_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_ds_to_auto_pc_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_ds_to_auto_pc_AWQOS(3 downto 0),
      m_axi_awready => auto_ds_to_auto_pc_AWREADY,
      m_axi_awregion(3 downto 0) => auto_ds_to_auto_pc_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_ds_to_auto_pc_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_ds_to_auto_pc_AWVALID,
      m_axi_bready => auto_ds_to_auto_pc_BREADY,
      m_axi_bresp(1 downto 0) => auto_ds_to_auto_pc_BRESP(1 downto 0),
      m_axi_bvalid => auto_ds_to_auto_pc_BVALID,
      m_axi_rdata(31 downto 0) => auto_ds_to_auto_pc_RDATA(31 downto 0),
      m_axi_rlast => auto_ds_to_auto_pc_RLAST,
      m_axi_rready => auto_ds_to_auto_pc_RREADY,
      m_axi_rresp(1 downto 0) => auto_ds_to_auto_pc_RRESP(1 downto 0),
      m_axi_rvalid => auto_ds_to_auto_pc_RVALID,
      m_axi_wdata(31 downto 0) => auto_ds_to_auto_pc_WDATA(31 downto 0),
      m_axi_wlast => auto_ds_to_auto_pc_WLAST,
      m_axi_wready => auto_ds_to_auto_pc_WREADY,
      m_axi_wstrb(3 downto 0) => auto_ds_to_auto_pc_WSTRB(3 downto 0),
      m_axi_wvalid => auto_ds_to_auto_pc_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(31 downto 0) => m00_couplers_to_auto_ds_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m00_couplers_to_auto_ds_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m00_couplers_to_auto_ds_ARCACHE(3 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arlen(7 downto 0) => m00_couplers_to_auto_ds_ARLEN(7 downto 0),
      s_axi_arlock(0) => m00_couplers_to_auto_ds_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m00_couplers_to_auto_ds_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m00_couplers_to_auto_ds_ARQOS(3 downto 0),
      s_axi_arready => m00_couplers_to_auto_ds_ARREADY,
      s_axi_arregion(3 downto 0) => m00_couplers_to_auto_ds_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m00_couplers_to_auto_ds_ARSIZE(2 downto 0),
      s_axi_arvalid => m00_couplers_to_auto_ds_ARVALID,
      s_axi_awaddr(31 downto 0) => m00_couplers_to_auto_ds_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m00_couplers_to_auto_ds_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m00_couplers_to_auto_ds_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => m00_couplers_to_auto_ds_AWLEN(7 downto 0),
      s_axi_awlock(0) => m00_couplers_to_auto_ds_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m00_couplers_to_auto_ds_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m00_couplers_to_auto_ds_AWQOS(3 downto 0),
      s_axi_awready => m00_couplers_to_auto_ds_AWREADY,
      s_axi_awregion(3 downto 0) => m00_couplers_to_auto_ds_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m00_couplers_to_auto_ds_AWSIZE(2 downto 0),
      s_axi_awvalid => m00_couplers_to_auto_ds_AWVALID,
      s_axi_bready => m00_couplers_to_auto_ds_BREADY,
      s_axi_bresp(1 downto 0) => m00_couplers_to_auto_ds_BRESP(1 downto 0),
      s_axi_bvalid => m00_couplers_to_auto_ds_BVALID,
      s_axi_rdata(511 downto 0) => m00_couplers_to_auto_ds_RDATA(511 downto 0),
      s_axi_rlast => m00_couplers_to_auto_ds_RLAST,
      s_axi_rready => m00_couplers_to_auto_ds_RREADY,
      s_axi_rresp(1 downto 0) => m00_couplers_to_auto_ds_RRESP(1 downto 0),
      s_axi_rvalid => m00_couplers_to_auto_ds_RVALID,
      s_axi_wdata(511 downto 0) => m00_couplers_to_auto_ds_WDATA(511 downto 0),
      s_axi_wlast => m00_couplers_to_auto_ds_WLAST,
      s_axi_wready => m00_couplers_to_auto_ds_WREADY,
      s_axi_wstrb(63 downto 0) => m00_couplers_to_auto_ds_WSTRB(63 downto 0),
      s_axi_wvalid => m00_couplers_to_auto_ds_WVALID
    );
auto_pc: component embedded_system_auto_pc_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => NLW_auto_pc_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => auto_pc_to_m00_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_m00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => NLW_auto_pc_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => auto_pc_to_m00_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_m00_couplers_AWVALID,
      m_axi_bready => auto_pc_to_m00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_m00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_m00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_m00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => auto_ds_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => auto_ds_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => auto_ds_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => auto_ds_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => auto_ds_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => auto_ds_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => auto_ds_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => auto_ds_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => auto_ds_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => auto_ds_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => auto_ds_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => auto_ds_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => auto_ds_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => auto_ds_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => auto_ds_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => auto_ds_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => auto_ds_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => auto_ds_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => auto_ds_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => auto_ds_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => auto_ds_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => auto_ds_to_auto_pc_AWVALID,
      s_axi_bready => auto_ds_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => auto_ds_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => auto_ds_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => auto_ds_to_auto_pc_RDATA(31 downto 0),
      s_axi_rlast => auto_ds_to_auto_pc_RLAST,
      s_axi_rready => auto_ds_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => auto_ds_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => auto_ds_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => auto_ds_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => auto_ds_to_auto_pc_WLAST,
      s_axi_wready => auto_ds_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => auto_ds_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => auto_ds_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_183BBHC is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m01_couplers_imp_183BBHC;

architecture STRUCTURE of m01_couplers_imp_183BBHC is
  component embedded_system_auto_ds_1 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component embedded_system_auto_ds_1;
  component embedded_system_auto_pc_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component embedded_system_auto_pc_1;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_ds_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ds_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ds_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_ARREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_auto_pc_ARVALID : STD_LOGIC;
  signal auto_ds_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ds_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ds_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_AWREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_auto_pc_AWVALID : STD_LOGIC;
  signal auto_ds_to_auto_pc_BREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_auto_pc_BVALID : STD_LOGIC;
  signal auto_ds_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_auto_pc_RLAST : STD_LOGIC;
  signal auto_ds_to_auto_pc_RREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_auto_pc_RVALID : STD_LOGIC;
  signal auto_ds_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_auto_pc_WLAST : STD_LOGIC;
  signal auto_ds_to_auto_pc_WREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_WVALID : STD_LOGIC;
  signal auto_pc_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m01_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m01_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m01_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m01_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m01_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m01_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m01_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m01_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m01_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m01_couplers_WVALID : STD_LOGIC;
  signal m01_couplers_to_auto_ds_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_auto_ds_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_auto_ds_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_auto_ds_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m01_couplers_to_auto_ds_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_auto_ds_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_auto_ds_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_auto_ds_ARREADY : STD_LOGIC;
  signal m01_couplers_to_auto_ds_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_auto_ds_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_auto_ds_ARVALID : STD_LOGIC;
  signal m01_couplers_to_auto_ds_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_auto_ds_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_auto_ds_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_auto_ds_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m01_couplers_to_auto_ds_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_auto_ds_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_auto_ds_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_auto_ds_AWREADY : STD_LOGIC;
  signal m01_couplers_to_auto_ds_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_auto_ds_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_auto_ds_AWVALID : STD_LOGIC;
  signal m01_couplers_to_auto_ds_BREADY : STD_LOGIC;
  signal m01_couplers_to_auto_ds_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_auto_ds_BVALID : STD_LOGIC;
  signal m01_couplers_to_auto_ds_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal m01_couplers_to_auto_ds_RLAST : STD_LOGIC;
  signal m01_couplers_to_auto_ds_RREADY : STD_LOGIC;
  signal m01_couplers_to_auto_ds_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_auto_ds_RVALID : STD_LOGIC;
  signal m01_couplers_to_auto_ds_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal m01_couplers_to_auto_ds_WLAST : STD_LOGIC;
  signal m01_couplers_to_auto_ds_WREADY : STD_LOGIC;
  signal m01_couplers_to_auto_ds_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m01_couplers_to_auto_ds_WVALID : STD_LOGIC;
  signal NLW_auto_pc_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_pc_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_pc_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_m01_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= auto_pc_to_m01_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_m01_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= auto_pc_to_m01_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m01_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m01_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wvalid <= auto_pc_to_m01_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m01_couplers_to_auto_ds_ARREADY;
  S_AXI_awready <= m01_couplers_to_auto_ds_AWREADY;
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_auto_ds_BRESP(1 downto 0);
  S_AXI_bvalid <= m01_couplers_to_auto_ds_BVALID;
  S_AXI_rdata(511 downto 0) <= m01_couplers_to_auto_ds_RDATA(511 downto 0);
  S_AXI_rlast <= m01_couplers_to_auto_ds_RLAST;
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_auto_ds_RRESP(1 downto 0);
  S_AXI_rvalid <= m01_couplers_to_auto_ds_RVALID;
  S_AXI_wready <= m01_couplers_to_auto_ds_WREADY;
  auto_pc_to_m01_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m01_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m01_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m01_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m01_couplers_WREADY <= M_AXI_wready;
  m01_couplers_to_auto_ds_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m01_couplers_to_auto_ds_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m01_couplers_to_auto_ds_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m01_couplers_to_auto_ds_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m01_couplers_to_auto_ds_ARLOCK(0) <= S_AXI_arlock(0);
  m01_couplers_to_auto_ds_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m01_couplers_to_auto_ds_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m01_couplers_to_auto_ds_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m01_couplers_to_auto_ds_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m01_couplers_to_auto_ds_ARVALID <= S_AXI_arvalid;
  m01_couplers_to_auto_ds_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m01_couplers_to_auto_ds_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m01_couplers_to_auto_ds_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m01_couplers_to_auto_ds_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m01_couplers_to_auto_ds_AWLOCK(0) <= S_AXI_awlock(0);
  m01_couplers_to_auto_ds_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m01_couplers_to_auto_ds_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m01_couplers_to_auto_ds_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m01_couplers_to_auto_ds_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m01_couplers_to_auto_ds_AWVALID <= S_AXI_awvalid;
  m01_couplers_to_auto_ds_BREADY <= S_AXI_bready;
  m01_couplers_to_auto_ds_RREADY <= S_AXI_rready;
  m01_couplers_to_auto_ds_WDATA(511 downto 0) <= S_AXI_wdata(511 downto 0);
  m01_couplers_to_auto_ds_WLAST <= S_AXI_wlast;
  m01_couplers_to_auto_ds_WSTRB(63 downto 0) <= S_AXI_wstrb(63 downto 0);
  m01_couplers_to_auto_ds_WVALID <= S_AXI_wvalid;
auto_ds: component embedded_system_auto_ds_1
     port map (
      m_axi_araddr(31 downto 0) => auto_ds_to_auto_pc_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_ds_to_auto_pc_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_ds_to_auto_pc_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => auto_ds_to_auto_pc_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_ds_to_auto_pc_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_ds_to_auto_pc_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_ds_to_auto_pc_ARQOS(3 downto 0),
      m_axi_arready => auto_ds_to_auto_pc_ARREADY,
      m_axi_arregion(3 downto 0) => auto_ds_to_auto_pc_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_ds_to_auto_pc_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_ds_to_auto_pc_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_ds_to_auto_pc_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_ds_to_auto_pc_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_ds_to_auto_pc_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => auto_ds_to_auto_pc_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_ds_to_auto_pc_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_ds_to_auto_pc_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_ds_to_auto_pc_AWQOS(3 downto 0),
      m_axi_awready => auto_ds_to_auto_pc_AWREADY,
      m_axi_awregion(3 downto 0) => auto_ds_to_auto_pc_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_ds_to_auto_pc_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_ds_to_auto_pc_AWVALID,
      m_axi_bready => auto_ds_to_auto_pc_BREADY,
      m_axi_bresp(1 downto 0) => auto_ds_to_auto_pc_BRESP(1 downto 0),
      m_axi_bvalid => auto_ds_to_auto_pc_BVALID,
      m_axi_rdata(31 downto 0) => auto_ds_to_auto_pc_RDATA(31 downto 0),
      m_axi_rlast => auto_ds_to_auto_pc_RLAST,
      m_axi_rready => auto_ds_to_auto_pc_RREADY,
      m_axi_rresp(1 downto 0) => auto_ds_to_auto_pc_RRESP(1 downto 0),
      m_axi_rvalid => auto_ds_to_auto_pc_RVALID,
      m_axi_wdata(31 downto 0) => auto_ds_to_auto_pc_WDATA(31 downto 0),
      m_axi_wlast => auto_ds_to_auto_pc_WLAST,
      m_axi_wready => auto_ds_to_auto_pc_WREADY,
      m_axi_wstrb(3 downto 0) => auto_ds_to_auto_pc_WSTRB(3 downto 0),
      m_axi_wvalid => auto_ds_to_auto_pc_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(31 downto 0) => m01_couplers_to_auto_ds_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m01_couplers_to_auto_ds_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m01_couplers_to_auto_ds_ARCACHE(3 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arlen(7 downto 0) => m01_couplers_to_auto_ds_ARLEN(7 downto 0),
      s_axi_arlock(0) => m01_couplers_to_auto_ds_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m01_couplers_to_auto_ds_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m01_couplers_to_auto_ds_ARQOS(3 downto 0),
      s_axi_arready => m01_couplers_to_auto_ds_ARREADY,
      s_axi_arregion(3 downto 0) => m01_couplers_to_auto_ds_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m01_couplers_to_auto_ds_ARSIZE(2 downto 0),
      s_axi_arvalid => m01_couplers_to_auto_ds_ARVALID,
      s_axi_awaddr(31 downto 0) => m01_couplers_to_auto_ds_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m01_couplers_to_auto_ds_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m01_couplers_to_auto_ds_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => m01_couplers_to_auto_ds_AWLEN(7 downto 0),
      s_axi_awlock(0) => m01_couplers_to_auto_ds_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m01_couplers_to_auto_ds_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m01_couplers_to_auto_ds_AWQOS(3 downto 0),
      s_axi_awready => m01_couplers_to_auto_ds_AWREADY,
      s_axi_awregion(3 downto 0) => m01_couplers_to_auto_ds_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m01_couplers_to_auto_ds_AWSIZE(2 downto 0),
      s_axi_awvalid => m01_couplers_to_auto_ds_AWVALID,
      s_axi_bready => m01_couplers_to_auto_ds_BREADY,
      s_axi_bresp(1 downto 0) => m01_couplers_to_auto_ds_BRESP(1 downto 0),
      s_axi_bvalid => m01_couplers_to_auto_ds_BVALID,
      s_axi_rdata(511 downto 0) => m01_couplers_to_auto_ds_RDATA(511 downto 0),
      s_axi_rlast => m01_couplers_to_auto_ds_RLAST,
      s_axi_rready => m01_couplers_to_auto_ds_RREADY,
      s_axi_rresp(1 downto 0) => m01_couplers_to_auto_ds_RRESP(1 downto 0),
      s_axi_rvalid => m01_couplers_to_auto_ds_RVALID,
      s_axi_wdata(511 downto 0) => m01_couplers_to_auto_ds_WDATA(511 downto 0),
      s_axi_wlast => m01_couplers_to_auto_ds_WLAST,
      s_axi_wready => m01_couplers_to_auto_ds_WREADY,
      s_axi_wstrb(63 downto 0) => m01_couplers_to_auto_ds_WSTRB(63 downto 0),
      s_axi_wvalid => m01_couplers_to_auto_ds_WVALID
    );
auto_pc: component embedded_system_auto_pc_1
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_m01_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => NLW_auto_pc_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => auto_pc_to_m01_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_m01_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m01_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => NLW_auto_pc_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => auto_pc_to_m01_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_m01_couplers_AWVALID,
      m_axi_bready => auto_pc_to_m01_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m01_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_m01_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m01_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m01_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_m01_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => NLW_auto_pc_m_axi_wstrb_UNCONNECTED(3 downto 0),
      m_axi_wvalid => auto_pc_to_m01_couplers_WVALID,
      s_axi_araddr(31 downto 0) => auto_ds_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => auto_ds_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => auto_ds_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => auto_ds_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => auto_ds_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => auto_ds_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => auto_ds_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => auto_ds_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => auto_ds_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => auto_ds_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => auto_ds_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => auto_ds_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => auto_ds_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => auto_ds_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => auto_ds_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => auto_ds_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => auto_ds_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => auto_ds_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => auto_ds_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => auto_ds_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => auto_ds_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => auto_ds_to_auto_pc_AWVALID,
      s_axi_bready => auto_ds_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => auto_ds_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => auto_ds_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => auto_ds_to_auto_pc_RDATA(31 downto 0),
      s_axi_rlast => auto_ds_to_auto_pc_RLAST,
      s_axi_rready => auto_ds_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => auto_ds_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => auto_ds_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => auto_ds_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => auto_ds_to_auto_pc_WLAST,
      s_axi_wready => auto_ds_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => auto_ds_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => auto_ds_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_1BG90OJ is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC;
    M_AXI_arburst : out STD_LOGIC;
    M_AXI_arcache : out STD_LOGIC;
    M_AXI_arlen : out STD_LOGIC;
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC;
    M_AXI_arqos : out STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arregion : out STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC;
    M_AXI_awburst : out STD_LOGIC;
    M_AXI_awcache : out STD_LOGIC;
    M_AXI_awlen : out STD_LOGIC;
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC;
    M_AXI_awqos : out STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awregion : out STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC;
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC;
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC;
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC;
    S_AXI_arburst : in STD_LOGIC;
    S_AXI_arcache : in STD_LOGIC;
    S_AXI_arlen : in STD_LOGIC;
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC;
    S_AXI_arqos : in STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC;
    S_AXI_awburst : in STD_LOGIC;
    S_AXI_awcache : in STD_LOGIC;
    S_AXI_awlen : in STD_LOGIC;
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC;
    S_AXI_awqos : in STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC;
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC;
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC;
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end m02_couplers_imp_1BG90OJ;

architecture STRUCTURE of m02_couplers_imp_1BG90OJ is
  signal m02_couplers_to_m02_couplers_ARADDR : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_ARBURST : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_ARCACHE : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_ARLEN : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_ARLOCK : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_ARPROT : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_ARQOS : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_ARREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_ARREGION : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_ARSIZE : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_ARVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWADDR : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWBURST : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWCACHE : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWLEN : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWLOCK : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWPROT : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWQOS : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWREGION : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWSIZE : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_BREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_BRESP : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_BVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_RDATA : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_RLAST : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_RREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_RRESP : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_RVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_WDATA : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_WLAST : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_WREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_WSTRB : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr <= m02_couplers_to_m02_couplers_ARADDR;
  M_AXI_arburst <= m02_couplers_to_m02_couplers_ARBURST;
  M_AXI_arcache <= m02_couplers_to_m02_couplers_ARCACHE;
  M_AXI_arlen <= m02_couplers_to_m02_couplers_ARLEN;
  M_AXI_arlock <= m02_couplers_to_m02_couplers_ARLOCK;
  M_AXI_arprot <= m02_couplers_to_m02_couplers_ARPROT;
  M_AXI_arqos <= m02_couplers_to_m02_couplers_ARQOS;
  M_AXI_arregion <= m02_couplers_to_m02_couplers_ARREGION;
  M_AXI_arsize <= m02_couplers_to_m02_couplers_ARSIZE;
  M_AXI_arvalid <= m02_couplers_to_m02_couplers_ARVALID;
  M_AXI_awaddr <= m02_couplers_to_m02_couplers_AWADDR;
  M_AXI_awburst <= m02_couplers_to_m02_couplers_AWBURST;
  M_AXI_awcache <= m02_couplers_to_m02_couplers_AWCACHE;
  M_AXI_awlen <= m02_couplers_to_m02_couplers_AWLEN;
  M_AXI_awlock <= m02_couplers_to_m02_couplers_AWLOCK;
  M_AXI_awprot <= m02_couplers_to_m02_couplers_AWPROT;
  M_AXI_awqos <= m02_couplers_to_m02_couplers_AWQOS;
  M_AXI_awregion <= m02_couplers_to_m02_couplers_AWREGION;
  M_AXI_awsize <= m02_couplers_to_m02_couplers_AWSIZE;
  M_AXI_awvalid <= m02_couplers_to_m02_couplers_AWVALID;
  M_AXI_bready <= m02_couplers_to_m02_couplers_BREADY;
  M_AXI_rready <= m02_couplers_to_m02_couplers_RREADY;
  M_AXI_wdata <= m02_couplers_to_m02_couplers_WDATA;
  M_AXI_wlast <= m02_couplers_to_m02_couplers_WLAST;
  M_AXI_wstrb <= m02_couplers_to_m02_couplers_WSTRB;
  M_AXI_wvalid <= m02_couplers_to_m02_couplers_WVALID;
  S_AXI_arready <= m02_couplers_to_m02_couplers_ARREADY;
  S_AXI_awready <= m02_couplers_to_m02_couplers_AWREADY;
  S_AXI_bresp <= m02_couplers_to_m02_couplers_BRESP;
  S_AXI_bvalid <= m02_couplers_to_m02_couplers_BVALID;
  S_AXI_rdata <= m02_couplers_to_m02_couplers_RDATA;
  S_AXI_rlast <= m02_couplers_to_m02_couplers_RLAST;
  S_AXI_rresp <= m02_couplers_to_m02_couplers_RRESP;
  S_AXI_rvalid <= m02_couplers_to_m02_couplers_RVALID;
  S_AXI_wready <= m02_couplers_to_m02_couplers_WREADY;
  m02_couplers_to_m02_couplers_ARADDR <= S_AXI_araddr;
  m02_couplers_to_m02_couplers_ARBURST <= S_AXI_arburst;
  m02_couplers_to_m02_couplers_ARCACHE <= S_AXI_arcache;
  m02_couplers_to_m02_couplers_ARLEN <= S_AXI_arlen;
  m02_couplers_to_m02_couplers_ARLOCK <= S_AXI_arlock;
  m02_couplers_to_m02_couplers_ARPROT <= S_AXI_arprot;
  m02_couplers_to_m02_couplers_ARQOS <= S_AXI_arqos;
  m02_couplers_to_m02_couplers_ARREADY <= M_AXI_arready;
  m02_couplers_to_m02_couplers_ARREGION <= S_AXI_arregion;
  m02_couplers_to_m02_couplers_ARSIZE <= S_AXI_arsize;
  m02_couplers_to_m02_couplers_ARVALID <= S_AXI_arvalid;
  m02_couplers_to_m02_couplers_AWADDR <= S_AXI_awaddr;
  m02_couplers_to_m02_couplers_AWBURST <= S_AXI_awburst;
  m02_couplers_to_m02_couplers_AWCACHE <= S_AXI_awcache;
  m02_couplers_to_m02_couplers_AWLEN <= S_AXI_awlen;
  m02_couplers_to_m02_couplers_AWLOCK <= S_AXI_awlock;
  m02_couplers_to_m02_couplers_AWPROT <= S_AXI_awprot;
  m02_couplers_to_m02_couplers_AWQOS <= S_AXI_awqos;
  m02_couplers_to_m02_couplers_AWREADY <= M_AXI_awready;
  m02_couplers_to_m02_couplers_AWREGION <= S_AXI_awregion;
  m02_couplers_to_m02_couplers_AWSIZE <= S_AXI_awsize;
  m02_couplers_to_m02_couplers_AWVALID <= S_AXI_awvalid;
  m02_couplers_to_m02_couplers_BREADY <= S_AXI_bready;
  m02_couplers_to_m02_couplers_BRESP <= M_AXI_bresp;
  m02_couplers_to_m02_couplers_BVALID <= M_AXI_bvalid;
  m02_couplers_to_m02_couplers_RDATA <= M_AXI_rdata;
  m02_couplers_to_m02_couplers_RLAST <= M_AXI_rlast;
  m02_couplers_to_m02_couplers_RREADY <= S_AXI_rready;
  m02_couplers_to_m02_couplers_RRESP <= M_AXI_rresp;
  m02_couplers_to_m02_couplers_RVALID <= M_AXI_rvalid;
  m02_couplers_to_m02_couplers_WDATA <= S_AXI_wdata;
  m02_couplers_to_m02_couplers_WLAST <= S_AXI_wlast;
  m02_couplers_to_m02_couplers_WREADY <= M_AXI_wready;
  m02_couplers_to_m02_couplers_WSTRB <= S_AXI_wstrb;
  m02_couplers_to_m02_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m03_couplers_imp_41F83H is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC;
    M_AXI_arburst : out STD_LOGIC;
    M_AXI_arcache : out STD_LOGIC;
    M_AXI_arlen : out STD_LOGIC;
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC;
    M_AXI_arqos : out STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arregion : out STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC;
    M_AXI_awburst : out STD_LOGIC;
    M_AXI_awcache : out STD_LOGIC;
    M_AXI_awlen : out STD_LOGIC;
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC;
    M_AXI_awqos : out STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awregion : out STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC;
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC;
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC;
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC;
    S_AXI_arburst : in STD_LOGIC;
    S_AXI_arcache : in STD_LOGIC;
    S_AXI_arlen : in STD_LOGIC;
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC;
    S_AXI_arqos : in STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC;
    S_AXI_awburst : in STD_LOGIC;
    S_AXI_awcache : in STD_LOGIC;
    S_AXI_awlen : in STD_LOGIC;
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC;
    S_AXI_awqos : in STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC;
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC;
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC;
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end m03_couplers_imp_41F83H;

architecture STRUCTURE of m03_couplers_imp_41F83H is
  signal m03_couplers_to_m03_couplers_ARADDR : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_ARBURST : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_ARCACHE : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_ARLEN : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_ARLOCK : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_ARPROT : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_ARQOS : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_ARREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_ARREGION : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_ARSIZE : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_ARVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWADDR : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWBURST : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWCACHE : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWLEN : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWLOCK : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWPROT : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWQOS : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWREGION : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWSIZE : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_BREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_BRESP : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_BVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_RDATA : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_RLAST : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_RREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_RRESP : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_RVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_WDATA : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_WLAST : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_WREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_WSTRB : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr <= m03_couplers_to_m03_couplers_ARADDR;
  M_AXI_arburst <= m03_couplers_to_m03_couplers_ARBURST;
  M_AXI_arcache <= m03_couplers_to_m03_couplers_ARCACHE;
  M_AXI_arlen <= m03_couplers_to_m03_couplers_ARLEN;
  M_AXI_arlock <= m03_couplers_to_m03_couplers_ARLOCK;
  M_AXI_arprot <= m03_couplers_to_m03_couplers_ARPROT;
  M_AXI_arqos <= m03_couplers_to_m03_couplers_ARQOS;
  M_AXI_arregion <= m03_couplers_to_m03_couplers_ARREGION;
  M_AXI_arsize <= m03_couplers_to_m03_couplers_ARSIZE;
  M_AXI_arvalid <= m03_couplers_to_m03_couplers_ARVALID;
  M_AXI_awaddr <= m03_couplers_to_m03_couplers_AWADDR;
  M_AXI_awburst <= m03_couplers_to_m03_couplers_AWBURST;
  M_AXI_awcache <= m03_couplers_to_m03_couplers_AWCACHE;
  M_AXI_awlen <= m03_couplers_to_m03_couplers_AWLEN;
  M_AXI_awlock <= m03_couplers_to_m03_couplers_AWLOCK;
  M_AXI_awprot <= m03_couplers_to_m03_couplers_AWPROT;
  M_AXI_awqos <= m03_couplers_to_m03_couplers_AWQOS;
  M_AXI_awregion <= m03_couplers_to_m03_couplers_AWREGION;
  M_AXI_awsize <= m03_couplers_to_m03_couplers_AWSIZE;
  M_AXI_awvalid <= m03_couplers_to_m03_couplers_AWVALID;
  M_AXI_bready <= m03_couplers_to_m03_couplers_BREADY;
  M_AXI_rready <= m03_couplers_to_m03_couplers_RREADY;
  M_AXI_wdata <= m03_couplers_to_m03_couplers_WDATA;
  M_AXI_wlast <= m03_couplers_to_m03_couplers_WLAST;
  M_AXI_wstrb <= m03_couplers_to_m03_couplers_WSTRB;
  M_AXI_wvalid <= m03_couplers_to_m03_couplers_WVALID;
  S_AXI_arready <= m03_couplers_to_m03_couplers_ARREADY;
  S_AXI_awready <= m03_couplers_to_m03_couplers_AWREADY;
  S_AXI_bresp <= m03_couplers_to_m03_couplers_BRESP;
  S_AXI_bvalid <= m03_couplers_to_m03_couplers_BVALID;
  S_AXI_rdata <= m03_couplers_to_m03_couplers_RDATA;
  S_AXI_rlast <= m03_couplers_to_m03_couplers_RLAST;
  S_AXI_rresp <= m03_couplers_to_m03_couplers_RRESP;
  S_AXI_rvalid <= m03_couplers_to_m03_couplers_RVALID;
  S_AXI_wready <= m03_couplers_to_m03_couplers_WREADY;
  m03_couplers_to_m03_couplers_ARADDR <= S_AXI_araddr;
  m03_couplers_to_m03_couplers_ARBURST <= S_AXI_arburst;
  m03_couplers_to_m03_couplers_ARCACHE <= S_AXI_arcache;
  m03_couplers_to_m03_couplers_ARLEN <= S_AXI_arlen;
  m03_couplers_to_m03_couplers_ARLOCK <= S_AXI_arlock;
  m03_couplers_to_m03_couplers_ARPROT <= S_AXI_arprot;
  m03_couplers_to_m03_couplers_ARQOS <= S_AXI_arqos;
  m03_couplers_to_m03_couplers_ARREADY <= M_AXI_arready;
  m03_couplers_to_m03_couplers_ARREGION <= S_AXI_arregion;
  m03_couplers_to_m03_couplers_ARSIZE <= S_AXI_arsize;
  m03_couplers_to_m03_couplers_ARVALID <= S_AXI_arvalid;
  m03_couplers_to_m03_couplers_AWADDR <= S_AXI_awaddr;
  m03_couplers_to_m03_couplers_AWBURST <= S_AXI_awburst;
  m03_couplers_to_m03_couplers_AWCACHE <= S_AXI_awcache;
  m03_couplers_to_m03_couplers_AWLEN <= S_AXI_awlen;
  m03_couplers_to_m03_couplers_AWLOCK <= S_AXI_awlock;
  m03_couplers_to_m03_couplers_AWPROT <= S_AXI_awprot;
  m03_couplers_to_m03_couplers_AWQOS <= S_AXI_awqos;
  m03_couplers_to_m03_couplers_AWREADY <= M_AXI_awready;
  m03_couplers_to_m03_couplers_AWREGION <= S_AXI_awregion;
  m03_couplers_to_m03_couplers_AWSIZE <= S_AXI_awsize;
  m03_couplers_to_m03_couplers_AWVALID <= S_AXI_awvalid;
  m03_couplers_to_m03_couplers_BREADY <= S_AXI_bready;
  m03_couplers_to_m03_couplers_BRESP <= M_AXI_bresp;
  m03_couplers_to_m03_couplers_BVALID <= M_AXI_bvalid;
  m03_couplers_to_m03_couplers_RDATA <= M_AXI_rdata;
  m03_couplers_to_m03_couplers_RLAST <= M_AXI_rlast;
  m03_couplers_to_m03_couplers_RREADY <= S_AXI_rready;
  m03_couplers_to_m03_couplers_RRESP <= M_AXI_rresp;
  m03_couplers_to_m03_couplers_RVALID <= M_AXI_rvalid;
  m03_couplers_to_m03_couplers_WDATA <= S_AXI_wdata;
  m03_couplers_to_m03_couplers_WLAST <= S_AXI_wlast;
  m03_couplers_to_m03_couplers_WREADY <= M_AXI_wready;
  m03_couplers_to_m03_couplers_WSTRB <= S_AXI_wstrb;
  m03_couplers_to_m03_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m04_couplers_imp_1HIKNPX is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC;
    M_AXI_arburst : out STD_LOGIC;
    M_AXI_arcache : out STD_LOGIC;
    M_AXI_arlen : out STD_LOGIC;
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC;
    M_AXI_arqos : out STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arregion : out STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC;
    M_AXI_awburst : out STD_LOGIC;
    M_AXI_awcache : out STD_LOGIC;
    M_AXI_awlen : out STD_LOGIC;
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC;
    M_AXI_awqos : out STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awregion : out STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC;
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC;
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC;
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC;
    S_AXI_arburst : in STD_LOGIC;
    S_AXI_arcache : in STD_LOGIC;
    S_AXI_arlen : in STD_LOGIC;
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC;
    S_AXI_arqos : in STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC;
    S_AXI_awburst : in STD_LOGIC;
    S_AXI_awcache : in STD_LOGIC;
    S_AXI_awlen : in STD_LOGIC;
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC;
    S_AXI_awqos : in STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC;
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC;
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC;
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end m04_couplers_imp_1HIKNPX;

architecture STRUCTURE of m04_couplers_imp_1HIKNPX is
  signal m04_couplers_to_m04_couplers_ARADDR : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_ARBURST : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_ARCACHE : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_ARLEN : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_ARLOCK : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_ARPROT : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_ARQOS : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_ARREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_ARREGION : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_ARSIZE : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_ARVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWADDR : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWBURST : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWCACHE : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWLEN : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWLOCK : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWPROT : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWQOS : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWREGION : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWSIZE : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_BREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_BRESP : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_BVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_RDATA : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_RLAST : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_RREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_RRESP : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_RVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_WDATA : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_WLAST : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_WREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_WSTRB : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr <= m04_couplers_to_m04_couplers_ARADDR;
  M_AXI_arburst <= m04_couplers_to_m04_couplers_ARBURST;
  M_AXI_arcache <= m04_couplers_to_m04_couplers_ARCACHE;
  M_AXI_arlen <= m04_couplers_to_m04_couplers_ARLEN;
  M_AXI_arlock <= m04_couplers_to_m04_couplers_ARLOCK;
  M_AXI_arprot <= m04_couplers_to_m04_couplers_ARPROT;
  M_AXI_arqos <= m04_couplers_to_m04_couplers_ARQOS;
  M_AXI_arregion <= m04_couplers_to_m04_couplers_ARREGION;
  M_AXI_arsize <= m04_couplers_to_m04_couplers_ARSIZE;
  M_AXI_arvalid <= m04_couplers_to_m04_couplers_ARVALID;
  M_AXI_awaddr <= m04_couplers_to_m04_couplers_AWADDR;
  M_AXI_awburst <= m04_couplers_to_m04_couplers_AWBURST;
  M_AXI_awcache <= m04_couplers_to_m04_couplers_AWCACHE;
  M_AXI_awlen <= m04_couplers_to_m04_couplers_AWLEN;
  M_AXI_awlock <= m04_couplers_to_m04_couplers_AWLOCK;
  M_AXI_awprot <= m04_couplers_to_m04_couplers_AWPROT;
  M_AXI_awqos <= m04_couplers_to_m04_couplers_AWQOS;
  M_AXI_awregion <= m04_couplers_to_m04_couplers_AWREGION;
  M_AXI_awsize <= m04_couplers_to_m04_couplers_AWSIZE;
  M_AXI_awvalid <= m04_couplers_to_m04_couplers_AWVALID;
  M_AXI_bready <= m04_couplers_to_m04_couplers_BREADY;
  M_AXI_rready <= m04_couplers_to_m04_couplers_RREADY;
  M_AXI_wdata <= m04_couplers_to_m04_couplers_WDATA;
  M_AXI_wlast <= m04_couplers_to_m04_couplers_WLAST;
  M_AXI_wstrb <= m04_couplers_to_m04_couplers_WSTRB;
  M_AXI_wvalid <= m04_couplers_to_m04_couplers_WVALID;
  S_AXI_arready <= m04_couplers_to_m04_couplers_ARREADY;
  S_AXI_awready <= m04_couplers_to_m04_couplers_AWREADY;
  S_AXI_bresp <= m04_couplers_to_m04_couplers_BRESP;
  S_AXI_bvalid <= m04_couplers_to_m04_couplers_BVALID;
  S_AXI_rdata <= m04_couplers_to_m04_couplers_RDATA;
  S_AXI_rlast <= m04_couplers_to_m04_couplers_RLAST;
  S_AXI_rresp <= m04_couplers_to_m04_couplers_RRESP;
  S_AXI_rvalid <= m04_couplers_to_m04_couplers_RVALID;
  S_AXI_wready <= m04_couplers_to_m04_couplers_WREADY;
  m04_couplers_to_m04_couplers_ARADDR <= S_AXI_araddr;
  m04_couplers_to_m04_couplers_ARBURST <= S_AXI_arburst;
  m04_couplers_to_m04_couplers_ARCACHE <= S_AXI_arcache;
  m04_couplers_to_m04_couplers_ARLEN <= S_AXI_arlen;
  m04_couplers_to_m04_couplers_ARLOCK <= S_AXI_arlock;
  m04_couplers_to_m04_couplers_ARPROT <= S_AXI_arprot;
  m04_couplers_to_m04_couplers_ARQOS <= S_AXI_arqos;
  m04_couplers_to_m04_couplers_ARREADY <= M_AXI_arready;
  m04_couplers_to_m04_couplers_ARREGION <= S_AXI_arregion;
  m04_couplers_to_m04_couplers_ARSIZE <= S_AXI_arsize;
  m04_couplers_to_m04_couplers_ARVALID <= S_AXI_arvalid;
  m04_couplers_to_m04_couplers_AWADDR <= S_AXI_awaddr;
  m04_couplers_to_m04_couplers_AWBURST <= S_AXI_awburst;
  m04_couplers_to_m04_couplers_AWCACHE <= S_AXI_awcache;
  m04_couplers_to_m04_couplers_AWLEN <= S_AXI_awlen;
  m04_couplers_to_m04_couplers_AWLOCK <= S_AXI_awlock;
  m04_couplers_to_m04_couplers_AWPROT <= S_AXI_awprot;
  m04_couplers_to_m04_couplers_AWQOS <= S_AXI_awqos;
  m04_couplers_to_m04_couplers_AWREADY <= M_AXI_awready;
  m04_couplers_to_m04_couplers_AWREGION <= S_AXI_awregion;
  m04_couplers_to_m04_couplers_AWSIZE <= S_AXI_awsize;
  m04_couplers_to_m04_couplers_AWVALID <= S_AXI_awvalid;
  m04_couplers_to_m04_couplers_BREADY <= S_AXI_bready;
  m04_couplers_to_m04_couplers_BRESP <= M_AXI_bresp;
  m04_couplers_to_m04_couplers_BVALID <= M_AXI_bvalid;
  m04_couplers_to_m04_couplers_RDATA <= M_AXI_rdata;
  m04_couplers_to_m04_couplers_RLAST <= M_AXI_rlast;
  m04_couplers_to_m04_couplers_RREADY <= S_AXI_rready;
  m04_couplers_to_m04_couplers_RRESP <= M_AXI_rresp;
  m04_couplers_to_m04_couplers_RVALID <= M_AXI_rvalid;
  m04_couplers_to_m04_couplers_WDATA <= S_AXI_wdata;
  m04_couplers_to_m04_couplers_WLAST <= S_AXI_wlast;
  m04_couplers_to_m04_couplers_WREADY <= M_AXI_wready;
  m04_couplers_to_m04_couplers_WSTRB <= S_AXI_wstrb;
  m04_couplers_to_m04_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m05_couplers_imp_S45KIJ is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m05_couplers_imp_S45KIJ;

architecture STRUCTURE of m05_couplers_imp_S45KIJ is
  component embedded_system_auto_ds_2 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component embedded_system_auto_ds_2;
  component embedded_system_auto_pc_2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component embedded_system_auto_pc_2;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_ds_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ds_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ds_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_ARREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_auto_pc_ARVALID : STD_LOGIC;
  signal auto_ds_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ds_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ds_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_AWREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_auto_pc_AWVALID : STD_LOGIC;
  signal auto_ds_to_auto_pc_BREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_auto_pc_BVALID : STD_LOGIC;
  signal auto_ds_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_auto_pc_RLAST : STD_LOGIC;
  signal auto_ds_to_auto_pc_RREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_auto_pc_RVALID : STD_LOGIC;
  signal auto_ds_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_auto_pc_WLAST : STD_LOGIC;
  signal auto_ds_to_auto_pc_WREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_WVALID : STD_LOGIC;
  signal auto_pc_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m05_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m05_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m05_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m05_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m05_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m05_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m05_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m05_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m05_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m05_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m05_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m05_couplers_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m05_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m05_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m05_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m05_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m05_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m05_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m05_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m05_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m05_couplers_RLAST : STD_LOGIC;
  signal auto_pc_to_m05_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m05_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m05_couplers_WLAST : STD_LOGIC;
  signal auto_pc_to_m05_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m05_couplers_WVALID : STD_LOGIC;
  signal m05_couplers_to_auto_ds_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_auto_ds_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_auto_ds_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_auto_ds_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m05_couplers_to_auto_ds_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_auto_ds_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_auto_ds_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_auto_ds_ARREADY : STD_LOGIC;
  signal m05_couplers_to_auto_ds_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_auto_ds_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_auto_ds_ARVALID : STD_LOGIC;
  signal m05_couplers_to_auto_ds_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_auto_ds_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_auto_ds_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_auto_ds_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m05_couplers_to_auto_ds_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_auto_ds_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_auto_ds_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_auto_ds_AWREADY : STD_LOGIC;
  signal m05_couplers_to_auto_ds_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_auto_ds_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_auto_ds_AWVALID : STD_LOGIC;
  signal m05_couplers_to_auto_ds_BREADY : STD_LOGIC;
  signal m05_couplers_to_auto_ds_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_auto_ds_BVALID : STD_LOGIC;
  signal m05_couplers_to_auto_ds_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal m05_couplers_to_auto_ds_RLAST : STD_LOGIC;
  signal m05_couplers_to_auto_ds_RREADY : STD_LOGIC;
  signal m05_couplers_to_auto_ds_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_auto_ds_RVALID : STD_LOGIC;
  signal m05_couplers_to_auto_ds_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal m05_couplers_to_auto_ds_WLAST : STD_LOGIC;
  signal m05_couplers_to_auto_ds_WREADY : STD_LOGIC;
  signal m05_couplers_to_auto_ds_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m05_couplers_to_auto_ds_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_m05_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_pc_to_m05_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_pc_to_m05_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(3 downto 0) <= auto_pc_to_m05_couplers_ARLEN(3 downto 0);
  M_AXI_arlock(1 downto 0) <= auto_pc_to_m05_couplers_ARLOCK(1 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_m05_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_pc_to_m05_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_pc_to_m05_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_m05_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_m05_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_pc_to_m05_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_pc_to_m05_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(3 downto 0) <= auto_pc_to_m05_couplers_AWLEN(3 downto 0);
  M_AXI_awlock(1 downto 0) <= auto_pc_to_m05_couplers_AWLOCK(1 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_m05_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_pc_to_m05_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_pc_to_m05_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_m05_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m05_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m05_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m05_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= auto_pc_to_m05_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_m05_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_m05_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m05_couplers_to_auto_ds_ARREADY;
  S_AXI_awready <= m05_couplers_to_auto_ds_AWREADY;
  S_AXI_bresp(1 downto 0) <= m05_couplers_to_auto_ds_BRESP(1 downto 0);
  S_AXI_bvalid <= m05_couplers_to_auto_ds_BVALID;
  S_AXI_rdata(511 downto 0) <= m05_couplers_to_auto_ds_RDATA(511 downto 0);
  S_AXI_rlast <= m05_couplers_to_auto_ds_RLAST;
  S_AXI_rresp(1 downto 0) <= m05_couplers_to_auto_ds_RRESP(1 downto 0);
  S_AXI_rvalid <= m05_couplers_to_auto_ds_RVALID;
  S_AXI_wready <= m05_couplers_to_auto_ds_WREADY;
  auto_pc_to_m05_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m05_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m05_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m05_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m05_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m05_couplers_RLAST <= M_AXI_rlast;
  auto_pc_to_m05_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m05_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m05_couplers_WREADY <= M_AXI_wready;
  m05_couplers_to_auto_ds_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m05_couplers_to_auto_ds_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m05_couplers_to_auto_ds_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m05_couplers_to_auto_ds_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m05_couplers_to_auto_ds_ARLOCK(0) <= S_AXI_arlock(0);
  m05_couplers_to_auto_ds_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m05_couplers_to_auto_ds_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m05_couplers_to_auto_ds_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m05_couplers_to_auto_ds_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m05_couplers_to_auto_ds_ARVALID <= S_AXI_arvalid;
  m05_couplers_to_auto_ds_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m05_couplers_to_auto_ds_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m05_couplers_to_auto_ds_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m05_couplers_to_auto_ds_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m05_couplers_to_auto_ds_AWLOCK(0) <= S_AXI_awlock(0);
  m05_couplers_to_auto_ds_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m05_couplers_to_auto_ds_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m05_couplers_to_auto_ds_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m05_couplers_to_auto_ds_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m05_couplers_to_auto_ds_AWVALID <= S_AXI_awvalid;
  m05_couplers_to_auto_ds_BREADY <= S_AXI_bready;
  m05_couplers_to_auto_ds_RREADY <= S_AXI_rready;
  m05_couplers_to_auto_ds_WDATA(511 downto 0) <= S_AXI_wdata(511 downto 0);
  m05_couplers_to_auto_ds_WLAST <= S_AXI_wlast;
  m05_couplers_to_auto_ds_WSTRB(63 downto 0) <= S_AXI_wstrb(63 downto 0);
  m05_couplers_to_auto_ds_WVALID <= S_AXI_wvalid;
auto_ds: component embedded_system_auto_ds_2
     port map (
      m_axi_araddr(31 downto 0) => auto_ds_to_auto_pc_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_ds_to_auto_pc_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_ds_to_auto_pc_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => auto_ds_to_auto_pc_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_ds_to_auto_pc_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_ds_to_auto_pc_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_ds_to_auto_pc_ARQOS(3 downto 0),
      m_axi_arready => auto_ds_to_auto_pc_ARREADY,
      m_axi_arregion(3 downto 0) => auto_ds_to_auto_pc_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_ds_to_auto_pc_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_ds_to_auto_pc_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_ds_to_auto_pc_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_ds_to_auto_pc_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_ds_to_auto_pc_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => auto_ds_to_auto_pc_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_ds_to_auto_pc_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_ds_to_auto_pc_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_ds_to_auto_pc_AWQOS(3 downto 0),
      m_axi_awready => auto_ds_to_auto_pc_AWREADY,
      m_axi_awregion(3 downto 0) => auto_ds_to_auto_pc_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_ds_to_auto_pc_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_ds_to_auto_pc_AWVALID,
      m_axi_bready => auto_ds_to_auto_pc_BREADY,
      m_axi_bresp(1 downto 0) => auto_ds_to_auto_pc_BRESP(1 downto 0),
      m_axi_bvalid => auto_ds_to_auto_pc_BVALID,
      m_axi_rdata(31 downto 0) => auto_ds_to_auto_pc_RDATA(31 downto 0),
      m_axi_rlast => auto_ds_to_auto_pc_RLAST,
      m_axi_rready => auto_ds_to_auto_pc_RREADY,
      m_axi_rresp(1 downto 0) => auto_ds_to_auto_pc_RRESP(1 downto 0),
      m_axi_rvalid => auto_ds_to_auto_pc_RVALID,
      m_axi_wdata(31 downto 0) => auto_ds_to_auto_pc_WDATA(31 downto 0),
      m_axi_wlast => auto_ds_to_auto_pc_WLAST,
      m_axi_wready => auto_ds_to_auto_pc_WREADY,
      m_axi_wstrb(3 downto 0) => auto_ds_to_auto_pc_WSTRB(3 downto 0),
      m_axi_wvalid => auto_ds_to_auto_pc_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(31 downto 0) => m05_couplers_to_auto_ds_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m05_couplers_to_auto_ds_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m05_couplers_to_auto_ds_ARCACHE(3 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arlen(7 downto 0) => m05_couplers_to_auto_ds_ARLEN(7 downto 0),
      s_axi_arlock(0) => m05_couplers_to_auto_ds_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m05_couplers_to_auto_ds_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m05_couplers_to_auto_ds_ARQOS(3 downto 0),
      s_axi_arready => m05_couplers_to_auto_ds_ARREADY,
      s_axi_arregion(3 downto 0) => m05_couplers_to_auto_ds_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m05_couplers_to_auto_ds_ARSIZE(2 downto 0),
      s_axi_arvalid => m05_couplers_to_auto_ds_ARVALID,
      s_axi_awaddr(31 downto 0) => m05_couplers_to_auto_ds_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m05_couplers_to_auto_ds_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m05_couplers_to_auto_ds_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => m05_couplers_to_auto_ds_AWLEN(7 downto 0),
      s_axi_awlock(0) => m05_couplers_to_auto_ds_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m05_couplers_to_auto_ds_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m05_couplers_to_auto_ds_AWQOS(3 downto 0),
      s_axi_awready => m05_couplers_to_auto_ds_AWREADY,
      s_axi_awregion(3 downto 0) => m05_couplers_to_auto_ds_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m05_couplers_to_auto_ds_AWSIZE(2 downto 0),
      s_axi_awvalid => m05_couplers_to_auto_ds_AWVALID,
      s_axi_bready => m05_couplers_to_auto_ds_BREADY,
      s_axi_bresp(1 downto 0) => m05_couplers_to_auto_ds_BRESP(1 downto 0),
      s_axi_bvalid => m05_couplers_to_auto_ds_BVALID,
      s_axi_rdata(511 downto 0) => m05_couplers_to_auto_ds_RDATA(511 downto 0),
      s_axi_rlast => m05_couplers_to_auto_ds_RLAST,
      s_axi_rready => m05_couplers_to_auto_ds_RREADY,
      s_axi_rresp(1 downto 0) => m05_couplers_to_auto_ds_RRESP(1 downto 0),
      s_axi_rvalid => m05_couplers_to_auto_ds_RVALID,
      s_axi_wdata(511 downto 0) => m05_couplers_to_auto_ds_WDATA(511 downto 0),
      s_axi_wlast => m05_couplers_to_auto_ds_WLAST,
      s_axi_wready => m05_couplers_to_auto_ds_WREADY,
      s_axi_wstrb(63 downto 0) => m05_couplers_to_auto_ds_WSTRB(63 downto 0),
      s_axi_wvalid => m05_couplers_to_auto_ds_WVALID
    );
auto_pc: component embedded_system_auto_pc_2
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_m05_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_pc_to_m05_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_pc_to_m05_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(3 downto 0) => auto_pc_to_m05_couplers_ARLEN(3 downto 0),
      m_axi_arlock(1 downto 0) => auto_pc_to_m05_couplers_ARLOCK(1 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_m05_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_pc_to_m05_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_pc_to_m05_couplers_ARREADY,
      m_axi_arsize(2 downto 0) => auto_pc_to_m05_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_pc_to_m05_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m05_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_pc_to_m05_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_pc_to_m05_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(3 downto 0) => auto_pc_to_m05_couplers_AWLEN(3 downto 0),
      m_axi_awlock(1 downto 0) => auto_pc_to_m05_couplers_AWLOCK(1 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_m05_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_pc_to_m05_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_pc_to_m05_couplers_AWREADY,
      m_axi_awsize(2 downto 0) => auto_pc_to_m05_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_pc_to_m05_couplers_AWVALID,
      m_axi_bready => auto_pc_to_m05_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m05_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m05_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m05_couplers_RDATA(31 downto 0),
      m_axi_rlast => auto_pc_to_m05_couplers_RLAST,
      m_axi_rready => auto_pc_to_m05_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m05_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m05_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m05_couplers_WDATA(31 downto 0),
      m_axi_wlast => auto_pc_to_m05_couplers_WLAST,
      m_axi_wready => auto_pc_to_m05_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_m05_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_m05_couplers_WVALID,
      s_axi_araddr(31 downto 0) => auto_ds_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => auto_ds_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => auto_ds_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => auto_ds_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => auto_ds_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => auto_ds_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => auto_ds_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => auto_ds_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => auto_ds_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => auto_ds_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => auto_ds_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => auto_ds_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => auto_ds_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => auto_ds_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => auto_ds_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => auto_ds_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => auto_ds_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => auto_ds_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => auto_ds_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => auto_ds_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => auto_ds_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => auto_ds_to_auto_pc_AWVALID,
      s_axi_bready => auto_ds_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => auto_ds_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => auto_ds_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => auto_ds_to_auto_pc_RDATA(31 downto 0),
      s_axi_rlast => auto_ds_to_auto_pc_RLAST,
      s_axi_rready => auto_ds_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => auto_ds_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => auto_ds_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => auto_ds_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => auto_ds_to_auto_pc_WLAST,
      s_axi_wready => auto_ds_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => auto_ds_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => auto_ds_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m06_couplers_imp_MECLE0 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC;
    M_AXI_arburst : out STD_LOGIC;
    M_AXI_arcache : out STD_LOGIC;
    M_AXI_arlen : out STD_LOGIC;
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC;
    M_AXI_arqos : out STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arregion : out STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC;
    M_AXI_awburst : out STD_LOGIC;
    M_AXI_awcache : out STD_LOGIC;
    M_AXI_awlen : out STD_LOGIC;
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC;
    M_AXI_awqos : out STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awregion : out STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC;
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC;
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC;
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC;
    S_AXI_arburst : in STD_LOGIC;
    S_AXI_arcache : in STD_LOGIC;
    S_AXI_arlen : in STD_LOGIC;
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC;
    S_AXI_arqos : in STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC;
    S_AXI_awburst : in STD_LOGIC;
    S_AXI_awcache : in STD_LOGIC;
    S_AXI_awlen : in STD_LOGIC;
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC;
    S_AXI_awqos : in STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC;
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC;
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC;
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end m06_couplers_imp_MECLE0;

architecture STRUCTURE of m06_couplers_imp_MECLE0 is
  signal m06_couplers_to_m06_couplers_ARADDR : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARBURST : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARCACHE : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARLEN : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARLOCK : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARPROT : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARQOS : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARREGION : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARSIZE : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARVALID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWADDR : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWBURST : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWCACHE : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWLEN : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWLOCK : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWPROT : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWQOS : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWREGION : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWSIZE : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWVALID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_BREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_BRESP : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_BVALID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_RDATA : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_RLAST : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_RREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_RRESP : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_RVALID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_WDATA : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_WLAST : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_WREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_WSTRB : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr <= m06_couplers_to_m06_couplers_ARADDR;
  M_AXI_arburst <= m06_couplers_to_m06_couplers_ARBURST;
  M_AXI_arcache <= m06_couplers_to_m06_couplers_ARCACHE;
  M_AXI_arlen <= m06_couplers_to_m06_couplers_ARLEN;
  M_AXI_arlock <= m06_couplers_to_m06_couplers_ARLOCK;
  M_AXI_arprot <= m06_couplers_to_m06_couplers_ARPROT;
  M_AXI_arqos <= m06_couplers_to_m06_couplers_ARQOS;
  M_AXI_arregion <= m06_couplers_to_m06_couplers_ARREGION;
  M_AXI_arsize <= m06_couplers_to_m06_couplers_ARSIZE;
  M_AXI_arvalid <= m06_couplers_to_m06_couplers_ARVALID;
  M_AXI_awaddr <= m06_couplers_to_m06_couplers_AWADDR;
  M_AXI_awburst <= m06_couplers_to_m06_couplers_AWBURST;
  M_AXI_awcache <= m06_couplers_to_m06_couplers_AWCACHE;
  M_AXI_awlen <= m06_couplers_to_m06_couplers_AWLEN;
  M_AXI_awlock <= m06_couplers_to_m06_couplers_AWLOCK;
  M_AXI_awprot <= m06_couplers_to_m06_couplers_AWPROT;
  M_AXI_awqos <= m06_couplers_to_m06_couplers_AWQOS;
  M_AXI_awregion <= m06_couplers_to_m06_couplers_AWREGION;
  M_AXI_awsize <= m06_couplers_to_m06_couplers_AWSIZE;
  M_AXI_awvalid <= m06_couplers_to_m06_couplers_AWVALID;
  M_AXI_bready <= m06_couplers_to_m06_couplers_BREADY;
  M_AXI_rready <= m06_couplers_to_m06_couplers_RREADY;
  M_AXI_wdata <= m06_couplers_to_m06_couplers_WDATA;
  M_AXI_wlast <= m06_couplers_to_m06_couplers_WLAST;
  M_AXI_wstrb <= m06_couplers_to_m06_couplers_WSTRB;
  M_AXI_wvalid <= m06_couplers_to_m06_couplers_WVALID;
  S_AXI_arready <= m06_couplers_to_m06_couplers_ARREADY;
  S_AXI_awready <= m06_couplers_to_m06_couplers_AWREADY;
  S_AXI_bresp <= m06_couplers_to_m06_couplers_BRESP;
  S_AXI_bvalid <= m06_couplers_to_m06_couplers_BVALID;
  S_AXI_rdata <= m06_couplers_to_m06_couplers_RDATA;
  S_AXI_rlast <= m06_couplers_to_m06_couplers_RLAST;
  S_AXI_rresp <= m06_couplers_to_m06_couplers_RRESP;
  S_AXI_rvalid <= m06_couplers_to_m06_couplers_RVALID;
  S_AXI_wready <= m06_couplers_to_m06_couplers_WREADY;
  m06_couplers_to_m06_couplers_ARADDR <= S_AXI_araddr;
  m06_couplers_to_m06_couplers_ARBURST <= S_AXI_arburst;
  m06_couplers_to_m06_couplers_ARCACHE <= S_AXI_arcache;
  m06_couplers_to_m06_couplers_ARLEN <= S_AXI_arlen;
  m06_couplers_to_m06_couplers_ARLOCK <= S_AXI_arlock;
  m06_couplers_to_m06_couplers_ARPROT <= S_AXI_arprot;
  m06_couplers_to_m06_couplers_ARQOS <= S_AXI_arqos;
  m06_couplers_to_m06_couplers_ARREADY <= M_AXI_arready;
  m06_couplers_to_m06_couplers_ARREGION <= S_AXI_arregion;
  m06_couplers_to_m06_couplers_ARSIZE <= S_AXI_arsize;
  m06_couplers_to_m06_couplers_ARVALID <= S_AXI_arvalid;
  m06_couplers_to_m06_couplers_AWADDR <= S_AXI_awaddr;
  m06_couplers_to_m06_couplers_AWBURST <= S_AXI_awburst;
  m06_couplers_to_m06_couplers_AWCACHE <= S_AXI_awcache;
  m06_couplers_to_m06_couplers_AWLEN <= S_AXI_awlen;
  m06_couplers_to_m06_couplers_AWLOCK <= S_AXI_awlock;
  m06_couplers_to_m06_couplers_AWPROT <= S_AXI_awprot;
  m06_couplers_to_m06_couplers_AWQOS <= S_AXI_awqos;
  m06_couplers_to_m06_couplers_AWREADY <= M_AXI_awready;
  m06_couplers_to_m06_couplers_AWREGION <= S_AXI_awregion;
  m06_couplers_to_m06_couplers_AWSIZE <= S_AXI_awsize;
  m06_couplers_to_m06_couplers_AWVALID <= S_AXI_awvalid;
  m06_couplers_to_m06_couplers_BREADY <= S_AXI_bready;
  m06_couplers_to_m06_couplers_BRESP <= M_AXI_bresp;
  m06_couplers_to_m06_couplers_BVALID <= M_AXI_bvalid;
  m06_couplers_to_m06_couplers_RDATA <= M_AXI_rdata;
  m06_couplers_to_m06_couplers_RLAST <= M_AXI_rlast;
  m06_couplers_to_m06_couplers_RREADY <= S_AXI_rready;
  m06_couplers_to_m06_couplers_RRESP <= M_AXI_rresp;
  m06_couplers_to_m06_couplers_RVALID <= M_AXI_rvalid;
  m06_couplers_to_m06_couplers_WDATA <= S_AXI_wdata;
  m06_couplers_to_m06_couplers_WLAST <= S_AXI_wlast;
  m06_couplers_to_m06_couplers_WREADY <= M_AXI_wready;
  m06_couplers_to_m06_couplers_WSTRB <= S_AXI_wstrb;
  m06_couplers_to_m06_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_7PPSL2 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_7PPSL2;

architecture STRUCTURE of s00_couplers_imp_7PPSL2 is
  component embedded_system_auto_pc_3 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component embedded_system_auto_pc_3;
  component embedded_system_auto_us_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component embedded_system_auto_us_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_auto_us_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_auto_us_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_auto_us_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_auto_us_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal auto_pc_to_auto_us_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_pc_to_auto_us_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_auto_us_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_auto_us_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_auto_us_ARREADY : STD_LOGIC;
  signal auto_pc_to_auto_us_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_auto_us_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_auto_us_ARVALID : STD_LOGIC;
  signal auto_pc_to_auto_us_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_auto_us_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_auto_us_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_auto_us_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal auto_pc_to_auto_us_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_pc_to_auto_us_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_auto_us_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_auto_us_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_auto_us_AWREADY : STD_LOGIC;
  signal auto_pc_to_auto_us_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_auto_us_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_auto_us_AWVALID : STD_LOGIC;
  signal auto_pc_to_auto_us_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal auto_pc_to_auto_us_BREADY : STD_LOGIC;
  signal auto_pc_to_auto_us_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_auto_us_BVALID : STD_LOGIC;
  signal auto_pc_to_auto_us_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_auto_us_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal auto_pc_to_auto_us_RLAST : STD_LOGIC;
  signal auto_pc_to_auto_us_RREADY : STD_LOGIC;
  signal auto_pc_to_auto_us_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_auto_us_RVALID : STD_LOGIC;
  signal auto_pc_to_auto_us_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_auto_us_WLAST : STD_LOGIC;
  signal auto_pc_to_auto_us_WREADY : STD_LOGIC;
  signal auto_pc_to_auto_us_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_auto_us_WVALID : STD_LOGIC;
  signal auto_us_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_us_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_us_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_us_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_us_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_us_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_us_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_us_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_us_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_us_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_us_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_us_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_us_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal auto_us_to_s00_couplers_RLAST : STD_LOGIC;
  signal auto_us_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_us_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_us_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal auto_us_to_s00_couplers_WLAST : STD_LOGIC;
  signal auto_us_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_us_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_us_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_WVALID : STD_LOGIC;
  signal NLW_auto_us_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_us_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_AXI_araddr(31 downto 0) <= auto_us_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_us_to_s00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_us_to_s00_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= auto_us_to_s00_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= auto_us_to_s00_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= auto_us_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_us_to_s00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_us_to_s00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_us_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_us_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_us_to_s00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_us_to_s00_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= auto_us_to_s00_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= auto_us_to_s00_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= auto_us_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_us_to_s00_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_us_to_s00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_us_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_us_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_us_to_s00_couplers_RREADY;
  M_AXI_wdata(511 downto 0) <= auto_us_to_s00_couplers_WDATA(511 downto 0);
  M_AXI_wlast <= auto_us_to_s00_couplers_WLAST;
  M_AXI_wstrb(63 downto 0) <= auto_us_to_s00_couplers_WSTRB(63 downto 0);
  M_AXI_wvalid <= auto_us_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= s00_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(11 downto 0) <= s00_couplers_to_auto_pc_BID(11 downto 0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(11 downto 0) <= s00_couplers_to_auto_pc_RID(11 downto 0);
  S_AXI_rlast <= s00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= s00_couplers_to_auto_pc_WREADY;
  auto_us_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_us_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_us_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_us_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_us_to_s00_couplers_RDATA(511 downto 0) <= M_AXI_rdata(511 downto 0);
  auto_us_to_s00_couplers_RLAST <= M_AXI_rlast;
  auto_us_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_us_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_us_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_auto_pc_ARID(11 downto 0) <= S_AXI_arid(11 downto 0);
  s00_couplers_to_auto_pc_ARLEN(3 downto 0) <= S_AXI_arlen(3 downto 0);
  s00_couplers_to_auto_pc_ARLOCK(1 downto 0) <= S_AXI_arlock(1 downto 0);
  s00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_auto_pc_AWID(11 downto 0) <= S_AXI_awid(11 downto 0);
  s00_couplers_to_auto_pc_AWLEN(3 downto 0) <= S_AXI_awlen(3 downto 0);
  s00_couplers_to_auto_pc_AWLOCK(1 downto 0) <= S_AXI_awlock(1 downto 0);
  s00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  s00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  s00_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_auto_pc_WID(11 downto 0) <= S_AXI_wid(11 downto 0);
  s00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  s00_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component embedded_system_auto_pc_3
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_auto_us_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_pc_to_auto_us_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_pc_to_auto_us_ARCACHE(3 downto 0),
      m_axi_arid(11 downto 0) => auto_pc_to_auto_us_ARID(11 downto 0),
      m_axi_arlen(7 downto 0) => auto_pc_to_auto_us_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_pc_to_auto_us_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_pc_to_auto_us_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_pc_to_auto_us_ARQOS(3 downto 0),
      m_axi_arready => auto_pc_to_auto_us_ARREADY,
      m_axi_arregion(3 downto 0) => auto_pc_to_auto_us_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_pc_to_auto_us_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_pc_to_auto_us_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_auto_us_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_pc_to_auto_us_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_pc_to_auto_us_AWCACHE(3 downto 0),
      m_axi_awid(11 downto 0) => auto_pc_to_auto_us_AWID(11 downto 0),
      m_axi_awlen(7 downto 0) => auto_pc_to_auto_us_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_pc_to_auto_us_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_pc_to_auto_us_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_pc_to_auto_us_AWQOS(3 downto 0),
      m_axi_awready => auto_pc_to_auto_us_AWREADY,
      m_axi_awregion(3 downto 0) => auto_pc_to_auto_us_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_pc_to_auto_us_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_pc_to_auto_us_AWVALID,
      m_axi_bid(11 downto 0) => auto_pc_to_auto_us_BID(11 downto 0),
      m_axi_bready => auto_pc_to_auto_us_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_auto_us_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_auto_us_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_auto_us_RDATA(31 downto 0),
      m_axi_rid(11 downto 0) => auto_pc_to_auto_us_RID(11 downto 0),
      m_axi_rlast => auto_pc_to_auto_us_RLAST,
      m_axi_rready => auto_pc_to_auto_us_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_auto_us_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_auto_us_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_auto_us_WDATA(31 downto 0),
      m_axi_wlast => auto_pc_to_auto_us_WLAST,
      m_axi_wready => auto_pc_to_auto_us_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_auto_us_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_auto_us_WVALID,
      s_axi_araddr(31 downto 0) => s00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 0) => s00_couplers_to_auto_pc_ARID(11 downto 0),
      s_axi_arlen(3 downto 0) => s00_couplers_to_auto_pc_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => s00_couplers_to_auto_pc_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => s00_couplers_to_auto_pc_ARREADY,
      s_axi_arsize(2 downto 0) => s00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => s00_couplers_to_auto_pc_AWID(11 downto 0),
      s_axi_awlen(3 downto 0) => s00_couplers_to_auto_pc_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => s00_couplers_to_auto_pc_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => s00_couplers_to_auto_pc_AWREADY,
      s_axi_awsize(2 downto 0) => s00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_couplers_to_auto_pc_AWVALID,
      s_axi_bid(11 downto 0) => s00_couplers_to_auto_pc_BID(11 downto 0),
      s_axi_bready => s00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => s00_couplers_to_auto_pc_RID(11 downto 0),
      s_axi_rlast => s00_couplers_to_auto_pc_RLAST,
      s_axi_rready => s00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => s00_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wid(11 downto 0) => s00_couplers_to_auto_pc_WID(11 downto 0),
      s_axi_wlast => s00_couplers_to_auto_pc_WLAST,
      s_axi_wready => s00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => s00_couplers_to_auto_pc_WVALID
    );
auto_us: component embedded_system_auto_us_0
     port map (
      m_axi_araddr(31 downto 0) => auto_us_to_s00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_us_to_s00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_us_to_s00_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => auto_us_to_s00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_us_to_s00_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_us_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_us_to_s00_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_us_to_s00_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_auto_us_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_us_to_s00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_us_to_s00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_us_to_s00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_us_to_s00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_us_to_s00_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => auto_us_to_s00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_us_to_s00_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_us_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_us_to_s00_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_us_to_s00_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => NLW_auto_us_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_us_to_s00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_us_to_s00_couplers_AWVALID,
      m_axi_bready => auto_us_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_us_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_us_to_s00_couplers_BVALID,
      m_axi_rdata(511 downto 0) => auto_us_to_s00_couplers_RDATA(511 downto 0),
      m_axi_rlast => auto_us_to_s00_couplers_RLAST,
      m_axi_rready => auto_us_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_us_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_us_to_s00_couplers_RVALID,
      m_axi_wdata(511 downto 0) => auto_us_to_s00_couplers_WDATA(511 downto 0),
      m_axi_wlast => auto_us_to_s00_couplers_WLAST,
      m_axi_wready => auto_us_to_s00_couplers_WREADY,
      m_axi_wstrb(63 downto 0) => auto_us_to_s00_couplers_WSTRB(63 downto 0),
      m_axi_wvalid => auto_us_to_s00_couplers_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(31 downto 0) => auto_pc_to_auto_us_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => auto_pc_to_auto_us_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => auto_pc_to_auto_us_ARCACHE(3 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arid(11 downto 0) => auto_pc_to_auto_us_ARID(11 downto 0),
      s_axi_arlen(7 downto 0) => auto_pc_to_auto_us_ARLEN(7 downto 0),
      s_axi_arlock(0) => auto_pc_to_auto_us_ARLOCK(0),
      s_axi_arprot(2 downto 0) => auto_pc_to_auto_us_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => auto_pc_to_auto_us_ARQOS(3 downto 0),
      s_axi_arready => auto_pc_to_auto_us_ARREADY,
      s_axi_arregion(3 downto 0) => auto_pc_to_auto_us_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => auto_pc_to_auto_us_ARSIZE(2 downto 0),
      s_axi_arvalid => auto_pc_to_auto_us_ARVALID,
      s_axi_awaddr(31 downto 0) => auto_pc_to_auto_us_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => auto_pc_to_auto_us_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => auto_pc_to_auto_us_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => auto_pc_to_auto_us_AWID(11 downto 0),
      s_axi_awlen(7 downto 0) => auto_pc_to_auto_us_AWLEN(7 downto 0),
      s_axi_awlock(0) => auto_pc_to_auto_us_AWLOCK(0),
      s_axi_awprot(2 downto 0) => auto_pc_to_auto_us_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => auto_pc_to_auto_us_AWQOS(3 downto 0),
      s_axi_awready => auto_pc_to_auto_us_AWREADY,
      s_axi_awregion(3 downto 0) => auto_pc_to_auto_us_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => auto_pc_to_auto_us_AWSIZE(2 downto 0),
      s_axi_awvalid => auto_pc_to_auto_us_AWVALID,
      s_axi_bid(11 downto 0) => auto_pc_to_auto_us_BID(11 downto 0),
      s_axi_bready => auto_pc_to_auto_us_BREADY,
      s_axi_bresp(1 downto 0) => auto_pc_to_auto_us_BRESP(1 downto 0),
      s_axi_bvalid => auto_pc_to_auto_us_BVALID,
      s_axi_rdata(31 downto 0) => auto_pc_to_auto_us_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => auto_pc_to_auto_us_RID(11 downto 0),
      s_axi_rlast => auto_pc_to_auto_us_RLAST,
      s_axi_rready => auto_pc_to_auto_us_RREADY,
      s_axi_rresp(1 downto 0) => auto_pc_to_auto_us_RRESP(1 downto 0),
      s_axi_rvalid => auto_pc_to_auto_us_RVALID,
      s_axi_wdata(31 downto 0) => auto_pc_to_auto_us_WDATA(31 downto 0),
      s_axi_wlast => auto_pc_to_auto_us_WLAST,
      s_axi_wready => auto_pc_to_auto_us_WREADY,
      s_axi_wstrb(3 downto 0) => auto_pc_to_auto_us_WSTRB(3 downto 0),
      s_axi_wvalid => auto_pc_to_auto_us_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s01_couplers_imp_1GSL6UW is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC
  );
end s01_couplers_imp_1GSL6UW;

architecture STRUCTURE of s01_couplers_imp_1GSL6UW is
  component embedded_system_auto_us_1 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component embedded_system_auto_us_1;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_us_to_s01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_us_to_s01_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s01_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_us_to_s01_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_us_to_s01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_s01_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s01_couplers_ARREADY : STD_LOGIC;
  signal auto_us_to_s01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_s01_couplers_ARVALID : STD_LOGIC;
  signal auto_us_to_s01_couplers_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal auto_us_to_s01_couplers_RLAST : STD_LOGIC;
  signal auto_us_to_s01_couplers_RREADY : STD_LOGIC;
  signal auto_us_to_s01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s01_couplers_RVALID : STD_LOGIC;
  signal s01_couplers_to_auto_us_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_auto_us_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_auto_us_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_auto_us_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_auto_us_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_auto_us_ARREADY : STD_LOGIC;
  signal s01_couplers_to_auto_us_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_auto_us_ARVALID : STD_LOGIC;
  signal s01_couplers_to_auto_us_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_auto_us_RLAST : STD_LOGIC;
  signal s01_couplers_to_auto_us_RREADY : STD_LOGIC;
  signal s01_couplers_to_auto_us_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_auto_us_RVALID : STD_LOGIC;
  signal NLW_auto_us_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_AXI_araddr(31 downto 0) <= auto_us_to_s01_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_us_to_s01_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_us_to_s01_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= auto_us_to_s01_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= auto_us_to_s01_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= auto_us_to_s01_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_us_to_s01_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_us_to_s01_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_us_to_s01_couplers_ARVALID;
  M_AXI_rready <= auto_us_to_s01_couplers_RREADY;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s01_couplers_to_auto_us_ARREADY;
  S_AXI_rdata(31 downto 0) <= s01_couplers_to_auto_us_RDATA(31 downto 0);
  S_AXI_rlast <= s01_couplers_to_auto_us_RLAST;
  S_AXI_rresp(1 downto 0) <= s01_couplers_to_auto_us_RRESP(1 downto 0);
  S_AXI_rvalid <= s01_couplers_to_auto_us_RVALID;
  auto_us_to_s01_couplers_ARREADY <= M_AXI_arready;
  auto_us_to_s01_couplers_RDATA(511 downto 0) <= M_AXI_rdata(511 downto 0);
  auto_us_to_s01_couplers_RLAST <= M_AXI_rlast;
  auto_us_to_s01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_us_to_s01_couplers_RVALID <= M_AXI_rvalid;
  s01_couplers_to_auto_us_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s01_couplers_to_auto_us_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s01_couplers_to_auto_us_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s01_couplers_to_auto_us_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s01_couplers_to_auto_us_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s01_couplers_to_auto_us_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s01_couplers_to_auto_us_ARVALID <= S_AXI_arvalid;
  s01_couplers_to_auto_us_RREADY <= S_AXI_rready;
auto_us: component embedded_system_auto_us_1
     port map (
      m_axi_araddr(31 downto 0) => auto_us_to_s01_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_us_to_s01_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_us_to_s01_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => auto_us_to_s01_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_us_to_s01_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_us_to_s01_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_us_to_s01_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_us_to_s01_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_auto_us_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_us_to_s01_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_us_to_s01_couplers_ARVALID,
      m_axi_rdata(511 downto 0) => auto_us_to_s01_couplers_RDATA(511 downto 0),
      m_axi_rlast => auto_us_to_s01_couplers_RLAST,
      m_axi_rready => auto_us_to_s01_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_us_to_s01_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_us_to_s01_couplers_RVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(31 downto 0) => s01_couplers_to_auto_us_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s01_couplers_to_auto_us_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s01_couplers_to_auto_us_ARCACHE(3 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arlen(7 downto 0) => s01_couplers_to_auto_us_ARLEN(7 downto 0),
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => s01_couplers_to_auto_us_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => s01_couplers_to_auto_us_ARREADY,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => s01_couplers_to_auto_us_ARSIZE(2 downto 0),
      s_axi_arvalid => s01_couplers_to_auto_us_ARVALID,
      s_axi_rdata(31 downto 0) => s01_couplers_to_auto_us_RDATA(31 downto 0),
      s_axi_rlast => s01_couplers_to_auto_us_RLAST,
      s_axi_rready => s01_couplers_to_auto_us_RREADY,
      s_axi_rresp(1 downto 0) => s01_couplers_to_auto_us_RRESP(1 downto 0),
      s_axi_rvalid => s01_couplers_to_auto_us_RVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s02_couplers_imp_12R4RL7 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s02_couplers_imp_12R4RL7;

architecture STRUCTURE of s02_couplers_imp_12R4RL7 is
  component embedded_system_auto_us_2 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC
  );
  end component embedded_system_auto_us_2;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_us_to_s02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_us_to_s02_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s02_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s02_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_us_to_s02_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_us_to_s02_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_s02_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s02_couplers_AWREADY : STD_LOGIC;
  signal auto_us_to_s02_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_s02_couplers_AWVALID : STD_LOGIC;
  signal auto_us_to_s02_couplers_BREADY : STD_LOGIC;
  signal auto_us_to_s02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s02_couplers_BVALID : STD_LOGIC;
  signal auto_us_to_s02_couplers_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal auto_us_to_s02_couplers_WLAST : STD_LOGIC;
  signal auto_us_to_s02_couplers_WREADY : STD_LOGIC;
  signal auto_us_to_s02_couplers_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_us_to_s02_couplers_WVALID : STD_LOGIC;
  signal s02_couplers_to_auto_us_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_auto_us_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_auto_us_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_auto_us_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s02_couplers_to_auto_us_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_auto_us_AWREADY : STD_LOGIC;
  signal s02_couplers_to_auto_us_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_auto_us_AWVALID : STD_LOGIC;
  signal s02_couplers_to_auto_us_BREADY : STD_LOGIC;
  signal s02_couplers_to_auto_us_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_auto_us_BVALID : STD_LOGIC;
  signal s02_couplers_to_auto_us_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_auto_us_WLAST : STD_LOGIC;
  signal s02_couplers_to_auto_us_WREADY : STD_LOGIC;
  signal s02_couplers_to_auto_us_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_auto_us_WVALID : STD_LOGIC;
  signal NLW_auto_us_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_AXI_awaddr(31 downto 0) <= auto_us_to_s02_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_us_to_s02_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_us_to_s02_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= auto_us_to_s02_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= auto_us_to_s02_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= auto_us_to_s02_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_us_to_s02_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_us_to_s02_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_us_to_s02_couplers_AWVALID;
  M_AXI_bready <= auto_us_to_s02_couplers_BREADY;
  M_AXI_wdata(511 downto 0) <= auto_us_to_s02_couplers_WDATA(511 downto 0);
  M_AXI_wlast <= auto_us_to_s02_couplers_WLAST;
  M_AXI_wstrb(63 downto 0) <= auto_us_to_s02_couplers_WSTRB(63 downto 0);
  M_AXI_wvalid <= auto_us_to_s02_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_awready <= s02_couplers_to_auto_us_AWREADY;
  S_AXI_bresp(1 downto 0) <= s02_couplers_to_auto_us_BRESP(1 downto 0);
  S_AXI_bvalid <= s02_couplers_to_auto_us_BVALID;
  S_AXI_wready <= s02_couplers_to_auto_us_WREADY;
  auto_us_to_s02_couplers_AWREADY <= M_AXI_awready;
  auto_us_to_s02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_us_to_s02_couplers_BVALID <= M_AXI_bvalid;
  auto_us_to_s02_couplers_WREADY <= M_AXI_wready;
  s02_couplers_to_auto_us_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s02_couplers_to_auto_us_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s02_couplers_to_auto_us_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s02_couplers_to_auto_us_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s02_couplers_to_auto_us_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s02_couplers_to_auto_us_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s02_couplers_to_auto_us_AWVALID <= S_AXI_awvalid;
  s02_couplers_to_auto_us_BREADY <= S_AXI_bready;
  s02_couplers_to_auto_us_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s02_couplers_to_auto_us_WLAST <= S_AXI_wlast;
  s02_couplers_to_auto_us_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s02_couplers_to_auto_us_WVALID <= S_AXI_wvalid;
auto_us: component embedded_system_auto_us_2
     port map (
      m_axi_awaddr(31 downto 0) => auto_us_to_s02_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_us_to_s02_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_us_to_s02_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => auto_us_to_s02_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_us_to_s02_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_us_to_s02_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_us_to_s02_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_us_to_s02_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => NLW_auto_us_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_us_to_s02_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_us_to_s02_couplers_AWVALID,
      m_axi_bready => auto_us_to_s02_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_us_to_s02_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_us_to_s02_couplers_BVALID,
      m_axi_wdata(511 downto 0) => auto_us_to_s02_couplers_WDATA(511 downto 0),
      m_axi_wlast => auto_us_to_s02_couplers_WLAST,
      m_axi_wready => auto_us_to_s02_couplers_WREADY,
      m_axi_wstrb(63 downto 0) => auto_us_to_s02_couplers_WSTRB(63 downto 0),
      m_axi_wvalid => auto_us_to_s02_couplers_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_aresetn => S_ARESETN_1,
      s_axi_awaddr(31 downto 0) => s02_couplers_to_auto_us_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s02_couplers_to_auto_us_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s02_couplers_to_auto_us_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => s02_couplers_to_auto_us_AWLEN(7 downto 0),
      s_axi_awlock(0) => '0',
      s_axi_awprot(2 downto 0) => s02_couplers_to_auto_us_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => s02_couplers_to_auto_us_AWREADY,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => s02_couplers_to_auto_us_AWSIZE(2 downto 0),
      s_axi_awvalid => s02_couplers_to_auto_us_AWVALID,
      s_axi_bready => s02_couplers_to_auto_us_BREADY,
      s_axi_bresp(1 downto 0) => s02_couplers_to_auto_us_BRESP(1 downto 0),
      s_axi_bvalid => s02_couplers_to_auto_us_BVALID,
      s_axi_wdata(31 downto 0) => s02_couplers_to_auto_us_WDATA(31 downto 0),
      s_axi_wlast => s02_couplers_to_auto_us_WLAST,
      s_axi_wready => s02_couplers_to_auto_us_WREADY,
      s_axi_wstrb(3 downto 0) => s02_couplers_to_auto_us_WSTRB(3 downto 0),
      s_axi_wvalid => s02_couplers_to_auto_us_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity embedded_system_ps7_0_axi_periph_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC;
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_wvalid : out STD_LOGIC;
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC;
    M02_AXI_arburst : out STD_LOGIC;
    M02_AXI_arcache : out STD_LOGIC;
    M02_AXI_arlen : out STD_LOGIC;
    M02_AXI_arlock : out STD_LOGIC;
    M02_AXI_arprot : out STD_LOGIC;
    M02_AXI_arqos : out STD_LOGIC;
    M02_AXI_arready : in STD_LOGIC;
    M02_AXI_arregion : out STD_LOGIC;
    M02_AXI_arsize : out STD_LOGIC;
    M02_AXI_arvalid : out STD_LOGIC;
    M02_AXI_awaddr : out STD_LOGIC;
    M02_AXI_awburst : out STD_LOGIC;
    M02_AXI_awcache : out STD_LOGIC;
    M02_AXI_awlen : out STD_LOGIC;
    M02_AXI_awlock : out STD_LOGIC;
    M02_AXI_awprot : out STD_LOGIC;
    M02_AXI_awqos : out STD_LOGIC;
    M02_AXI_awready : in STD_LOGIC;
    M02_AXI_awregion : out STD_LOGIC;
    M02_AXI_awsize : out STD_LOGIC;
    M02_AXI_awvalid : out STD_LOGIC;
    M02_AXI_bready : out STD_LOGIC;
    M02_AXI_bresp : in STD_LOGIC;
    M02_AXI_bvalid : in STD_LOGIC;
    M02_AXI_rdata : in STD_LOGIC;
    M02_AXI_rlast : in STD_LOGIC;
    M02_AXI_rready : out STD_LOGIC;
    M02_AXI_rresp : in STD_LOGIC;
    M02_AXI_rvalid : in STD_LOGIC;
    M02_AXI_wdata : out STD_LOGIC;
    M02_AXI_wlast : out STD_LOGIC;
    M02_AXI_wready : in STD_LOGIC;
    M02_AXI_wstrb : out STD_LOGIC;
    M02_AXI_wvalid : out STD_LOGIC;
    M03_ACLK : in STD_LOGIC;
    M03_ARESETN : in STD_LOGIC;
    M03_AXI_araddr : out STD_LOGIC;
    M03_AXI_arburst : out STD_LOGIC;
    M03_AXI_arcache : out STD_LOGIC;
    M03_AXI_arlen : out STD_LOGIC;
    M03_AXI_arlock : out STD_LOGIC;
    M03_AXI_arprot : out STD_LOGIC;
    M03_AXI_arqos : out STD_LOGIC;
    M03_AXI_arready : in STD_LOGIC;
    M03_AXI_arregion : out STD_LOGIC;
    M03_AXI_arsize : out STD_LOGIC;
    M03_AXI_arvalid : out STD_LOGIC;
    M03_AXI_awaddr : out STD_LOGIC;
    M03_AXI_awburst : out STD_LOGIC;
    M03_AXI_awcache : out STD_LOGIC;
    M03_AXI_awlen : out STD_LOGIC;
    M03_AXI_awlock : out STD_LOGIC;
    M03_AXI_awprot : out STD_LOGIC;
    M03_AXI_awqos : out STD_LOGIC;
    M03_AXI_awready : in STD_LOGIC;
    M03_AXI_awregion : out STD_LOGIC;
    M03_AXI_awsize : out STD_LOGIC;
    M03_AXI_awvalid : out STD_LOGIC;
    M03_AXI_bready : out STD_LOGIC;
    M03_AXI_bresp : in STD_LOGIC;
    M03_AXI_bvalid : in STD_LOGIC;
    M03_AXI_rdata : in STD_LOGIC;
    M03_AXI_rlast : in STD_LOGIC;
    M03_AXI_rready : out STD_LOGIC;
    M03_AXI_rresp : in STD_LOGIC;
    M03_AXI_rvalid : in STD_LOGIC;
    M03_AXI_wdata : out STD_LOGIC;
    M03_AXI_wlast : out STD_LOGIC;
    M03_AXI_wready : in STD_LOGIC;
    M03_AXI_wstrb : out STD_LOGIC;
    M03_AXI_wvalid : out STD_LOGIC;
    M04_ACLK : in STD_LOGIC;
    M04_ARESETN : in STD_LOGIC;
    M04_AXI_araddr : out STD_LOGIC;
    M04_AXI_arburst : out STD_LOGIC;
    M04_AXI_arcache : out STD_LOGIC;
    M04_AXI_arlen : out STD_LOGIC;
    M04_AXI_arlock : out STD_LOGIC;
    M04_AXI_arprot : out STD_LOGIC;
    M04_AXI_arqos : out STD_LOGIC;
    M04_AXI_arready : in STD_LOGIC;
    M04_AXI_arregion : out STD_LOGIC;
    M04_AXI_arsize : out STD_LOGIC;
    M04_AXI_arvalid : out STD_LOGIC;
    M04_AXI_awaddr : out STD_LOGIC;
    M04_AXI_awburst : out STD_LOGIC;
    M04_AXI_awcache : out STD_LOGIC;
    M04_AXI_awlen : out STD_LOGIC;
    M04_AXI_awlock : out STD_LOGIC;
    M04_AXI_awprot : out STD_LOGIC;
    M04_AXI_awqos : out STD_LOGIC;
    M04_AXI_awready : in STD_LOGIC;
    M04_AXI_awregion : out STD_LOGIC;
    M04_AXI_awsize : out STD_LOGIC;
    M04_AXI_awvalid : out STD_LOGIC;
    M04_AXI_bready : out STD_LOGIC;
    M04_AXI_bresp : in STD_LOGIC;
    M04_AXI_bvalid : in STD_LOGIC;
    M04_AXI_rdata : in STD_LOGIC;
    M04_AXI_rlast : in STD_LOGIC;
    M04_AXI_rready : out STD_LOGIC;
    M04_AXI_rresp : in STD_LOGIC;
    M04_AXI_rvalid : in STD_LOGIC;
    M04_AXI_wdata : out STD_LOGIC;
    M04_AXI_wlast : out STD_LOGIC;
    M04_AXI_wready : in STD_LOGIC;
    M04_AXI_wstrb : out STD_LOGIC;
    M04_AXI_wvalid : out STD_LOGIC;
    M05_ACLK : in STD_LOGIC;
    M05_ARESETN : in STD_LOGIC;
    M05_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_arready : in STD_LOGIC;
    M05_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_arvalid : out STD_LOGIC;
    M05_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_awready : in STD_LOGIC;
    M05_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_awvalid : out STD_LOGIC;
    M05_AXI_bready : out STD_LOGIC;
    M05_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_bvalid : in STD_LOGIC;
    M05_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_rlast : in STD_LOGIC;
    M05_AXI_rready : out STD_LOGIC;
    M05_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_rvalid : in STD_LOGIC;
    M05_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_wlast : out STD_LOGIC;
    M05_AXI_wready : in STD_LOGIC;
    M05_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_wvalid : out STD_LOGIC;
    M06_ACLK : in STD_LOGIC;
    M06_ARESETN : in STD_LOGIC;
    M06_AXI_araddr : out STD_LOGIC;
    M06_AXI_arburst : out STD_LOGIC;
    M06_AXI_arcache : out STD_LOGIC;
    M06_AXI_arlen : out STD_LOGIC;
    M06_AXI_arlock : out STD_LOGIC;
    M06_AXI_arprot : out STD_LOGIC;
    M06_AXI_arqos : out STD_LOGIC;
    M06_AXI_arready : in STD_LOGIC;
    M06_AXI_arregion : out STD_LOGIC;
    M06_AXI_arsize : out STD_LOGIC;
    M06_AXI_arvalid : out STD_LOGIC;
    M06_AXI_awaddr : out STD_LOGIC;
    M06_AXI_awburst : out STD_LOGIC;
    M06_AXI_awcache : out STD_LOGIC;
    M06_AXI_awlen : out STD_LOGIC;
    M06_AXI_awlock : out STD_LOGIC;
    M06_AXI_awprot : out STD_LOGIC;
    M06_AXI_awqos : out STD_LOGIC;
    M06_AXI_awready : in STD_LOGIC;
    M06_AXI_awregion : out STD_LOGIC;
    M06_AXI_awsize : out STD_LOGIC;
    M06_AXI_awvalid : out STD_LOGIC;
    M06_AXI_bready : out STD_LOGIC;
    M06_AXI_bresp : in STD_LOGIC;
    M06_AXI_bvalid : in STD_LOGIC;
    M06_AXI_rdata : in STD_LOGIC;
    M06_AXI_rlast : in STD_LOGIC;
    M06_AXI_rready : out STD_LOGIC;
    M06_AXI_rresp : in STD_LOGIC;
    M06_AXI_rvalid : in STD_LOGIC;
    M06_AXI_wdata : out STD_LOGIC;
    M06_AXI_wlast : out STD_LOGIC;
    M06_AXI_wready : in STD_LOGIC;
    M06_AXI_wstrb : out STD_LOGIC;
    M06_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC;
    S01_ACLK : in STD_LOGIC;
    S01_ARESETN : in STD_LOGIC;
    S01_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arready : out STD_LOGIC;
    S01_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arvalid : in STD_LOGIC;
    S01_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_rlast : out STD_LOGIC;
    S01_AXI_rready : in STD_LOGIC;
    S01_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_rvalid : out STD_LOGIC;
    S02_ACLK : in STD_LOGIC;
    S02_ARESETN : in STD_LOGIC;
    S02_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awready : out STD_LOGIC;
    S02_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awvalid : in STD_LOGIC;
    S02_AXI_bready : in STD_LOGIC;
    S02_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_bvalid : out STD_LOGIC;
    S02_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_wlast : in STD_LOGIC;
    S02_AXI_wready : out STD_LOGIC;
    S02_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_wvalid : in STD_LOGIC
  );
end embedded_system_ps7_0_axi_periph_0;

architecture STRUCTURE of embedded_system_ps7_0_axi_periph_0 is
  component embedded_system_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 1535 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 191 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 1535 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 223 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 55 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 20 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 27 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 20 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 27 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 27 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 3583 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 447 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 223 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 55 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 20 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 27 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 20 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 27 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 27 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 3583 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component embedded_system_xbar_0;
  signal M00_ACLK_1 : STD_LOGIC;
  signal M00_ARESETN_1 : STD_LOGIC;
  signal M01_ACLK_1 : STD_LOGIC;
  signal M01_ARESETN_1 : STD_LOGIC;
  signal M02_ACLK_1 : STD_LOGIC;
  signal M02_ARESETN_1 : STD_LOGIC;
  signal M03_ACLK_1 : STD_LOGIC;
  signal M03_ARESETN_1 : STD_LOGIC;
  signal M04_ACLK_1 : STD_LOGIC;
  signal M04_ARESETN_1 : STD_LOGIC;
  signal M05_ACLK_1 : STD_LOGIC;
  signal M05_ARESETN_1 : STD_LOGIC;
  signal M06_ACLK_1 : STD_LOGIC;
  signal M06_ARESETN_1 : STD_LOGIC;
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal S01_ACLK_1 : STD_LOGIC;
  signal S01_ARESETN_1 : STD_LOGIC;
  signal S02_ACLK_1 : STD_LOGIC;
  signal S02_ARESETN_1 : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_ARBURST : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_ARCACHE : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_ARLEN : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_ARLOCK : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_ARPROT : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_ARQOS : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_ARREGION : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_ARSIZE : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_AWBURST : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_AWCACHE : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_AWLEN : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_AWLOCK : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_AWPROT : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_AWQOS : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_AWREGION : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_AWSIZE : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_RLAST : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_WLAST : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_ARBURST : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_ARCACHE : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_ARLEN : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_ARLOCK : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_ARPROT : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_ARQOS : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_ARREGION : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_ARSIZE : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_AWBURST : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_AWCACHE : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_AWLEN : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_AWLOCK : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_AWPROT : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_AWQOS : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_AWREGION : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_AWSIZE : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_RLAST : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_WLAST : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_ARBURST : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_ARCACHE : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_ARLEN : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_ARLOCK : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_ARPROT : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_ARQOS : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_ARREGION : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_ARSIZE : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_AWBURST : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_AWCACHE : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_AWLEN : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_AWLOCK : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_AWPROT : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_AWQOS : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_AWREGION : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_AWSIZE : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_RLAST : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_WLAST : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC;
  signal m05_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_ps7_0_axi_periph_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_ps7_0_axi_periph_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_ps7_0_axi_periph_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_ps7_0_axi_periph_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_ps7_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_ps7_0_axi_periph_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m05_couplers_to_ps7_0_axi_periph_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m05_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_ps7_0_axi_periph_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_ps7_0_axi_periph_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_ps7_0_axi_periph_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_ps7_0_axi_periph_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_ps7_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_ps7_0_axi_periph_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m05_couplers_to_ps7_0_axi_periph_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m05_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC;
  signal m05_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC;
  signal m05_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_ps7_0_axi_periph_RLAST : STD_LOGIC;
  signal m05_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC;
  signal m05_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC;
  signal m05_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_ps7_0_axi_periph_WLAST : STD_LOGIC;
  signal m05_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC;
  signal m05_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_ARBURST : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_ARCACHE : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_ARLEN : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_ARLOCK : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_ARPROT : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_ARQOS : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_ARREGION : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_ARSIZE : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_AWBURST : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_AWCACHE : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_AWLEN : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_AWLOCK : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_AWPROT : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_AWQOS : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_AWREGION : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_AWSIZE : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_RLAST : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_WLAST : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_ACLK_net : STD_LOGIC;
  signal ps7_0_axi_periph_ARESETN_net : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_RLAST : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_WLAST : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_to_s01_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s01_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ps7_0_axi_periph_to_s01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_to_s01_couplers_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_to_s01_couplers_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_to_s01_couplers_RLAST : STD_LOGIC;
  signal ps7_0_axi_periph_to_s01_couplers_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s01_couplers_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_to_s02_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s02_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s02_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ps7_0_axi_periph_to_s02_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_to_s02_couplers_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s02_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_to_s02_couplers_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s02_couplers_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s02_couplers_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_to_s02_couplers_WLAST : STD_LOGIC;
  signal ps7_0_axi_periph_to_s02_couplers_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s02_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s00_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s00_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_xbar_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 1023 downto 512 );
  signal s01_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s02_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s02_couplers_to_xbar_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s02_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s02_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal s02_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s02_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s02_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s02_couplers_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal xbar_to_m00_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal xbar_to_m00_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_ARBURST : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal xbar_to_m01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_ARLEN : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal xbar_to_m01_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARQOS : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_ARREGION : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_AWBURST : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal xbar_to_m01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_AWLEN : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal xbar_to_m01_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWQOS : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_AWREGION : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal xbar_to_m01_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 1023 downto 512 );
  signal xbar_to_m01_couplers_WLAST : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 127 downto 64 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_ARBURST : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal xbar_to_m02_couplers_ARCACHE : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_ARLEN : STD_LOGIC_VECTOR ( 23 downto 16 );
  signal xbar_to_m02_couplers_ARLOCK : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_ARPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_ARQOS : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_ARREGION : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_ARSIZE : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_AWBURST : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal xbar_to_m02_couplers_AWCACHE : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_AWLEN : STD_LOGIC_VECTOR ( 23 downto 16 );
  signal xbar_to_m02_couplers_AWLOCK : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_AWQOS : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_AWREGION : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_AWSIZE : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BRESP : STD_LOGIC;
  signal xbar_to_m02_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_RDATA : STD_LOGIC;
  signal xbar_to_m02_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_RRESP : STD_LOGIC;
  signal xbar_to_m02_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 1535 downto 1024 );
  signal xbar_to_m02_couplers_WLAST : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 191 downto 128 );
  signal xbar_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_ARBURST : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal xbar_to_m03_couplers_ARCACHE : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_ARLEN : STD_LOGIC_VECTOR ( 31 downto 24 );
  signal xbar_to_m03_couplers_ARLOCK : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_ARPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_ARQOS : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_ARREGION : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_ARSIZE : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_ARVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_AWBURST : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal xbar_to_m03_couplers_AWCACHE : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_AWLEN : STD_LOGIC_VECTOR ( 31 downto 24 );
  signal xbar_to_m03_couplers_AWLOCK : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_AWPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_AWQOS : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_AWREGION : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_AWSIZE : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_AWVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BRESP : STD_LOGIC;
  signal xbar_to_m03_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_RDATA : STD_LOGIC;
  signal xbar_to_m03_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m03_couplers_RREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_RRESP : STD_LOGIC;
  signal xbar_to_m03_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 2047 downto 1536 );
  signal xbar_to_m03_couplers_WLAST : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 255 downto 192 );
  signal xbar_to_m03_couplers_WVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_ARBURST : STD_LOGIC_VECTOR ( 9 downto 8 );
  signal xbar_to_m04_couplers_ARCACHE : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_ARLEN : STD_LOGIC_VECTOR ( 39 downto 32 );
  signal xbar_to_m04_couplers_ARLOCK : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_ARPROT : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_ARQOS : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_ARREGION : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_ARSIZE : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_ARVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_AWBURST : STD_LOGIC_VECTOR ( 9 downto 8 );
  signal xbar_to_m04_couplers_AWCACHE : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_AWLEN : STD_LOGIC_VECTOR ( 39 downto 32 );
  signal xbar_to_m04_couplers_AWLOCK : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_AWPROT : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_AWQOS : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_AWREGION : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_AWSIZE : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_AWVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BRESP : STD_LOGIC;
  signal xbar_to_m04_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_RDATA : STD_LOGIC;
  signal xbar_to_m04_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m04_couplers_RREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_RRESP : STD_LOGIC;
  signal xbar_to_m04_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 2559 downto 2048 );
  signal xbar_to_m04_couplers_WLAST : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 319 downto 256 );
  signal xbar_to_m04_couplers_WVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_ARBURST : STD_LOGIC_VECTOR ( 11 downto 10 );
  signal xbar_to_m05_couplers_ARCACHE : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_ARLEN : STD_LOGIC_VECTOR ( 47 downto 40 );
  signal xbar_to_m05_couplers_ARLOCK : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_ARPROT : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_ARQOS : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_ARREGION : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_ARSIZE : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_ARVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_AWBURST : STD_LOGIC_VECTOR ( 11 downto 10 );
  signal xbar_to_m05_couplers_AWCACHE : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_AWLEN : STD_LOGIC_VECTOR ( 47 downto 40 );
  signal xbar_to_m05_couplers_AWLOCK : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_AWPROT : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_AWQOS : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_AWREGION : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_AWSIZE : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_AWVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal xbar_to_m05_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m05_couplers_RREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 3071 downto 2560 );
  signal xbar_to_m05_couplers_WLAST : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 383 downto 320 );
  signal xbar_to_m05_couplers_WVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m06_couplers_ARADDR : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_ARBURST : STD_LOGIC_VECTOR ( 13 downto 12 );
  signal xbar_to_m06_couplers_ARCACHE : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_ARLEN : STD_LOGIC_VECTOR ( 55 downto 48 );
  signal xbar_to_m06_couplers_ARLOCK : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_ARPROT : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_ARQOS : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_ARREGION : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_ARSIZE : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_ARVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_AWADDR : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_AWBURST : STD_LOGIC_VECTOR ( 13 downto 12 );
  signal xbar_to_m06_couplers_AWCACHE : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_AWLEN : STD_LOGIC_VECTOR ( 55 downto 48 );
  signal xbar_to_m06_couplers_AWLOCK : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_AWPROT : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_AWQOS : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_AWREGION : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_AWSIZE : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_AWVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_BREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_BRESP : STD_LOGIC;
  signal xbar_to_m06_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_RDATA : STD_LOGIC;
  signal xbar_to_m06_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m06_couplers_RREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_RRESP : STD_LOGIC;
  signal xbar_to_m06_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_WDATA : STD_LOGIC_VECTOR ( 3583 downto 3072 );
  signal xbar_to_m06_couplers_WLAST : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_WSTRB : STD_LOGIC_VECTOR ( 447 downto 384 );
  signal xbar_to_m06_couplers_WVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal NLW_xbar_s_axi_arready_UNCONNECTED : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_xbar_s_axi_awready_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_xbar_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_xbar_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_xbar_s_axi_bvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_xbar_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 1535 downto 1024 );
  signal NLW_xbar_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_xbar_s_axi_rlast_UNCONNECTED : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_xbar_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal NLW_xbar_s_axi_rvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_xbar_s_axi_wready_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
begin
  M00_ACLK_1 <= M00_ACLK;
  M00_ARESETN_1 <= M00_ARESETN;
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0);
  M00_AXI_arvalid <= m00_couplers_to_ps7_0_axi_periph_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0);
  M00_AXI_awvalid <= m00_couplers_to_ps7_0_axi_periph_AWVALID;
  M00_AXI_bready <= m00_couplers_to_ps7_0_axi_periph_BREADY;
  M00_AXI_rready <= m00_couplers_to_ps7_0_axi_periph_RREADY;
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0);
  M00_AXI_wstrb(3 downto 0) <= m00_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0);
  M00_AXI_wvalid <= m00_couplers_to_ps7_0_axi_periph_WVALID;
  M01_ACLK_1 <= M01_ACLK;
  M01_ARESETN_1 <= M01_ARESETN;
  M01_AXI_araddr(31 downto 0) <= m01_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0);
  M01_AXI_arvalid <= m01_couplers_to_ps7_0_axi_periph_ARVALID;
  M01_AXI_awaddr(31 downto 0) <= m01_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0);
  M01_AXI_awvalid <= m01_couplers_to_ps7_0_axi_periph_AWVALID;
  M01_AXI_bready <= m01_couplers_to_ps7_0_axi_periph_BREADY;
  M01_AXI_rready <= m01_couplers_to_ps7_0_axi_periph_RREADY;
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0);
  M01_AXI_wvalid <= m01_couplers_to_ps7_0_axi_periph_WVALID;
  M02_ACLK_1 <= M02_ACLK;
  M02_ARESETN_1 <= M02_ARESETN;
  M02_AXI_araddr <= m02_couplers_to_ps7_0_axi_periph_ARADDR;
  M02_AXI_arburst <= m02_couplers_to_ps7_0_axi_periph_ARBURST;
  M02_AXI_arcache <= m02_couplers_to_ps7_0_axi_periph_ARCACHE;
  M02_AXI_arlen <= m02_couplers_to_ps7_0_axi_periph_ARLEN;
  M02_AXI_arlock <= m02_couplers_to_ps7_0_axi_periph_ARLOCK;
  M02_AXI_arprot <= m02_couplers_to_ps7_0_axi_periph_ARPROT;
  M02_AXI_arqos <= m02_couplers_to_ps7_0_axi_periph_ARQOS;
  M02_AXI_arregion <= m02_couplers_to_ps7_0_axi_periph_ARREGION;
  M02_AXI_arsize <= m02_couplers_to_ps7_0_axi_periph_ARSIZE;
  M02_AXI_arvalid <= m02_couplers_to_ps7_0_axi_periph_ARVALID;
  M02_AXI_awaddr <= m02_couplers_to_ps7_0_axi_periph_AWADDR;
  M02_AXI_awburst <= m02_couplers_to_ps7_0_axi_periph_AWBURST;
  M02_AXI_awcache <= m02_couplers_to_ps7_0_axi_periph_AWCACHE;
  M02_AXI_awlen <= m02_couplers_to_ps7_0_axi_periph_AWLEN;
  M02_AXI_awlock <= m02_couplers_to_ps7_0_axi_periph_AWLOCK;
  M02_AXI_awprot <= m02_couplers_to_ps7_0_axi_periph_AWPROT;
  M02_AXI_awqos <= m02_couplers_to_ps7_0_axi_periph_AWQOS;
  M02_AXI_awregion <= m02_couplers_to_ps7_0_axi_periph_AWREGION;
  M02_AXI_awsize <= m02_couplers_to_ps7_0_axi_periph_AWSIZE;
  M02_AXI_awvalid <= m02_couplers_to_ps7_0_axi_periph_AWVALID;
  M02_AXI_bready <= m02_couplers_to_ps7_0_axi_periph_BREADY;
  M02_AXI_rready <= m02_couplers_to_ps7_0_axi_periph_RREADY;
  M02_AXI_wdata <= m02_couplers_to_ps7_0_axi_periph_WDATA;
  M02_AXI_wlast <= m02_couplers_to_ps7_0_axi_periph_WLAST;
  M02_AXI_wstrb <= m02_couplers_to_ps7_0_axi_periph_WSTRB;
  M02_AXI_wvalid <= m02_couplers_to_ps7_0_axi_periph_WVALID;
  M03_ACLK_1 <= M03_ACLK;
  M03_ARESETN_1 <= M03_ARESETN;
  M03_AXI_araddr <= m03_couplers_to_ps7_0_axi_periph_ARADDR;
  M03_AXI_arburst <= m03_couplers_to_ps7_0_axi_periph_ARBURST;
  M03_AXI_arcache <= m03_couplers_to_ps7_0_axi_periph_ARCACHE;
  M03_AXI_arlen <= m03_couplers_to_ps7_0_axi_periph_ARLEN;
  M03_AXI_arlock <= m03_couplers_to_ps7_0_axi_periph_ARLOCK;
  M03_AXI_arprot <= m03_couplers_to_ps7_0_axi_periph_ARPROT;
  M03_AXI_arqos <= m03_couplers_to_ps7_0_axi_periph_ARQOS;
  M03_AXI_arregion <= m03_couplers_to_ps7_0_axi_periph_ARREGION;
  M03_AXI_arsize <= m03_couplers_to_ps7_0_axi_periph_ARSIZE;
  M03_AXI_arvalid <= m03_couplers_to_ps7_0_axi_periph_ARVALID;
  M03_AXI_awaddr <= m03_couplers_to_ps7_0_axi_periph_AWADDR;
  M03_AXI_awburst <= m03_couplers_to_ps7_0_axi_periph_AWBURST;
  M03_AXI_awcache <= m03_couplers_to_ps7_0_axi_periph_AWCACHE;
  M03_AXI_awlen <= m03_couplers_to_ps7_0_axi_periph_AWLEN;
  M03_AXI_awlock <= m03_couplers_to_ps7_0_axi_periph_AWLOCK;
  M03_AXI_awprot <= m03_couplers_to_ps7_0_axi_periph_AWPROT;
  M03_AXI_awqos <= m03_couplers_to_ps7_0_axi_periph_AWQOS;
  M03_AXI_awregion <= m03_couplers_to_ps7_0_axi_periph_AWREGION;
  M03_AXI_awsize <= m03_couplers_to_ps7_0_axi_periph_AWSIZE;
  M03_AXI_awvalid <= m03_couplers_to_ps7_0_axi_periph_AWVALID;
  M03_AXI_bready <= m03_couplers_to_ps7_0_axi_periph_BREADY;
  M03_AXI_rready <= m03_couplers_to_ps7_0_axi_periph_RREADY;
  M03_AXI_wdata <= m03_couplers_to_ps7_0_axi_periph_WDATA;
  M03_AXI_wlast <= m03_couplers_to_ps7_0_axi_periph_WLAST;
  M03_AXI_wstrb <= m03_couplers_to_ps7_0_axi_periph_WSTRB;
  M03_AXI_wvalid <= m03_couplers_to_ps7_0_axi_periph_WVALID;
  M04_ACLK_1 <= M04_ACLK;
  M04_ARESETN_1 <= M04_ARESETN;
  M04_AXI_araddr <= m04_couplers_to_ps7_0_axi_periph_ARADDR;
  M04_AXI_arburst <= m04_couplers_to_ps7_0_axi_periph_ARBURST;
  M04_AXI_arcache <= m04_couplers_to_ps7_0_axi_periph_ARCACHE;
  M04_AXI_arlen <= m04_couplers_to_ps7_0_axi_periph_ARLEN;
  M04_AXI_arlock <= m04_couplers_to_ps7_0_axi_periph_ARLOCK;
  M04_AXI_arprot <= m04_couplers_to_ps7_0_axi_periph_ARPROT;
  M04_AXI_arqos <= m04_couplers_to_ps7_0_axi_periph_ARQOS;
  M04_AXI_arregion <= m04_couplers_to_ps7_0_axi_periph_ARREGION;
  M04_AXI_arsize <= m04_couplers_to_ps7_0_axi_periph_ARSIZE;
  M04_AXI_arvalid <= m04_couplers_to_ps7_0_axi_periph_ARVALID;
  M04_AXI_awaddr <= m04_couplers_to_ps7_0_axi_periph_AWADDR;
  M04_AXI_awburst <= m04_couplers_to_ps7_0_axi_periph_AWBURST;
  M04_AXI_awcache <= m04_couplers_to_ps7_0_axi_periph_AWCACHE;
  M04_AXI_awlen <= m04_couplers_to_ps7_0_axi_periph_AWLEN;
  M04_AXI_awlock <= m04_couplers_to_ps7_0_axi_periph_AWLOCK;
  M04_AXI_awprot <= m04_couplers_to_ps7_0_axi_periph_AWPROT;
  M04_AXI_awqos <= m04_couplers_to_ps7_0_axi_periph_AWQOS;
  M04_AXI_awregion <= m04_couplers_to_ps7_0_axi_periph_AWREGION;
  M04_AXI_awsize <= m04_couplers_to_ps7_0_axi_periph_AWSIZE;
  M04_AXI_awvalid <= m04_couplers_to_ps7_0_axi_periph_AWVALID;
  M04_AXI_bready <= m04_couplers_to_ps7_0_axi_periph_BREADY;
  M04_AXI_rready <= m04_couplers_to_ps7_0_axi_periph_RREADY;
  M04_AXI_wdata <= m04_couplers_to_ps7_0_axi_periph_WDATA;
  M04_AXI_wlast <= m04_couplers_to_ps7_0_axi_periph_WLAST;
  M04_AXI_wstrb <= m04_couplers_to_ps7_0_axi_periph_WSTRB;
  M04_AXI_wvalid <= m04_couplers_to_ps7_0_axi_periph_WVALID;
  M05_ACLK_1 <= M05_ACLK;
  M05_ARESETN_1 <= M05_ARESETN;
  M05_AXI_araddr(31 downto 0) <= m05_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0);
  M05_AXI_arburst(1 downto 0) <= m05_couplers_to_ps7_0_axi_periph_ARBURST(1 downto 0);
  M05_AXI_arcache(3 downto 0) <= m05_couplers_to_ps7_0_axi_periph_ARCACHE(3 downto 0);
  M05_AXI_arlen(3 downto 0) <= m05_couplers_to_ps7_0_axi_periph_ARLEN(3 downto 0);
  M05_AXI_arlock(1 downto 0) <= m05_couplers_to_ps7_0_axi_periph_ARLOCK(1 downto 0);
  M05_AXI_arprot(2 downto 0) <= m05_couplers_to_ps7_0_axi_periph_ARPROT(2 downto 0);
  M05_AXI_arqos(3 downto 0) <= m05_couplers_to_ps7_0_axi_periph_ARQOS(3 downto 0);
  M05_AXI_arsize(2 downto 0) <= m05_couplers_to_ps7_0_axi_periph_ARSIZE(2 downto 0);
  M05_AXI_arvalid <= m05_couplers_to_ps7_0_axi_periph_ARVALID;
  M05_AXI_awaddr(31 downto 0) <= m05_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0);
  M05_AXI_awburst(1 downto 0) <= m05_couplers_to_ps7_0_axi_periph_AWBURST(1 downto 0);
  M05_AXI_awcache(3 downto 0) <= m05_couplers_to_ps7_0_axi_periph_AWCACHE(3 downto 0);
  M05_AXI_awlen(3 downto 0) <= m05_couplers_to_ps7_0_axi_periph_AWLEN(3 downto 0);
  M05_AXI_awlock(1 downto 0) <= m05_couplers_to_ps7_0_axi_periph_AWLOCK(1 downto 0);
  M05_AXI_awprot(2 downto 0) <= m05_couplers_to_ps7_0_axi_periph_AWPROT(2 downto 0);
  M05_AXI_awqos(3 downto 0) <= m05_couplers_to_ps7_0_axi_periph_AWQOS(3 downto 0);
  M05_AXI_awsize(2 downto 0) <= m05_couplers_to_ps7_0_axi_periph_AWSIZE(2 downto 0);
  M05_AXI_awvalid <= m05_couplers_to_ps7_0_axi_periph_AWVALID;
  M05_AXI_bready <= m05_couplers_to_ps7_0_axi_periph_BREADY;
  M05_AXI_rready <= m05_couplers_to_ps7_0_axi_periph_RREADY;
  M05_AXI_wdata(31 downto 0) <= m05_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0);
  M05_AXI_wlast <= m05_couplers_to_ps7_0_axi_periph_WLAST;
  M05_AXI_wstrb(3 downto 0) <= m05_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0);
  M05_AXI_wvalid <= m05_couplers_to_ps7_0_axi_periph_WVALID;
  M06_ACLK_1 <= M06_ACLK;
  M06_ARESETN_1 <= M06_ARESETN;
  M06_AXI_araddr <= m06_couplers_to_ps7_0_axi_periph_ARADDR;
  M06_AXI_arburst <= m06_couplers_to_ps7_0_axi_periph_ARBURST;
  M06_AXI_arcache <= m06_couplers_to_ps7_0_axi_periph_ARCACHE;
  M06_AXI_arlen <= m06_couplers_to_ps7_0_axi_periph_ARLEN;
  M06_AXI_arlock <= m06_couplers_to_ps7_0_axi_periph_ARLOCK;
  M06_AXI_arprot <= m06_couplers_to_ps7_0_axi_periph_ARPROT;
  M06_AXI_arqos <= m06_couplers_to_ps7_0_axi_periph_ARQOS;
  M06_AXI_arregion <= m06_couplers_to_ps7_0_axi_periph_ARREGION;
  M06_AXI_arsize <= m06_couplers_to_ps7_0_axi_periph_ARSIZE;
  M06_AXI_arvalid <= m06_couplers_to_ps7_0_axi_periph_ARVALID;
  M06_AXI_awaddr <= m06_couplers_to_ps7_0_axi_periph_AWADDR;
  M06_AXI_awburst <= m06_couplers_to_ps7_0_axi_periph_AWBURST;
  M06_AXI_awcache <= m06_couplers_to_ps7_0_axi_periph_AWCACHE;
  M06_AXI_awlen <= m06_couplers_to_ps7_0_axi_periph_AWLEN;
  M06_AXI_awlock <= m06_couplers_to_ps7_0_axi_periph_AWLOCK;
  M06_AXI_awprot <= m06_couplers_to_ps7_0_axi_periph_AWPROT;
  M06_AXI_awqos <= m06_couplers_to_ps7_0_axi_periph_AWQOS;
  M06_AXI_awregion <= m06_couplers_to_ps7_0_axi_periph_AWREGION;
  M06_AXI_awsize <= m06_couplers_to_ps7_0_axi_periph_AWSIZE;
  M06_AXI_awvalid <= m06_couplers_to_ps7_0_axi_periph_AWVALID;
  M06_AXI_bready <= m06_couplers_to_ps7_0_axi_periph_BREADY;
  M06_AXI_rready <= m06_couplers_to_ps7_0_axi_periph_RREADY;
  M06_AXI_wdata <= m06_couplers_to_ps7_0_axi_periph_WDATA;
  M06_AXI_wlast <= m06_couplers_to_ps7_0_axi_periph_WLAST;
  M06_AXI_wstrb <= m06_couplers_to_ps7_0_axi_periph_WSTRB;
  M06_AXI_wvalid <= m06_couplers_to_ps7_0_axi_periph_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready <= ps7_0_axi_periph_to_s00_couplers_ARREADY;
  S00_AXI_awready <= ps7_0_axi_periph_to_s00_couplers_AWREADY;
  S00_AXI_bid(11 downto 0) <= ps7_0_axi_periph_to_s00_couplers_BID(11 downto 0);
  S00_AXI_bresp(1 downto 0) <= ps7_0_axi_periph_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= ps7_0_axi_periph_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= ps7_0_axi_periph_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rid(11 downto 0) <= ps7_0_axi_periph_to_s00_couplers_RID(11 downto 0);
  S00_AXI_rlast <= ps7_0_axi_periph_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= ps7_0_axi_periph_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= ps7_0_axi_periph_to_s00_couplers_RVALID;
  S00_AXI_wready <= ps7_0_axi_periph_to_s00_couplers_WREADY;
  S01_ACLK_1 <= S01_ACLK;
  S01_ARESETN_1 <= S01_ARESETN;
  S01_AXI_arready <= ps7_0_axi_periph_to_s01_couplers_ARREADY;
  S01_AXI_rdata(31 downto 0) <= ps7_0_axi_periph_to_s01_couplers_RDATA(31 downto 0);
  S01_AXI_rlast <= ps7_0_axi_periph_to_s01_couplers_RLAST;
  S01_AXI_rresp(1 downto 0) <= ps7_0_axi_periph_to_s01_couplers_RRESP(1 downto 0);
  S01_AXI_rvalid <= ps7_0_axi_periph_to_s01_couplers_RVALID;
  S02_ACLK_1 <= S02_ACLK;
  S02_ARESETN_1 <= S02_ARESETN;
  S02_AXI_awready <= ps7_0_axi_periph_to_s02_couplers_AWREADY;
  S02_AXI_bresp(1 downto 0) <= ps7_0_axi_periph_to_s02_couplers_BRESP(1 downto 0);
  S02_AXI_bvalid <= ps7_0_axi_periph_to_s02_couplers_BVALID;
  S02_AXI_wready <= ps7_0_axi_periph_to_s02_couplers_WREADY;
  m00_couplers_to_ps7_0_axi_periph_ARREADY <= M00_AXI_arready;
  m00_couplers_to_ps7_0_axi_periph_AWREADY <= M00_AXI_awready;
  m00_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_ps7_0_axi_periph_BVALID <= M00_AXI_bvalid;
  m00_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_ps7_0_axi_periph_RVALID <= M00_AXI_rvalid;
  m00_couplers_to_ps7_0_axi_periph_WREADY <= M00_AXI_wready;
  m01_couplers_to_ps7_0_axi_periph_ARREADY <= M01_AXI_arready;
  m01_couplers_to_ps7_0_axi_periph_AWREADY <= M01_AXI_awready;
  m01_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_ps7_0_axi_periph_BVALID <= M01_AXI_bvalid;
  m01_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_ps7_0_axi_periph_RVALID <= M01_AXI_rvalid;
  m01_couplers_to_ps7_0_axi_periph_WREADY <= M01_AXI_wready;
  m02_couplers_to_ps7_0_axi_periph_ARREADY <= M02_AXI_arready;
  m02_couplers_to_ps7_0_axi_periph_AWREADY <= M02_AXI_awready;
  m02_couplers_to_ps7_0_axi_periph_BRESP <= M02_AXI_bresp;
  m02_couplers_to_ps7_0_axi_periph_BVALID <= M02_AXI_bvalid;
  m02_couplers_to_ps7_0_axi_periph_RDATA <= M02_AXI_rdata;
  m02_couplers_to_ps7_0_axi_periph_RLAST <= M02_AXI_rlast;
  m02_couplers_to_ps7_0_axi_periph_RRESP <= M02_AXI_rresp;
  m02_couplers_to_ps7_0_axi_periph_RVALID <= M02_AXI_rvalid;
  m02_couplers_to_ps7_0_axi_periph_WREADY <= M02_AXI_wready;
  m03_couplers_to_ps7_0_axi_periph_ARREADY <= M03_AXI_arready;
  m03_couplers_to_ps7_0_axi_periph_AWREADY <= M03_AXI_awready;
  m03_couplers_to_ps7_0_axi_periph_BRESP <= M03_AXI_bresp;
  m03_couplers_to_ps7_0_axi_periph_BVALID <= M03_AXI_bvalid;
  m03_couplers_to_ps7_0_axi_periph_RDATA <= M03_AXI_rdata;
  m03_couplers_to_ps7_0_axi_periph_RLAST <= M03_AXI_rlast;
  m03_couplers_to_ps7_0_axi_periph_RRESP <= M03_AXI_rresp;
  m03_couplers_to_ps7_0_axi_periph_RVALID <= M03_AXI_rvalid;
  m03_couplers_to_ps7_0_axi_periph_WREADY <= M03_AXI_wready;
  m04_couplers_to_ps7_0_axi_periph_ARREADY <= M04_AXI_arready;
  m04_couplers_to_ps7_0_axi_periph_AWREADY <= M04_AXI_awready;
  m04_couplers_to_ps7_0_axi_periph_BRESP <= M04_AXI_bresp;
  m04_couplers_to_ps7_0_axi_periph_BVALID <= M04_AXI_bvalid;
  m04_couplers_to_ps7_0_axi_periph_RDATA <= M04_AXI_rdata;
  m04_couplers_to_ps7_0_axi_periph_RLAST <= M04_AXI_rlast;
  m04_couplers_to_ps7_0_axi_periph_RRESP <= M04_AXI_rresp;
  m04_couplers_to_ps7_0_axi_periph_RVALID <= M04_AXI_rvalid;
  m04_couplers_to_ps7_0_axi_periph_WREADY <= M04_AXI_wready;
  m05_couplers_to_ps7_0_axi_periph_ARREADY <= M05_AXI_arready;
  m05_couplers_to_ps7_0_axi_periph_AWREADY <= M05_AXI_awready;
  m05_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M05_AXI_bresp(1 downto 0);
  m05_couplers_to_ps7_0_axi_periph_BVALID <= M05_AXI_bvalid;
  m05_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M05_AXI_rdata(31 downto 0);
  m05_couplers_to_ps7_0_axi_periph_RLAST <= M05_AXI_rlast;
  m05_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M05_AXI_rresp(1 downto 0);
  m05_couplers_to_ps7_0_axi_periph_RVALID <= M05_AXI_rvalid;
  m05_couplers_to_ps7_0_axi_periph_WREADY <= M05_AXI_wready;
  m06_couplers_to_ps7_0_axi_periph_ARREADY <= M06_AXI_arready;
  m06_couplers_to_ps7_0_axi_periph_AWREADY <= M06_AXI_awready;
  m06_couplers_to_ps7_0_axi_periph_BRESP <= M06_AXI_bresp;
  m06_couplers_to_ps7_0_axi_periph_BVALID <= M06_AXI_bvalid;
  m06_couplers_to_ps7_0_axi_periph_RDATA <= M06_AXI_rdata;
  m06_couplers_to_ps7_0_axi_periph_RLAST <= M06_AXI_rlast;
  m06_couplers_to_ps7_0_axi_periph_RRESP <= M06_AXI_rresp;
  m06_couplers_to_ps7_0_axi_periph_RVALID <= M06_AXI_rvalid;
  m06_couplers_to_ps7_0_axi_periph_WREADY <= M06_AXI_wready;
  ps7_0_axi_periph_ACLK_net <= ACLK;
  ps7_0_axi_periph_ARESETN_net <= ARESETN;
  ps7_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARID(11 downto 0) <= S00_AXI_arid(11 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARLEN(3 downto 0) <= S00_AXI_arlen(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARLOCK(1 downto 0) <= S00_AXI_arlock(1 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  ps7_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWID(11 downto 0) <= S00_AXI_awid(11 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWLEN(3 downto 0) <= S00_AXI_awlen(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWLOCK(1 downto 0) <= S00_AXI_awlock(1 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  ps7_0_axi_periph_to_s00_couplers_BREADY <= S00_AXI_bready;
  ps7_0_axi_periph_to_s00_couplers_RREADY <= S00_AXI_rready;
  ps7_0_axi_periph_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  ps7_0_axi_periph_to_s00_couplers_WID(11 downto 0) <= S00_AXI_wid(11 downto 0);
  ps7_0_axi_periph_to_s00_couplers_WLAST <= S00_AXI_wlast;
  ps7_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  ps7_0_axi_periph_to_s01_couplers_ARADDR(31 downto 0) <= S01_AXI_araddr(31 downto 0);
  ps7_0_axi_periph_to_s01_couplers_ARBURST(1 downto 0) <= S01_AXI_arburst(1 downto 0);
  ps7_0_axi_periph_to_s01_couplers_ARCACHE(3 downto 0) <= S01_AXI_arcache(3 downto 0);
  ps7_0_axi_periph_to_s01_couplers_ARLEN(7 downto 0) <= S01_AXI_arlen(7 downto 0);
  ps7_0_axi_periph_to_s01_couplers_ARPROT(2 downto 0) <= S01_AXI_arprot(2 downto 0);
  ps7_0_axi_periph_to_s01_couplers_ARSIZE(2 downto 0) <= S01_AXI_arsize(2 downto 0);
  ps7_0_axi_periph_to_s01_couplers_ARVALID <= S01_AXI_arvalid;
  ps7_0_axi_periph_to_s01_couplers_RREADY <= S01_AXI_rready;
  ps7_0_axi_periph_to_s02_couplers_AWADDR(31 downto 0) <= S02_AXI_awaddr(31 downto 0);
  ps7_0_axi_periph_to_s02_couplers_AWBURST(1 downto 0) <= S02_AXI_awburst(1 downto 0);
  ps7_0_axi_periph_to_s02_couplers_AWCACHE(3 downto 0) <= S02_AXI_awcache(3 downto 0);
  ps7_0_axi_periph_to_s02_couplers_AWLEN(7 downto 0) <= S02_AXI_awlen(7 downto 0);
  ps7_0_axi_periph_to_s02_couplers_AWPROT(2 downto 0) <= S02_AXI_awprot(2 downto 0);
  ps7_0_axi_periph_to_s02_couplers_AWSIZE(2 downto 0) <= S02_AXI_awsize(2 downto 0);
  ps7_0_axi_periph_to_s02_couplers_AWVALID <= S02_AXI_awvalid;
  ps7_0_axi_periph_to_s02_couplers_BREADY <= S02_AXI_bready;
  ps7_0_axi_periph_to_s02_couplers_WDATA(31 downto 0) <= S02_AXI_wdata(31 downto 0);
  ps7_0_axi_periph_to_s02_couplers_WLAST <= S02_AXI_wlast;
  ps7_0_axi_periph_to_s02_couplers_WSTRB(3 downto 0) <= S02_AXI_wstrb(3 downto 0);
  ps7_0_axi_periph_to_s02_couplers_WVALID <= S02_AXI_wvalid;
m00_couplers: entity work.m00_couplers_imp_GH6ODQ
     port map (
      M_ACLK => M00_ACLK_1,
      M_ARESETN => M00_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready => m00_couplers_to_ps7_0_axi_periph_ARREADY,
      M_AXI_arvalid => m00_couplers_to_ps7_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready => m00_couplers_to_ps7_0_axi_periph_AWREADY,
      M_AXI_awvalid => m00_couplers_to_ps7_0_axi_periph_AWVALID,
      M_AXI_bready => m00_couplers_to_ps7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m00_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m00_couplers_to_ps7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m00_couplers_to_ps7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m00_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m00_couplers_to_ps7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m00_couplers_to_ps7_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m00_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m00_couplers_to_ps7_0_axi_periph_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => xbar_to_m00_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      S_AXI_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      S_AXI_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      S_AXI_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bready => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m00_couplers_BVALID,
      S_AXI_rdata(511 downto 0) => xbar_to_m00_couplers_RDATA(511 downto 0),
      S_AXI_rlast => xbar_to_m00_couplers_RLAST,
      S_AXI_rready => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m00_couplers_RVALID,
      S_AXI_wdata(511 downto 0) => xbar_to_m00_couplers_WDATA(511 downto 0),
      S_AXI_wlast => xbar_to_m00_couplers_WLAST(0),
      S_AXI_wready => xbar_to_m00_couplers_WREADY,
      S_AXI_wstrb(63 downto 0) => xbar_to_m00_couplers_WSTRB(63 downto 0),
      S_AXI_wvalid => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_183BBHC
     port map (
      M_ACLK => M01_ACLK_1,
      M_ARESETN => M01_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m01_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready => m01_couplers_to_ps7_0_axi_periph_ARREADY,
      M_AXI_arvalid => m01_couplers_to_ps7_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m01_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready => m01_couplers_to_ps7_0_axi_periph_AWREADY,
      M_AXI_awvalid => m01_couplers_to_ps7_0_axi_periph_AWVALID,
      M_AXI_bready => m01_couplers_to_ps7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m01_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m01_couplers_to_ps7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m01_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m01_couplers_to_ps7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m01_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m01_couplers_to_ps7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m01_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m01_couplers_to_ps7_0_axi_periph_WREADY,
      M_AXI_wvalid => m01_couplers_to_ps7_0_axi_periph_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      S_AXI_arburst(1 downto 0) => xbar_to_m01_couplers_ARBURST(3 downto 2),
      S_AXI_arcache(3 downto 0) => xbar_to_m01_couplers_ARCACHE(7 downto 4),
      S_AXI_arlen(7 downto 0) => xbar_to_m01_couplers_ARLEN(15 downto 8),
      S_AXI_arlock(0) => xbar_to_m01_couplers_ARLOCK(1),
      S_AXI_arprot(2 downto 0) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      S_AXI_arqos(3 downto 0) => xbar_to_m01_couplers_ARQOS(7 downto 4),
      S_AXI_arready => xbar_to_m01_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m01_couplers_ARREGION(7 downto 4),
      S_AXI_arsize(2 downto 0) => xbar_to_m01_couplers_ARSIZE(5 downto 3),
      S_AXI_arvalid => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(31 downto 0) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      S_AXI_awburst(1 downto 0) => xbar_to_m01_couplers_AWBURST(3 downto 2),
      S_AXI_awcache(3 downto 0) => xbar_to_m01_couplers_AWCACHE(7 downto 4),
      S_AXI_awlen(7 downto 0) => xbar_to_m01_couplers_AWLEN(15 downto 8),
      S_AXI_awlock(0) => xbar_to_m01_couplers_AWLOCK(1),
      S_AXI_awprot(2 downto 0) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      S_AXI_awqos(3 downto 0) => xbar_to_m01_couplers_AWQOS(7 downto 4),
      S_AXI_awready => xbar_to_m01_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m01_couplers_AWREGION(7 downto 4),
      S_AXI_awsize(2 downto 0) => xbar_to_m01_couplers_AWSIZE(5 downto 3),
      S_AXI_awvalid => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bready => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m01_couplers_BVALID,
      S_AXI_rdata(511 downto 0) => xbar_to_m01_couplers_RDATA(511 downto 0),
      S_AXI_rlast => xbar_to_m01_couplers_RLAST,
      S_AXI_rready => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m01_couplers_RVALID,
      S_AXI_wdata(511 downto 0) => xbar_to_m01_couplers_WDATA(1023 downto 512),
      S_AXI_wlast => xbar_to_m01_couplers_WLAST(1),
      S_AXI_wready => xbar_to_m01_couplers_WREADY,
      S_AXI_wstrb(63 downto 0) => xbar_to_m01_couplers_WSTRB(127 downto 64),
      S_AXI_wvalid => xbar_to_m01_couplers_WVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_1BG90OJ
     port map (
      M_ACLK => M02_ACLK_1,
      M_ARESETN => M02_ARESETN_1,
      M_AXI_araddr => m02_couplers_to_ps7_0_axi_periph_ARADDR,
      M_AXI_arburst => m02_couplers_to_ps7_0_axi_periph_ARBURST,
      M_AXI_arcache => m02_couplers_to_ps7_0_axi_periph_ARCACHE,
      M_AXI_arlen => m02_couplers_to_ps7_0_axi_periph_ARLEN,
      M_AXI_arlock => m02_couplers_to_ps7_0_axi_periph_ARLOCK,
      M_AXI_arprot => m02_couplers_to_ps7_0_axi_periph_ARPROT,
      M_AXI_arqos => m02_couplers_to_ps7_0_axi_periph_ARQOS,
      M_AXI_arready => m02_couplers_to_ps7_0_axi_periph_ARREADY,
      M_AXI_arregion => m02_couplers_to_ps7_0_axi_periph_ARREGION,
      M_AXI_arsize => m02_couplers_to_ps7_0_axi_periph_ARSIZE,
      M_AXI_arvalid => m02_couplers_to_ps7_0_axi_periph_ARVALID,
      M_AXI_awaddr => m02_couplers_to_ps7_0_axi_periph_AWADDR,
      M_AXI_awburst => m02_couplers_to_ps7_0_axi_periph_AWBURST,
      M_AXI_awcache => m02_couplers_to_ps7_0_axi_periph_AWCACHE,
      M_AXI_awlen => m02_couplers_to_ps7_0_axi_periph_AWLEN,
      M_AXI_awlock => m02_couplers_to_ps7_0_axi_periph_AWLOCK,
      M_AXI_awprot => m02_couplers_to_ps7_0_axi_periph_AWPROT,
      M_AXI_awqos => m02_couplers_to_ps7_0_axi_periph_AWQOS,
      M_AXI_awready => m02_couplers_to_ps7_0_axi_periph_AWREADY,
      M_AXI_awregion => m02_couplers_to_ps7_0_axi_periph_AWREGION,
      M_AXI_awsize => m02_couplers_to_ps7_0_axi_periph_AWSIZE,
      M_AXI_awvalid => m02_couplers_to_ps7_0_axi_periph_AWVALID,
      M_AXI_bready => m02_couplers_to_ps7_0_axi_periph_BREADY,
      M_AXI_bresp => m02_couplers_to_ps7_0_axi_periph_BRESP,
      M_AXI_bvalid => m02_couplers_to_ps7_0_axi_periph_BVALID,
      M_AXI_rdata => m02_couplers_to_ps7_0_axi_periph_RDATA,
      M_AXI_rlast => m02_couplers_to_ps7_0_axi_periph_RLAST,
      M_AXI_rready => m02_couplers_to_ps7_0_axi_periph_RREADY,
      M_AXI_rresp => m02_couplers_to_ps7_0_axi_periph_RRESP,
      M_AXI_rvalid => m02_couplers_to_ps7_0_axi_periph_RVALID,
      M_AXI_wdata => m02_couplers_to_ps7_0_axi_periph_WDATA,
      M_AXI_wlast => m02_couplers_to_ps7_0_axi_periph_WLAST,
      M_AXI_wready => m02_couplers_to_ps7_0_axi_periph_WREADY,
      M_AXI_wstrb => m02_couplers_to_ps7_0_axi_periph_WSTRB,
      M_AXI_wvalid => m02_couplers_to_ps7_0_axi_periph_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr => xbar_to_m02_couplers_ARADDR(64),
      S_AXI_arburst => xbar_to_m02_couplers_ARBURST(4),
      S_AXI_arcache => xbar_to_m02_couplers_ARCACHE(8),
      S_AXI_arlen => xbar_to_m02_couplers_ARLEN(16),
      S_AXI_arlock => xbar_to_m02_couplers_ARLOCK(2),
      S_AXI_arprot => xbar_to_m02_couplers_ARPROT(6),
      S_AXI_arqos => xbar_to_m02_couplers_ARQOS(8),
      S_AXI_arready => xbar_to_m02_couplers_ARREADY,
      S_AXI_arregion => xbar_to_m02_couplers_ARREGION(8),
      S_AXI_arsize => xbar_to_m02_couplers_ARSIZE(6),
      S_AXI_arvalid => xbar_to_m02_couplers_ARVALID(2),
      S_AXI_awaddr => xbar_to_m02_couplers_AWADDR(64),
      S_AXI_awburst => xbar_to_m02_couplers_AWBURST(4),
      S_AXI_awcache => xbar_to_m02_couplers_AWCACHE(8),
      S_AXI_awlen => xbar_to_m02_couplers_AWLEN(16),
      S_AXI_awlock => xbar_to_m02_couplers_AWLOCK(2),
      S_AXI_awprot => xbar_to_m02_couplers_AWPROT(6),
      S_AXI_awqos => xbar_to_m02_couplers_AWQOS(8),
      S_AXI_awready => xbar_to_m02_couplers_AWREADY,
      S_AXI_awregion => xbar_to_m02_couplers_AWREGION(8),
      S_AXI_awsize => xbar_to_m02_couplers_AWSIZE(6),
      S_AXI_awvalid => xbar_to_m02_couplers_AWVALID(2),
      S_AXI_bready => xbar_to_m02_couplers_BREADY(2),
      S_AXI_bresp => xbar_to_m02_couplers_BRESP,
      S_AXI_bvalid => xbar_to_m02_couplers_BVALID,
      S_AXI_rdata => xbar_to_m02_couplers_RDATA,
      S_AXI_rlast => xbar_to_m02_couplers_RLAST,
      S_AXI_rready => xbar_to_m02_couplers_RREADY(2),
      S_AXI_rresp => xbar_to_m02_couplers_RRESP,
      S_AXI_rvalid => xbar_to_m02_couplers_RVALID,
      S_AXI_wdata => xbar_to_m02_couplers_WDATA(1024),
      S_AXI_wlast => xbar_to_m02_couplers_WLAST(2),
      S_AXI_wready => xbar_to_m02_couplers_WREADY,
      S_AXI_wstrb => xbar_to_m02_couplers_WSTRB(128),
      S_AXI_wvalid => xbar_to_m02_couplers_WVALID(2)
    );
m03_couplers: entity work.m03_couplers_imp_41F83H
     port map (
      M_ACLK => M03_ACLK_1,
      M_ARESETN => M03_ARESETN_1,
      M_AXI_araddr => m03_couplers_to_ps7_0_axi_periph_ARADDR,
      M_AXI_arburst => m03_couplers_to_ps7_0_axi_periph_ARBURST,
      M_AXI_arcache => m03_couplers_to_ps7_0_axi_periph_ARCACHE,
      M_AXI_arlen => m03_couplers_to_ps7_0_axi_periph_ARLEN,
      M_AXI_arlock => m03_couplers_to_ps7_0_axi_periph_ARLOCK,
      M_AXI_arprot => m03_couplers_to_ps7_0_axi_periph_ARPROT,
      M_AXI_arqos => m03_couplers_to_ps7_0_axi_periph_ARQOS,
      M_AXI_arready => m03_couplers_to_ps7_0_axi_periph_ARREADY,
      M_AXI_arregion => m03_couplers_to_ps7_0_axi_periph_ARREGION,
      M_AXI_arsize => m03_couplers_to_ps7_0_axi_periph_ARSIZE,
      M_AXI_arvalid => m03_couplers_to_ps7_0_axi_periph_ARVALID,
      M_AXI_awaddr => m03_couplers_to_ps7_0_axi_periph_AWADDR,
      M_AXI_awburst => m03_couplers_to_ps7_0_axi_periph_AWBURST,
      M_AXI_awcache => m03_couplers_to_ps7_0_axi_periph_AWCACHE,
      M_AXI_awlen => m03_couplers_to_ps7_0_axi_periph_AWLEN,
      M_AXI_awlock => m03_couplers_to_ps7_0_axi_periph_AWLOCK,
      M_AXI_awprot => m03_couplers_to_ps7_0_axi_periph_AWPROT,
      M_AXI_awqos => m03_couplers_to_ps7_0_axi_periph_AWQOS,
      M_AXI_awready => m03_couplers_to_ps7_0_axi_periph_AWREADY,
      M_AXI_awregion => m03_couplers_to_ps7_0_axi_periph_AWREGION,
      M_AXI_awsize => m03_couplers_to_ps7_0_axi_periph_AWSIZE,
      M_AXI_awvalid => m03_couplers_to_ps7_0_axi_periph_AWVALID,
      M_AXI_bready => m03_couplers_to_ps7_0_axi_periph_BREADY,
      M_AXI_bresp => m03_couplers_to_ps7_0_axi_periph_BRESP,
      M_AXI_bvalid => m03_couplers_to_ps7_0_axi_periph_BVALID,
      M_AXI_rdata => m03_couplers_to_ps7_0_axi_periph_RDATA,
      M_AXI_rlast => m03_couplers_to_ps7_0_axi_periph_RLAST,
      M_AXI_rready => m03_couplers_to_ps7_0_axi_periph_RREADY,
      M_AXI_rresp => m03_couplers_to_ps7_0_axi_periph_RRESP,
      M_AXI_rvalid => m03_couplers_to_ps7_0_axi_periph_RVALID,
      M_AXI_wdata => m03_couplers_to_ps7_0_axi_periph_WDATA,
      M_AXI_wlast => m03_couplers_to_ps7_0_axi_periph_WLAST,
      M_AXI_wready => m03_couplers_to_ps7_0_axi_periph_WREADY,
      M_AXI_wstrb => m03_couplers_to_ps7_0_axi_periph_WSTRB,
      M_AXI_wvalid => m03_couplers_to_ps7_0_axi_periph_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr => xbar_to_m03_couplers_ARADDR(96),
      S_AXI_arburst => xbar_to_m03_couplers_ARBURST(6),
      S_AXI_arcache => xbar_to_m03_couplers_ARCACHE(12),
      S_AXI_arlen => xbar_to_m03_couplers_ARLEN(24),
      S_AXI_arlock => xbar_to_m03_couplers_ARLOCK(3),
      S_AXI_arprot => xbar_to_m03_couplers_ARPROT(9),
      S_AXI_arqos => xbar_to_m03_couplers_ARQOS(12),
      S_AXI_arready => xbar_to_m03_couplers_ARREADY,
      S_AXI_arregion => xbar_to_m03_couplers_ARREGION(12),
      S_AXI_arsize => xbar_to_m03_couplers_ARSIZE(9),
      S_AXI_arvalid => xbar_to_m03_couplers_ARVALID(3),
      S_AXI_awaddr => xbar_to_m03_couplers_AWADDR(96),
      S_AXI_awburst => xbar_to_m03_couplers_AWBURST(6),
      S_AXI_awcache => xbar_to_m03_couplers_AWCACHE(12),
      S_AXI_awlen => xbar_to_m03_couplers_AWLEN(24),
      S_AXI_awlock => xbar_to_m03_couplers_AWLOCK(3),
      S_AXI_awprot => xbar_to_m03_couplers_AWPROT(9),
      S_AXI_awqos => xbar_to_m03_couplers_AWQOS(12),
      S_AXI_awready => xbar_to_m03_couplers_AWREADY,
      S_AXI_awregion => xbar_to_m03_couplers_AWREGION(12),
      S_AXI_awsize => xbar_to_m03_couplers_AWSIZE(9),
      S_AXI_awvalid => xbar_to_m03_couplers_AWVALID(3),
      S_AXI_bready => xbar_to_m03_couplers_BREADY(3),
      S_AXI_bresp => xbar_to_m03_couplers_BRESP,
      S_AXI_bvalid => xbar_to_m03_couplers_BVALID,
      S_AXI_rdata => xbar_to_m03_couplers_RDATA,
      S_AXI_rlast => xbar_to_m03_couplers_RLAST,
      S_AXI_rready => xbar_to_m03_couplers_RREADY(3),
      S_AXI_rresp => xbar_to_m03_couplers_RRESP,
      S_AXI_rvalid => xbar_to_m03_couplers_RVALID,
      S_AXI_wdata => xbar_to_m03_couplers_WDATA(1536),
      S_AXI_wlast => xbar_to_m03_couplers_WLAST(3),
      S_AXI_wready => xbar_to_m03_couplers_WREADY,
      S_AXI_wstrb => xbar_to_m03_couplers_WSTRB(192),
      S_AXI_wvalid => xbar_to_m03_couplers_WVALID(3)
    );
m04_couplers: entity work.m04_couplers_imp_1HIKNPX
     port map (
      M_ACLK => M04_ACLK_1,
      M_ARESETN => M04_ARESETN_1,
      M_AXI_araddr => m04_couplers_to_ps7_0_axi_periph_ARADDR,
      M_AXI_arburst => m04_couplers_to_ps7_0_axi_periph_ARBURST,
      M_AXI_arcache => m04_couplers_to_ps7_0_axi_periph_ARCACHE,
      M_AXI_arlen => m04_couplers_to_ps7_0_axi_periph_ARLEN,
      M_AXI_arlock => m04_couplers_to_ps7_0_axi_periph_ARLOCK,
      M_AXI_arprot => m04_couplers_to_ps7_0_axi_periph_ARPROT,
      M_AXI_arqos => m04_couplers_to_ps7_0_axi_periph_ARQOS,
      M_AXI_arready => m04_couplers_to_ps7_0_axi_periph_ARREADY,
      M_AXI_arregion => m04_couplers_to_ps7_0_axi_periph_ARREGION,
      M_AXI_arsize => m04_couplers_to_ps7_0_axi_periph_ARSIZE,
      M_AXI_arvalid => m04_couplers_to_ps7_0_axi_periph_ARVALID,
      M_AXI_awaddr => m04_couplers_to_ps7_0_axi_periph_AWADDR,
      M_AXI_awburst => m04_couplers_to_ps7_0_axi_periph_AWBURST,
      M_AXI_awcache => m04_couplers_to_ps7_0_axi_periph_AWCACHE,
      M_AXI_awlen => m04_couplers_to_ps7_0_axi_periph_AWLEN,
      M_AXI_awlock => m04_couplers_to_ps7_0_axi_periph_AWLOCK,
      M_AXI_awprot => m04_couplers_to_ps7_0_axi_periph_AWPROT,
      M_AXI_awqos => m04_couplers_to_ps7_0_axi_periph_AWQOS,
      M_AXI_awready => m04_couplers_to_ps7_0_axi_periph_AWREADY,
      M_AXI_awregion => m04_couplers_to_ps7_0_axi_periph_AWREGION,
      M_AXI_awsize => m04_couplers_to_ps7_0_axi_periph_AWSIZE,
      M_AXI_awvalid => m04_couplers_to_ps7_0_axi_periph_AWVALID,
      M_AXI_bready => m04_couplers_to_ps7_0_axi_periph_BREADY,
      M_AXI_bresp => m04_couplers_to_ps7_0_axi_periph_BRESP,
      M_AXI_bvalid => m04_couplers_to_ps7_0_axi_periph_BVALID,
      M_AXI_rdata => m04_couplers_to_ps7_0_axi_periph_RDATA,
      M_AXI_rlast => m04_couplers_to_ps7_0_axi_periph_RLAST,
      M_AXI_rready => m04_couplers_to_ps7_0_axi_periph_RREADY,
      M_AXI_rresp => m04_couplers_to_ps7_0_axi_periph_RRESP,
      M_AXI_rvalid => m04_couplers_to_ps7_0_axi_periph_RVALID,
      M_AXI_wdata => m04_couplers_to_ps7_0_axi_periph_WDATA,
      M_AXI_wlast => m04_couplers_to_ps7_0_axi_periph_WLAST,
      M_AXI_wready => m04_couplers_to_ps7_0_axi_periph_WREADY,
      M_AXI_wstrb => m04_couplers_to_ps7_0_axi_periph_WSTRB,
      M_AXI_wvalid => m04_couplers_to_ps7_0_axi_periph_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr => xbar_to_m04_couplers_ARADDR(128),
      S_AXI_arburst => xbar_to_m04_couplers_ARBURST(8),
      S_AXI_arcache => xbar_to_m04_couplers_ARCACHE(16),
      S_AXI_arlen => xbar_to_m04_couplers_ARLEN(32),
      S_AXI_arlock => xbar_to_m04_couplers_ARLOCK(4),
      S_AXI_arprot => xbar_to_m04_couplers_ARPROT(12),
      S_AXI_arqos => xbar_to_m04_couplers_ARQOS(16),
      S_AXI_arready => xbar_to_m04_couplers_ARREADY,
      S_AXI_arregion => xbar_to_m04_couplers_ARREGION(16),
      S_AXI_arsize => xbar_to_m04_couplers_ARSIZE(12),
      S_AXI_arvalid => xbar_to_m04_couplers_ARVALID(4),
      S_AXI_awaddr => xbar_to_m04_couplers_AWADDR(128),
      S_AXI_awburst => xbar_to_m04_couplers_AWBURST(8),
      S_AXI_awcache => xbar_to_m04_couplers_AWCACHE(16),
      S_AXI_awlen => xbar_to_m04_couplers_AWLEN(32),
      S_AXI_awlock => xbar_to_m04_couplers_AWLOCK(4),
      S_AXI_awprot => xbar_to_m04_couplers_AWPROT(12),
      S_AXI_awqos => xbar_to_m04_couplers_AWQOS(16),
      S_AXI_awready => xbar_to_m04_couplers_AWREADY,
      S_AXI_awregion => xbar_to_m04_couplers_AWREGION(16),
      S_AXI_awsize => xbar_to_m04_couplers_AWSIZE(12),
      S_AXI_awvalid => xbar_to_m04_couplers_AWVALID(4),
      S_AXI_bready => xbar_to_m04_couplers_BREADY(4),
      S_AXI_bresp => xbar_to_m04_couplers_BRESP,
      S_AXI_bvalid => xbar_to_m04_couplers_BVALID,
      S_AXI_rdata => xbar_to_m04_couplers_RDATA,
      S_AXI_rlast => xbar_to_m04_couplers_RLAST,
      S_AXI_rready => xbar_to_m04_couplers_RREADY(4),
      S_AXI_rresp => xbar_to_m04_couplers_RRESP,
      S_AXI_rvalid => xbar_to_m04_couplers_RVALID,
      S_AXI_wdata => xbar_to_m04_couplers_WDATA(2048),
      S_AXI_wlast => xbar_to_m04_couplers_WLAST(4),
      S_AXI_wready => xbar_to_m04_couplers_WREADY,
      S_AXI_wstrb => xbar_to_m04_couplers_WSTRB(256),
      S_AXI_wvalid => xbar_to_m04_couplers_WVALID(4)
    );
m05_couplers: entity work.m05_couplers_imp_S45KIJ
     port map (
      M_ACLK => M05_ACLK_1,
      M_ARESETN => M05_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m05_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => m05_couplers_to_ps7_0_axi_periph_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => m05_couplers_to_ps7_0_axi_periph_ARCACHE(3 downto 0),
      M_AXI_arlen(3 downto 0) => m05_couplers_to_ps7_0_axi_periph_ARLEN(3 downto 0),
      M_AXI_arlock(1 downto 0) => m05_couplers_to_ps7_0_axi_periph_ARLOCK(1 downto 0),
      M_AXI_arprot(2 downto 0) => m05_couplers_to_ps7_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => m05_couplers_to_ps7_0_axi_periph_ARQOS(3 downto 0),
      M_AXI_arready => m05_couplers_to_ps7_0_axi_periph_ARREADY,
      M_AXI_arsize(2 downto 0) => m05_couplers_to_ps7_0_axi_periph_ARSIZE(2 downto 0),
      M_AXI_arvalid => m05_couplers_to_ps7_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m05_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => m05_couplers_to_ps7_0_axi_periph_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => m05_couplers_to_ps7_0_axi_periph_AWCACHE(3 downto 0),
      M_AXI_awlen(3 downto 0) => m05_couplers_to_ps7_0_axi_periph_AWLEN(3 downto 0),
      M_AXI_awlock(1 downto 0) => m05_couplers_to_ps7_0_axi_periph_AWLOCK(1 downto 0),
      M_AXI_awprot(2 downto 0) => m05_couplers_to_ps7_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => m05_couplers_to_ps7_0_axi_periph_AWQOS(3 downto 0),
      M_AXI_awready => m05_couplers_to_ps7_0_axi_periph_AWREADY,
      M_AXI_awsize(2 downto 0) => m05_couplers_to_ps7_0_axi_periph_AWSIZE(2 downto 0),
      M_AXI_awvalid => m05_couplers_to_ps7_0_axi_periph_AWVALID,
      M_AXI_bready => m05_couplers_to_ps7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m05_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m05_couplers_to_ps7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m05_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rlast => m05_couplers_to_ps7_0_axi_periph_RLAST,
      M_AXI_rready => m05_couplers_to_ps7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m05_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m05_couplers_to_ps7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m05_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wlast => m05_couplers_to_ps7_0_axi_periph_WLAST,
      M_AXI_wready => m05_couplers_to_ps7_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m05_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m05_couplers_to_ps7_0_axi_periph_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m05_couplers_ARADDR(191 downto 160),
      S_AXI_arburst(1 downto 0) => xbar_to_m05_couplers_ARBURST(11 downto 10),
      S_AXI_arcache(3 downto 0) => xbar_to_m05_couplers_ARCACHE(23 downto 20),
      S_AXI_arlen(7 downto 0) => xbar_to_m05_couplers_ARLEN(47 downto 40),
      S_AXI_arlock(0) => xbar_to_m05_couplers_ARLOCK(5),
      S_AXI_arprot(2 downto 0) => xbar_to_m05_couplers_ARPROT(17 downto 15),
      S_AXI_arqos(3 downto 0) => xbar_to_m05_couplers_ARQOS(23 downto 20),
      S_AXI_arready => xbar_to_m05_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m05_couplers_ARREGION(23 downto 20),
      S_AXI_arsize(2 downto 0) => xbar_to_m05_couplers_ARSIZE(17 downto 15),
      S_AXI_arvalid => xbar_to_m05_couplers_ARVALID(5),
      S_AXI_awaddr(31 downto 0) => xbar_to_m05_couplers_AWADDR(191 downto 160),
      S_AXI_awburst(1 downto 0) => xbar_to_m05_couplers_AWBURST(11 downto 10),
      S_AXI_awcache(3 downto 0) => xbar_to_m05_couplers_AWCACHE(23 downto 20),
      S_AXI_awlen(7 downto 0) => xbar_to_m05_couplers_AWLEN(47 downto 40),
      S_AXI_awlock(0) => xbar_to_m05_couplers_AWLOCK(5),
      S_AXI_awprot(2 downto 0) => xbar_to_m05_couplers_AWPROT(17 downto 15),
      S_AXI_awqos(3 downto 0) => xbar_to_m05_couplers_AWQOS(23 downto 20),
      S_AXI_awready => xbar_to_m05_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m05_couplers_AWREGION(23 downto 20),
      S_AXI_awsize(2 downto 0) => xbar_to_m05_couplers_AWSIZE(17 downto 15),
      S_AXI_awvalid => xbar_to_m05_couplers_AWVALID(5),
      S_AXI_bready => xbar_to_m05_couplers_BREADY(5),
      S_AXI_bresp(1 downto 0) => xbar_to_m05_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m05_couplers_BVALID,
      S_AXI_rdata(511 downto 0) => xbar_to_m05_couplers_RDATA(511 downto 0),
      S_AXI_rlast => xbar_to_m05_couplers_RLAST,
      S_AXI_rready => xbar_to_m05_couplers_RREADY(5),
      S_AXI_rresp(1 downto 0) => xbar_to_m05_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m05_couplers_RVALID,
      S_AXI_wdata(511 downto 0) => xbar_to_m05_couplers_WDATA(3071 downto 2560),
      S_AXI_wlast => xbar_to_m05_couplers_WLAST(5),
      S_AXI_wready => xbar_to_m05_couplers_WREADY,
      S_AXI_wstrb(63 downto 0) => xbar_to_m05_couplers_WSTRB(383 downto 320),
      S_AXI_wvalid => xbar_to_m05_couplers_WVALID(5)
    );
m06_couplers: entity work.m06_couplers_imp_MECLE0
     port map (
      M_ACLK => M06_ACLK_1,
      M_ARESETN => M06_ARESETN_1,
      M_AXI_araddr => m06_couplers_to_ps7_0_axi_periph_ARADDR,
      M_AXI_arburst => m06_couplers_to_ps7_0_axi_periph_ARBURST,
      M_AXI_arcache => m06_couplers_to_ps7_0_axi_periph_ARCACHE,
      M_AXI_arlen => m06_couplers_to_ps7_0_axi_periph_ARLEN,
      M_AXI_arlock => m06_couplers_to_ps7_0_axi_periph_ARLOCK,
      M_AXI_arprot => m06_couplers_to_ps7_0_axi_periph_ARPROT,
      M_AXI_arqos => m06_couplers_to_ps7_0_axi_periph_ARQOS,
      M_AXI_arready => m06_couplers_to_ps7_0_axi_periph_ARREADY,
      M_AXI_arregion => m06_couplers_to_ps7_0_axi_periph_ARREGION,
      M_AXI_arsize => m06_couplers_to_ps7_0_axi_periph_ARSIZE,
      M_AXI_arvalid => m06_couplers_to_ps7_0_axi_periph_ARVALID,
      M_AXI_awaddr => m06_couplers_to_ps7_0_axi_periph_AWADDR,
      M_AXI_awburst => m06_couplers_to_ps7_0_axi_periph_AWBURST,
      M_AXI_awcache => m06_couplers_to_ps7_0_axi_periph_AWCACHE,
      M_AXI_awlen => m06_couplers_to_ps7_0_axi_periph_AWLEN,
      M_AXI_awlock => m06_couplers_to_ps7_0_axi_periph_AWLOCK,
      M_AXI_awprot => m06_couplers_to_ps7_0_axi_periph_AWPROT,
      M_AXI_awqos => m06_couplers_to_ps7_0_axi_periph_AWQOS,
      M_AXI_awready => m06_couplers_to_ps7_0_axi_periph_AWREADY,
      M_AXI_awregion => m06_couplers_to_ps7_0_axi_periph_AWREGION,
      M_AXI_awsize => m06_couplers_to_ps7_0_axi_periph_AWSIZE,
      M_AXI_awvalid => m06_couplers_to_ps7_0_axi_periph_AWVALID,
      M_AXI_bready => m06_couplers_to_ps7_0_axi_periph_BREADY,
      M_AXI_bresp => m06_couplers_to_ps7_0_axi_periph_BRESP,
      M_AXI_bvalid => m06_couplers_to_ps7_0_axi_periph_BVALID,
      M_AXI_rdata => m06_couplers_to_ps7_0_axi_periph_RDATA,
      M_AXI_rlast => m06_couplers_to_ps7_0_axi_periph_RLAST,
      M_AXI_rready => m06_couplers_to_ps7_0_axi_periph_RREADY,
      M_AXI_rresp => m06_couplers_to_ps7_0_axi_periph_RRESP,
      M_AXI_rvalid => m06_couplers_to_ps7_0_axi_periph_RVALID,
      M_AXI_wdata => m06_couplers_to_ps7_0_axi_periph_WDATA,
      M_AXI_wlast => m06_couplers_to_ps7_0_axi_periph_WLAST,
      M_AXI_wready => m06_couplers_to_ps7_0_axi_periph_WREADY,
      M_AXI_wstrb => m06_couplers_to_ps7_0_axi_periph_WSTRB,
      M_AXI_wvalid => m06_couplers_to_ps7_0_axi_periph_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr => xbar_to_m06_couplers_ARADDR(192),
      S_AXI_arburst => xbar_to_m06_couplers_ARBURST(12),
      S_AXI_arcache => xbar_to_m06_couplers_ARCACHE(24),
      S_AXI_arlen => xbar_to_m06_couplers_ARLEN(48),
      S_AXI_arlock => xbar_to_m06_couplers_ARLOCK(6),
      S_AXI_arprot => xbar_to_m06_couplers_ARPROT(18),
      S_AXI_arqos => xbar_to_m06_couplers_ARQOS(24),
      S_AXI_arready => xbar_to_m06_couplers_ARREADY,
      S_AXI_arregion => xbar_to_m06_couplers_ARREGION(24),
      S_AXI_arsize => xbar_to_m06_couplers_ARSIZE(18),
      S_AXI_arvalid => xbar_to_m06_couplers_ARVALID(6),
      S_AXI_awaddr => xbar_to_m06_couplers_AWADDR(192),
      S_AXI_awburst => xbar_to_m06_couplers_AWBURST(12),
      S_AXI_awcache => xbar_to_m06_couplers_AWCACHE(24),
      S_AXI_awlen => xbar_to_m06_couplers_AWLEN(48),
      S_AXI_awlock => xbar_to_m06_couplers_AWLOCK(6),
      S_AXI_awprot => xbar_to_m06_couplers_AWPROT(18),
      S_AXI_awqos => xbar_to_m06_couplers_AWQOS(24),
      S_AXI_awready => xbar_to_m06_couplers_AWREADY,
      S_AXI_awregion => xbar_to_m06_couplers_AWREGION(24),
      S_AXI_awsize => xbar_to_m06_couplers_AWSIZE(18),
      S_AXI_awvalid => xbar_to_m06_couplers_AWVALID(6),
      S_AXI_bready => xbar_to_m06_couplers_BREADY(6),
      S_AXI_bresp => xbar_to_m06_couplers_BRESP,
      S_AXI_bvalid => xbar_to_m06_couplers_BVALID,
      S_AXI_rdata => xbar_to_m06_couplers_RDATA,
      S_AXI_rlast => xbar_to_m06_couplers_RLAST,
      S_AXI_rready => xbar_to_m06_couplers_RREADY(6),
      S_AXI_rresp => xbar_to_m06_couplers_RRESP,
      S_AXI_rvalid => xbar_to_m06_couplers_RVALID,
      S_AXI_wdata => xbar_to_m06_couplers_WDATA(3072),
      S_AXI_wlast => xbar_to_m06_couplers_WLAST(6),
      S_AXI_wready => xbar_to_m06_couplers_WREADY,
      S_AXI_wstrb => xbar_to_m06_couplers_WSTRB(384),
      S_AXI_wvalid => xbar_to_m06_couplers_WVALID(6)
    );
s00_couplers: entity work.s00_couplers_imp_7PPSL2
     port map (
      M_ACLK => ps7_0_axi_periph_ACLK_net,
      M_ARESETN => ps7_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s00_couplers_to_xbar_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock(0) => s00_couplers_to_xbar_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(511 downto 0) => s00_couplers_to_xbar_RDATA(511 downto 0),
      M_AXI_rlast => s00_couplers_to_xbar_RLAST(0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(511 downto 0) => s00_couplers_to_xbar_WDATA(511 downto 0),
      M_AXI_wlast => s00_couplers_to_xbar_WLAST,
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(63 downto 0) => s00_couplers_to_xbar_WSTRB(63 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(31 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARID(11 downto 0),
      S_AXI_arlen(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARLEN(3 downto 0),
      S_AXI_arlock(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARLOCK(1 downto 0),
      S_AXI_arprot(2 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => ps7_0_axi_periph_to_s00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => ps7_0_axi_periph_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWID(11 downto 0),
      S_AXI_awlen(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWLEN(3 downto 0),
      S_AXI_awlock(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWLOCK(1 downto 0),
      S_AXI_awprot(2 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => ps7_0_axi_periph_to_s00_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => ps7_0_axi_periph_to_s00_couplers_AWVALID,
      S_AXI_bid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_BID(11 downto 0),
      S_AXI_bready => ps7_0_axi_periph_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => ps7_0_axi_periph_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => ps7_0_axi_periph_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_RID(11 downto 0),
      S_AXI_rlast => ps7_0_axi_periph_to_s00_couplers_RLAST,
      S_AXI_rready => ps7_0_axi_periph_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => ps7_0_axi_periph_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => ps7_0_axi_periph_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_WID(11 downto 0),
      S_AXI_wlast => ps7_0_axi_periph_to_s00_couplers_WLAST,
      S_AXI_wready => ps7_0_axi_periph_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => ps7_0_axi_periph_to_s00_couplers_WVALID
    );
s01_couplers: entity work.s01_couplers_imp_1GSL6UW
     port map (
      M_ACLK => ps7_0_axi_periph_ACLK_net,
      M_ARESETN => ps7_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s01_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s01_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s01_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s01_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s01_couplers_to_xbar_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => s01_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s01_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s01_couplers_to_xbar_ARREADY(1),
      M_AXI_arsize(2 downto 0) => s01_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s01_couplers_to_xbar_ARVALID,
      M_AXI_rdata(511 downto 0) => s01_couplers_to_xbar_RDATA(1023 downto 512),
      M_AXI_rlast => s01_couplers_to_xbar_RLAST(1),
      M_AXI_rready => s01_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s01_couplers_to_xbar_RRESP(3 downto 2),
      M_AXI_rvalid => s01_couplers_to_xbar_RVALID(1),
      S_ACLK => S01_ACLK_1,
      S_ARESETN => S01_ARESETN_1,
      S_AXI_araddr(31 downto 0) => ps7_0_axi_periph_to_s01_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => ps7_0_axi_periph_to_s01_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => ps7_0_axi_periph_to_s01_couplers_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => ps7_0_axi_periph_to_s01_couplers_ARLEN(7 downto 0),
      S_AXI_arprot(2 downto 0) => ps7_0_axi_periph_to_s01_couplers_ARPROT(2 downto 0),
      S_AXI_arready => ps7_0_axi_periph_to_s01_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => ps7_0_axi_periph_to_s01_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => ps7_0_axi_periph_to_s01_couplers_ARVALID,
      S_AXI_rdata(31 downto 0) => ps7_0_axi_periph_to_s01_couplers_RDATA(31 downto 0),
      S_AXI_rlast => ps7_0_axi_periph_to_s01_couplers_RLAST,
      S_AXI_rready => ps7_0_axi_periph_to_s01_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => ps7_0_axi_periph_to_s01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => ps7_0_axi_periph_to_s01_couplers_RVALID
    );
s02_couplers: entity work.s02_couplers_imp_12R4RL7
     port map (
      M_ACLK => ps7_0_axi_periph_ACLK_net,
      M_ARESETN => ps7_0_axi_periph_ARESETN_net,
      M_AXI_awaddr(31 downto 0) => s02_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s02_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s02_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => s02_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock(0) => s02_couplers_to_xbar_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => s02_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s02_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s02_couplers_to_xbar_AWREADY(2),
      M_AXI_awsize(2 downto 0) => s02_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s02_couplers_to_xbar_AWVALID,
      M_AXI_bready => s02_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s02_couplers_to_xbar_BRESP(5 downto 4),
      M_AXI_bvalid => s02_couplers_to_xbar_BVALID(2),
      M_AXI_wdata(511 downto 0) => s02_couplers_to_xbar_WDATA(511 downto 0),
      M_AXI_wlast => s02_couplers_to_xbar_WLAST,
      M_AXI_wready => s02_couplers_to_xbar_WREADY(2),
      M_AXI_wstrb(63 downto 0) => s02_couplers_to_xbar_WSTRB(63 downto 0),
      M_AXI_wvalid => s02_couplers_to_xbar_WVALID,
      S_ACLK => S02_ACLK_1,
      S_ARESETN => S02_ARESETN_1,
      S_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_to_s02_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => ps7_0_axi_periph_to_s02_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => ps7_0_axi_periph_to_s02_couplers_AWCACHE(3 downto 0),
      S_AXI_awlen(7 downto 0) => ps7_0_axi_periph_to_s02_couplers_AWLEN(7 downto 0),
      S_AXI_awprot(2 downto 0) => ps7_0_axi_periph_to_s02_couplers_AWPROT(2 downto 0),
      S_AXI_awready => ps7_0_axi_periph_to_s02_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => ps7_0_axi_periph_to_s02_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => ps7_0_axi_periph_to_s02_couplers_AWVALID,
      S_AXI_bready => ps7_0_axi_periph_to_s02_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => ps7_0_axi_periph_to_s02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => ps7_0_axi_periph_to_s02_couplers_BVALID,
      S_AXI_wdata(31 downto 0) => ps7_0_axi_periph_to_s02_couplers_WDATA(31 downto 0),
      S_AXI_wlast => ps7_0_axi_periph_to_s02_couplers_WLAST,
      S_AXI_wready => ps7_0_axi_periph_to_s02_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_to_s02_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => ps7_0_axi_periph_to_s02_couplers_WVALID
    );
xbar: component embedded_system_xbar_0
     port map (
      aclk => ps7_0_axi_periph_ACLK_net,
      aresetn => ps7_0_axi_periph_ARESETN_net,
      m_axi_araddr(223 downto 192) => xbar_to_m06_couplers_ARADDR(223 downto 192),
      m_axi_araddr(191 downto 160) => xbar_to_m05_couplers_ARADDR(191 downto 160),
      m_axi_araddr(159 downto 128) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      m_axi_araddr(127 downto 96) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      m_axi_araddr(95 downto 64) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      m_axi_araddr(63 downto 32) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(13 downto 12) => xbar_to_m06_couplers_ARBURST(13 downto 12),
      m_axi_arburst(11 downto 10) => xbar_to_m05_couplers_ARBURST(11 downto 10),
      m_axi_arburst(9 downto 8) => xbar_to_m04_couplers_ARBURST(9 downto 8),
      m_axi_arburst(7 downto 6) => xbar_to_m03_couplers_ARBURST(7 downto 6),
      m_axi_arburst(5 downto 4) => xbar_to_m02_couplers_ARBURST(5 downto 4),
      m_axi_arburst(3 downto 2) => xbar_to_m01_couplers_ARBURST(3 downto 2),
      m_axi_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(27 downto 24) => xbar_to_m06_couplers_ARCACHE(27 downto 24),
      m_axi_arcache(23 downto 20) => xbar_to_m05_couplers_ARCACHE(23 downto 20),
      m_axi_arcache(19 downto 16) => xbar_to_m04_couplers_ARCACHE(19 downto 16),
      m_axi_arcache(15 downto 12) => xbar_to_m03_couplers_ARCACHE(15 downto 12),
      m_axi_arcache(11 downto 8) => xbar_to_m02_couplers_ARCACHE(11 downto 8),
      m_axi_arcache(7 downto 4) => xbar_to_m01_couplers_ARCACHE(7 downto 4),
      m_axi_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(55 downto 48) => xbar_to_m06_couplers_ARLEN(55 downto 48),
      m_axi_arlen(47 downto 40) => xbar_to_m05_couplers_ARLEN(47 downto 40),
      m_axi_arlen(39 downto 32) => xbar_to_m04_couplers_ARLEN(39 downto 32),
      m_axi_arlen(31 downto 24) => xbar_to_m03_couplers_ARLEN(31 downto 24),
      m_axi_arlen(23 downto 16) => xbar_to_m02_couplers_ARLEN(23 downto 16),
      m_axi_arlen(15 downto 8) => xbar_to_m01_couplers_ARLEN(15 downto 8),
      m_axi_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(6) => xbar_to_m06_couplers_ARLOCK(6),
      m_axi_arlock(5) => xbar_to_m05_couplers_ARLOCK(5),
      m_axi_arlock(4) => xbar_to_m04_couplers_ARLOCK(4),
      m_axi_arlock(3) => xbar_to_m03_couplers_ARLOCK(3),
      m_axi_arlock(2) => xbar_to_m02_couplers_ARLOCK(2),
      m_axi_arlock(1) => xbar_to_m01_couplers_ARLOCK(1),
      m_axi_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      m_axi_arprot(20 downto 18) => xbar_to_m06_couplers_ARPROT(20 downto 18),
      m_axi_arprot(17 downto 15) => xbar_to_m05_couplers_ARPROT(17 downto 15),
      m_axi_arprot(14 downto 12) => xbar_to_m04_couplers_ARPROT(14 downto 12),
      m_axi_arprot(11 downto 9) => xbar_to_m03_couplers_ARPROT(11 downto 9),
      m_axi_arprot(8 downto 6) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      m_axi_arprot(5 downto 3) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(27 downto 24) => xbar_to_m06_couplers_ARQOS(27 downto 24),
      m_axi_arqos(23 downto 20) => xbar_to_m05_couplers_ARQOS(23 downto 20),
      m_axi_arqos(19 downto 16) => xbar_to_m04_couplers_ARQOS(19 downto 16),
      m_axi_arqos(15 downto 12) => xbar_to_m03_couplers_ARQOS(15 downto 12),
      m_axi_arqos(11 downto 8) => xbar_to_m02_couplers_ARQOS(11 downto 8),
      m_axi_arqos(7 downto 4) => xbar_to_m01_couplers_ARQOS(7 downto 4),
      m_axi_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      m_axi_arready(6) => xbar_to_m06_couplers_ARREADY,
      m_axi_arready(5) => xbar_to_m05_couplers_ARREADY,
      m_axi_arready(4) => xbar_to_m04_couplers_ARREADY,
      m_axi_arready(3) => xbar_to_m03_couplers_ARREADY,
      m_axi_arready(2) => xbar_to_m02_couplers_ARREADY,
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY,
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arregion(27 downto 24) => xbar_to_m06_couplers_ARREGION(27 downto 24),
      m_axi_arregion(23 downto 20) => xbar_to_m05_couplers_ARREGION(23 downto 20),
      m_axi_arregion(19 downto 16) => xbar_to_m04_couplers_ARREGION(19 downto 16),
      m_axi_arregion(15 downto 12) => xbar_to_m03_couplers_ARREGION(15 downto 12),
      m_axi_arregion(11 downto 8) => xbar_to_m02_couplers_ARREGION(11 downto 8),
      m_axi_arregion(7 downto 4) => xbar_to_m01_couplers_ARREGION(7 downto 4),
      m_axi_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      m_axi_arsize(20 downto 18) => xbar_to_m06_couplers_ARSIZE(20 downto 18),
      m_axi_arsize(17 downto 15) => xbar_to_m05_couplers_ARSIZE(17 downto 15),
      m_axi_arsize(14 downto 12) => xbar_to_m04_couplers_ARSIZE(14 downto 12),
      m_axi_arsize(11 downto 9) => xbar_to_m03_couplers_ARSIZE(11 downto 9),
      m_axi_arsize(8 downto 6) => xbar_to_m02_couplers_ARSIZE(8 downto 6),
      m_axi_arsize(5 downto 3) => xbar_to_m01_couplers_ARSIZE(5 downto 3),
      m_axi_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid(6) => xbar_to_m06_couplers_ARVALID(6),
      m_axi_arvalid(5) => xbar_to_m05_couplers_ARVALID(5),
      m_axi_arvalid(4) => xbar_to_m04_couplers_ARVALID(4),
      m_axi_arvalid(3) => xbar_to_m03_couplers_ARVALID(3),
      m_axi_arvalid(2) => xbar_to_m02_couplers_ARVALID(2),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(223 downto 192) => xbar_to_m06_couplers_AWADDR(223 downto 192),
      m_axi_awaddr(191 downto 160) => xbar_to_m05_couplers_AWADDR(191 downto 160),
      m_axi_awaddr(159 downto 128) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      m_axi_awaddr(127 downto 96) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      m_axi_awaddr(95 downto 64) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      m_axi_awaddr(63 downto 32) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(13 downto 12) => xbar_to_m06_couplers_AWBURST(13 downto 12),
      m_axi_awburst(11 downto 10) => xbar_to_m05_couplers_AWBURST(11 downto 10),
      m_axi_awburst(9 downto 8) => xbar_to_m04_couplers_AWBURST(9 downto 8),
      m_axi_awburst(7 downto 6) => xbar_to_m03_couplers_AWBURST(7 downto 6),
      m_axi_awburst(5 downto 4) => xbar_to_m02_couplers_AWBURST(5 downto 4),
      m_axi_awburst(3 downto 2) => xbar_to_m01_couplers_AWBURST(3 downto 2),
      m_axi_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(27 downto 24) => xbar_to_m06_couplers_AWCACHE(27 downto 24),
      m_axi_awcache(23 downto 20) => xbar_to_m05_couplers_AWCACHE(23 downto 20),
      m_axi_awcache(19 downto 16) => xbar_to_m04_couplers_AWCACHE(19 downto 16),
      m_axi_awcache(15 downto 12) => xbar_to_m03_couplers_AWCACHE(15 downto 12),
      m_axi_awcache(11 downto 8) => xbar_to_m02_couplers_AWCACHE(11 downto 8),
      m_axi_awcache(7 downto 4) => xbar_to_m01_couplers_AWCACHE(7 downto 4),
      m_axi_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(55 downto 48) => xbar_to_m06_couplers_AWLEN(55 downto 48),
      m_axi_awlen(47 downto 40) => xbar_to_m05_couplers_AWLEN(47 downto 40),
      m_axi_awlen(39 downto 32) => xbar_to_m04_couplers_AWLEN(39 downto 32),
      m_axi_awlen(31 downto 24) => xbar_to_m03_couplers_AWLEN(31 downto 24),
      m_axi_awlen(23 downto 16) => xbar_to_m02_couplers_AWLEN(23 downto 16),
      m_axi_awlen(15 downto 8) => xbar_to_m01_couplers_AWLEN(15 downto 8),
      m_axi_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(6) => xbar_to_m06_couplers_AWLOCK(6),
      m_axi_awlock(5) => xbar_to_m05_couplers_AWLOCK(5),
      m_axi_awlock(4) => xbar_to_m04_couplers_AWLOCK(4),
      m_axi_awlock(3) => xbar_to_m03_couplers_AWLOCK(3),
      m_axi_awlock(2) => xbar_to_m02_couplers_AWLOCK(2),
      m_axi_awlock(1) => xbar_to_m01_couplers_AWLOCK(1),
      m_axi_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      m_axi_awprot(20 downto 18) => xbar_to_m06_couplers_AWPROT(20 downto 18),
      m_axi_awprot(17 downto 15) => xbar_to_m05_couplers_AWPROT(17 downto 15),
      m_axi_awprot(14 downto 12) => xbar_to_m04_couplers_AWPROT(14 downto 12),
      m_axi_awprot(11 downto 9) => xbar_to_m03_couplers_AWPROT(11 downto 9),
      m_axi_awprot(8 downto 6) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      m_axi_awprot(5 downto 3) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(27 downto 24) => xbar_to_m06_couplers_AWQOS(27 downto 24),
      m_axi_awqos(23 downto 20) => xbar_to_m05_couplers_AWQOS(23 downto 20),
      m_axi_awqos(19 downto 16) => xbar_to_m04_couplers_AWQOS(19 downto 16),
      m_axi_awqos(15 downto 12) => xbar_to_m03_couplers_AWQOS(15 downto 12),
      m_axi_awqos(11 downto 8) => xbar_to_m02_couplers_AWQOS(11 downto 8),
      m_axi_awqos(7 downto 4) => xbar_to_m01_couplers_AWQOS(7 downto 4),
      m_axi_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      m_axi_awready(6) => xbar_to_m06_couplers_AWREADY,
      m_axi_awready(5) => xbar_to_m05_couplers_AWREADY,
      m_axi_awready(4) => xbar_to_m04_couplers_AWREADY,
      m_axi_awready(3) => xbar_to_m03_couplers_AWREADY,
      m_axi_awready(2) => xbar_to_m02_couplers_AWREADY,
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY,
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awregion(27 downto 24) => xbar_to_m06_couplers_AWREGION(27 downto 24),
      m_axi_awregion(23 downto 20) => xbar_to_m05_couplers_AWREGION(23 downto 20),
      m_axi_awregion(19 downto 16) => xbar_to_m04_couplers_AWREGION(19 downto 16),
      m_axi_awregion(15 downto 12) => xbar_to_m03_couplers_AWREGION(15 downto 12),
      m_axi_awregion(11 downto 8) => xbar_to_m02_couplers_AWREGION(11 downto 8),
      m_axi_awregion(7 downto 4) => xbar_to_m01_couplers_AWREGION(7 downto 4),
      m_axi_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      m_axi_awsize(20 downto 18) => xbar_to_m06_couplers_AWSIZE(20 downto 18),
      m_axi_awsize(17 downto 15) => xbar_to_m05_couplers_AWSIZE(17 downto 15),
      m_axi_awsize(14 downto 12) => xbar_to_m04_couplers_AWSIZE(14 downto 12),
      m_axi_awsize(11 downto 9) => xbar_to_m03_couplers_AWSIZE(11 downto 9),
      m_axi_awsize(8 downto 6) => xbar_to_m02_couplers_AWSIZE(8 downto 6),
      m_axi_awsize(5 downto 3) => xbar_to_m01_couplers_AWSIZE(5 downto 3),
      m_axi_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid(6) => xbar_to_m06_couplers_AWVALID(6),
      m_axi_awvalid(5) => xbar_to_m05_couplers_AWVALID(5),
      m_axi_awvalid(4) => xbar_to_m04_couplers_AWVALID(4),
      m_axi_awvalid(3) => xbar_to_m03_couplers_AWVALID(3),
      m_axi_awvalid(2) => xbar_to_m02_couplers_AWVALID(2),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bready(6) => xbar_to_m06_couplers_BREADY(6),
      m_axi_bready(5) => xbar_to_m05_couplers_BREADY(5),
      m_axi_bready(4) => xbar_to_m04_couplers_BREADY(4),
      m_axi_bready(3) => xbar_to_m03_couplers_BREADY(3),
      m_axi_bready(2) => xbar_to_m02_couplers_BREADY(2),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(13) => xbar_to_m06_couplers_BRESP,
      m_axi_bresp(12) => xbar_to_m06_couplers_BRESP,
      m_axi_bresp(11 downto 10) => xbar_to_m05_couplers_BRESP(1 downto 0),
      m_axi_bresp(9) => xbar_to_m04_couplers_BRESP,
      m_axi_bresp(8) => xbar_to_m04_couplers_BRESP,
      m_axi_bresp(7) => xbar_to_m03_couplers_BRESP,
      m_axi_bresp(6) => xbar_to_m03_couplers_BRESP,
      m_axi_bresp(5) => xbar_to_m02_couplers_BRESP,
      m_axi_bresp(4) => xbar_to_m02_couplers_BRESP,
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(6) => xbar_to_m06_couplers_BVALID,
      m_axi_bvalid(5) => xbar_to_m05_couplers_BVALID,
      m_axi_bvalid(4) => xbar_to_m04_couplers_BVALID,
      m_axi_bvalid(3) => xbar_to_m03_couplers_BVALID,
      m_axi_bvalid(2) => xbar_to_m02_couplers_BVALID,
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID,
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(3583) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3582) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3581) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3580) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3579) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3578) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3577) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3576) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3575) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3574) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3573) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3572) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3571) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3570) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3569) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3568) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3567) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3566) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3565) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3564) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3563) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3562) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3561) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3560) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3559) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3558) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3557) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3556) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3555) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3554) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3553) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3552) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3551) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3550) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3549) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3548) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3547) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3546) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3545) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3544) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3543) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3542) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3541) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3540) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3539) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3538) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3537) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3536) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3535) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3534) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3533) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3532) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3531) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3530) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3529) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3528) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3527) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3526) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3525) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3524) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3523) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3522) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3521) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3520) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3519) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3518) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3517) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3516) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3515) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3514) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3513) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3512) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3511) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3510) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3509) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3508) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3507) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3506) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3505) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3504) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3503) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3502) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3501) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3500) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3499) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3498) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3497) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3496) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3495) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3494) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3493) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3492) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3491) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3490) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3489) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3488) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3487) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3486) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3485) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3484) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3483) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3482) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3481) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3480) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3479) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3478) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3477) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3476) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3475) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3474) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3473) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3472) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3471) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3470) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3469) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3468) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3467) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3466) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3465) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3464) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3463) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3462) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3461) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3460) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3459) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3458) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3457) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3456) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3455) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3454) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3453) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3452) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3451) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3450) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3449) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3448) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3447) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3446) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3445) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3444) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3443) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3442) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3441) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3440) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3439) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3438) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3437) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3436) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3435) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3434) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3433) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3432) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3431) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3430) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3429) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3428) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3427) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3426) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3425) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3424) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3423) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3422) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3421) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3420) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3419) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3418) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3417) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3416) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3415) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3414) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3413) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3412) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3411) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3410) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3409) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3408) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3407) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3406) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3405) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3404) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3403) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3402) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3401) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3400) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3399) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3398) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3397) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3396) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3395) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3394) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3393) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3392) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3391) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3390) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3389) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3388) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3387) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3386) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3385) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3384) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3383) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3382) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3381) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3380) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3379) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3378) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3377) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3376) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3375) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3374) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3373) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3372) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3371) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3370) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3369) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3368) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3367) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3366) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3365) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3364) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3363) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3362) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3361) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3360) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3359) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3358) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3357) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3356) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3355) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3354) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3353) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3352) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3351) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3350) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3349) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3348) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3347) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3346) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3345) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3344) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3343) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3342) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3341) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3340) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3339) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3338) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3337) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3336) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3335) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3334) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3333) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3332) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3331) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3330) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3329) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3328) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3327) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3326) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3325) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3324) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3323) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3322) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3321) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3320) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3319) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3318) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3317) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3316) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3315) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3314) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3313) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3312) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3311) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3310) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3309) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3308) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3307) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3306) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3305) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3304) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3303) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3302) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3301) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3300) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3299) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3298) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3297) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3296) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3295) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3294) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3293) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3292) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3291) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3290) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3289) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3288) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3287) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3286) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3285) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3284) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3283) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3282) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3281) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3280) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3279) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3278) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3277) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3276) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3275) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3274) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3273) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3272) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3271) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3270) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3269) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3268) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3267) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3266) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3265) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3264) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3263) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3262) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3261) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3260) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3259) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3258) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3257) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3256) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3255) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3254) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3253) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3252) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3251) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3250) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3249) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3248) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3247) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3246) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3245) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3244) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3243) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3242) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3241) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3240) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3239) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3238) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3237) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3236) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3235) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3234) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3233) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3232) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3231) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3230) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3229) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3228) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3227) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3226) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3225) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3224) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3223) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3222) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3221) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3220) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3219) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3218) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3217) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3216) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3215) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3214) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3213) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3212) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3211) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3210) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3209) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3208) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3207) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3206) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3205) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3204) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3203) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3202) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3201) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3200) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3199) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3198) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3197) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3196) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3195) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3194) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3193) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3192) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3191) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3190) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3189) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3188) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3187) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3186) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3185) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3184) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3183) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3182) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3181) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3180) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3179) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3178) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3177) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3176) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3175) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3174) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3173) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3172) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3171) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3170) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3169) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3168) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3167) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3166) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3165) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3164) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3163) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3162) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3161) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3160) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3159) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3158) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3157) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3156) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3155) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3154) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3153) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3152) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3151) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3150) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3149) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3148) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3147) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3146) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3145) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3144) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3143) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3142) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3141) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3140) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3139) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3138) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3137) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3136) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3135) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3134) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3133) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3132) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3131) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3130) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3129) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3128) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3127) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3126) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3125) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3124) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3123) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3122) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3121) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3120) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3119) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3118) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3117) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3116) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3115) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3114) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3113) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3112) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3111) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3110) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3109) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3108) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3107) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3106) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3105) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3104) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3103) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3102) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3101) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3100) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3099) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3098) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3097) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3096) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3095) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3094) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3093) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3092) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3091) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3090) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3089) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3088) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3087) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3086) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3085) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3084) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3083) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3082) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3081) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3080) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3079) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3078) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3077) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3076) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3075) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3074) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3073) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3072) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(3071 downto 2560) => xbar_to_m05_couplers_RDATA(511 downto 0),
      m_axi_rdata(2559) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2558) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2557) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2556) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2555) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2554) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2553) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2552) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2551) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2550) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2549) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2548) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2547) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2546) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2545) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2544) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2543) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2542) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2541) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2540) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2539) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2538) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2537) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2536) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2535) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2534) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2533) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2532) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2531) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2530) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2529) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2528) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2527) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2526) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2525) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2524) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2523) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2522) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2521) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2520) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2519) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2518) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2517) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2516) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2515) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2514) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2513) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2512) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2511) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2510) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2509) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2508) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2507) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2506) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2505) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2504) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2503) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2502) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2501) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2500) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2499) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2498) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2497) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2496) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2495) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2494) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2493) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2492) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2491) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2490) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2489) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2488) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2487) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2486) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2485) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2484) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2483) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2482) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2481) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2480) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2479) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2478) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2477) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2476) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2475) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2474) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2473) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2472) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2471) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2470) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2469) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2468) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2467) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2466) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2465) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2464) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2463) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2462) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2461) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2460) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2459) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2458) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2457) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2456) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2455) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2454) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2453) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2452) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2451) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2450) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2449) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2448) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2447) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2446) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2445) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2444) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2443) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2442) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2441) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2440) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2439) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2438) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2437) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2436) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2435) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2434) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2433) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2432) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2431) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2430) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2429) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2428) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2427) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2426) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2425) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2424) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2423) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2422) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2421) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2420) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2419) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2418) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2417) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2416) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2415) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2414) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2413) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2412) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2411) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2410) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2409) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2408) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2407) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2406) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2405) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2404) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2403) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2402) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2401) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2400) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2399) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2398) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2397) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2396) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2395) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2394) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2393) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2392) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2391) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2390) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2389) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2388) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2387) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2386) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2385) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2384) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2383) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2382) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2381) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2380) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2379) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2378) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2377) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2376) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2375) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2374) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2373) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2372) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2371) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2370) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2369) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2368) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2367) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2366) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2365) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2364) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2363) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2362) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2361) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2360) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2359) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2358) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2357) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2356) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2355) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2354) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2353) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2352) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2351) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2350) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2349) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2348) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2347) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2346) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2345) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2344) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2343) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2342) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2341) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2340) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2339) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2338) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2337) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2336) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2335) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2334) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2333) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2332) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2331) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2330) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2329) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2328) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2327) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2326) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2325) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2324) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2323) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2322) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2321) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2320) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2319) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2318) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2317) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2316) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2315) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2314) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2313) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2312) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2311) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2310) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2309) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2308) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2307) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2306) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2305) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2304) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2303) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2302) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2301) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2300) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2299) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2298) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2297) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2296) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2295) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2294) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2293) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2292) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2291) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2290) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2289) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2288) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2287) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2286) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2285) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2284) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2283) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2282) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2281) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2280) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2279) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2278) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2277) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2276) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2275) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2274) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2273) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2272) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2271) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2270) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2269) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2268) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2267) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2266) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2265) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2264) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2263) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2262) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2261) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2260) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2259) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2258) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2257) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2256) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2255) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2254) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2253) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2252) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2251) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2250) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2249) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2248) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2247) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2246) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2245) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2244) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2243) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2242) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2241) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2240) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2239) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2238) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2237) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2236) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2235) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2234) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2233) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2232) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2231) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2230) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2229) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2228) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2227) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2226) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2225) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2224) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2223) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2222) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2221) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2220) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2219) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2218) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2217) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2216) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2215) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2214) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2213) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2212) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2211) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2210) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2209) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2208) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2207) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2206) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2205) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2204) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2203) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2202) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2201) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2200) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2199) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2198) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2197) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2196) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2195) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2194) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2193) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2192) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2191) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2190) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2189) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2188) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2187) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2186) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2185) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2184) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2183) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2182) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2181) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2180) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2179) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2178) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2177) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2176) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2175) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2174) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2173) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2172) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2171) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2170) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2169) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2168) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2167) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2166) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2165) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2164) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2163) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2162) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2161) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2160) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2159) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2158) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2157) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2156) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2155) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2154) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2153) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2152) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2151) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2150) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2149) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2148) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2147) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2146) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2145) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2144) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2143) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2142) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2141) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2140) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2139) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2138) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2137) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2136) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2135) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2134) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2133) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2132) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2131) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2130) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2129) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2128) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2127) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2126) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2125) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2124) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2123) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2122) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2121) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2120) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2119) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2118) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2117) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2116) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2115) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2114) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2113) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2112) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2111) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2110) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2109) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2108) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2107) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2106) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2105) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2104) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2103) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2102) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2101) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2100) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2099) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2098) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2097) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2096) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2095) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2094) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2093) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2092) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2091) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2090) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2089) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2088) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2087) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2086) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2085) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2084) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2083) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2082) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2081) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2080) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2079) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2078) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2077) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2076) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2075) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2074) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2073) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2072) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2071) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2070) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2069) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2068) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2067) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2066) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2065) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2064) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2063) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2062) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2061) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2060) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2059) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2058) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2057) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2056) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2055) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2054) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2053) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2052) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2051) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2050) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2049) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2048) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(2047) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(2046) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(2045) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(2044) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(2043) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(2042) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(2041) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(2040) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(2039) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(2038) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(2037) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(2036) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(2035) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(2034) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(2033) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(2032) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(2031) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(2030) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(2029) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(2028) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(2027) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(2026) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(2025) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(2024) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(2023) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(2022) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(2021) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(2020) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(2019) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(2018) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(2017) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(2016) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(2015) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(2014) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(2013) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(2012) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(2011) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(2010) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(2009) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(2008) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(2007) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(2006) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(2005) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(2004) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(2003) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(2002) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(2001) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(2000) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1999) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1998) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1997) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1996) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1995) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1994) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1993) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1992) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1991) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1990) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1989) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1988) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1987) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1986) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1985) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1984) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1983) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1982) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1981) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1980) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1979) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1978) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1977) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1976) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1975) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1974) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1973) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1972) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1971) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1970) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1969) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1968) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1967) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1966) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1965) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1964) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1963) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1962) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1961) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1960) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1959) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1958) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1957) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1956) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1955) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1954) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1953) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1952) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1951) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1950) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1949) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1948) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1947) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1946) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1945) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1944) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1943) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1942) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1941) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1940) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1939) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1938) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1937) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1936) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1935) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1934) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1933) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1932) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1931) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1930) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1929) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1928) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1927) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1926) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1925) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1924) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1923) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1922) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1921) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1920) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1919) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1918) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1917) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1916) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1915) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1914) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1913) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1912) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1911) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1910) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1909) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1908) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1907) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1906) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1905) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1904) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1903) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1902) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1901) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1900) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1899) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1898) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1897) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1896) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1895) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1894) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1893) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1892) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1891) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1890) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1889) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1888) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1887) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1886) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1885) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1884) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1883) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1882) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1881) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1880) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1879) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1878) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1877) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1876) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1875) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1874) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1873) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1872) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1871) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1870) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1869) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1868) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1867) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1866) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1865) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1864) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1863) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1862) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1861) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1860) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1859) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1858) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1857) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1856) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1855) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1854) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1853) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1852) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1851) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1850) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1849) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1848) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1847) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1846) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1845) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1844) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1843) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1842) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1841) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1840) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1839) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1838) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1837) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1836) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1835) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1834) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1833) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1832) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1831) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1830) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1829) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1828) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1827) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1826) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1825) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1824) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1823) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1822) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1821) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1820) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1819) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1818) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1817) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1816) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1815) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1814) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1813) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1812) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1811) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1810) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1809) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1808) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1807) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1806) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1805) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1804) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1803) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1802) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1801) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1800) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1799) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1798) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1797) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1796) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1795) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1794) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1793) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1792) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1791) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1790) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1789) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1788) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1787) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1786) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1785) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1784) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1783) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1782) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1781) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1780) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1779) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1778) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1777) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1776) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1775) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1774) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1773) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1772) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1771) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1770) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1769) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1768) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1767) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1766) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1765) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1764) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1763) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1762) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1761) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1760) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1759) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1758) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1757) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1756) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1755) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1754) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1753) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1752) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1751) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1750) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1749) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1748) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1747) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1746) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1745) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1744) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1743) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1742) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1741) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1740) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1739) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1738) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1737) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1736) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1735) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1734) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1733) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1732) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1731) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1730) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1729) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1728) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1727) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1726) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1725) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1724) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1723) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1722) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1721) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1720) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1719) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1718) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1717) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1716) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1715) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1714) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1713) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1712) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1711) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1710) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1709) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1708) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1707) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1706) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1705) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1704) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1703) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1702) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1701) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1700) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1699) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1698) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1697) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1696) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1695) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1694) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1693) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1692) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1691) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1690) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1689) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1688) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1687) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1686) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1685) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1684) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1683) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1682) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1681) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1680) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1679) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1678) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1677) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1676) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1675) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1674) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1673) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1672) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1671) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1670) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1669) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1668) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1667) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1666) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1665) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1664) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1663) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1662) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1661) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1660) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1659) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1658) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1657) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1656) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1655) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1654) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1653) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1652) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1651) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1650) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1649) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1648) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1647) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1646) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1645) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1644) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1643) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1642) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1641) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1640) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1639) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1638) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1637) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1636) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1635) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1634) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1633) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1632) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1631) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1630) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1629) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1628) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1627) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1626) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1625) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1624) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1623) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1622) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1621) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1620) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1619) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1618) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1617) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1616) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1615) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1614) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1613) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1612) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1611) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1610) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1609) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1608) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1607) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1606) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1605) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1604) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1603) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1602) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1601) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1600) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1599) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1598) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1597) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1596) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1595) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1594) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1593) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1592) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1591) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1590) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1589) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1588) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1587) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1586) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1585) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1584) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1583) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1582) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1581) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1580) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1579) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1578) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1577) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1576) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1575) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1574) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1573) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1572) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1571) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1570) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1569) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1568) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1567) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1566) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1565) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1564) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1563) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1562) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1561) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1560) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1559) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1558) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1557) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1556) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1555) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1554) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1553) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1552) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1551) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1550) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1549) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1548) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1547) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1546) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1545) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1544) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1543) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1542) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1541) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1540) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1539) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1538) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1537) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1536) => xbar_to_m03_couplers_RDATA,
      m_axi_rdata(1535) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1534) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1533) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1532) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1531) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1530) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1529) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1528) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1527) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1526) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1525) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1524) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1523) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1522) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1521) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1520) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1519) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1518) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1517) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1516) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1515) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1514) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1513) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1512) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1511) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1510) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1509) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1508) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1507) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1506) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1505) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1504) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1503) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1502) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1501) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1500) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1499) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1498) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1497) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1496) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1495) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1494) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1493) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1492) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1491) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1490) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1489) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1488) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1487) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1486) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1485) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1484) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1483) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1482) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1481) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1480) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1479) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1478) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1477) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1476) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1475) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1474) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1473) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1472) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1471) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1470) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1469) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1468) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1467) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1466) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1465) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1464) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1463) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1462) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1461) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1460) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1459) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1458) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1457) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1456) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1455) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1454) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1453) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1452) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1451) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1450) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1449) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1448) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1447) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1446) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1445) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1444) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1443) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1442) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1441) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1440) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1439) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1438) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1437) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1436) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1435) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1434) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1433) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1432) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1431) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1430) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1429) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1428) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1427) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1426) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1425) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1424) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1423) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1422) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1421) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1420) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1419) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1418) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1417) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1416) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1415) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1414) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1413) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1412) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1411) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1410) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1409) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1408) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1407) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1406) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1405) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1404) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1403) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1402) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1401) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1400) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1399) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1398) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1397) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1396) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1395) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1394) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1393) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1392) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1391) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1390) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1389) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1388) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1387) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1386) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1385) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1384) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1383) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1382) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1381) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1380) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1379) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1378) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1377) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1376) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1375) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1374) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1373) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1372) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1371) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1370) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1369) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1368) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1367) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1366) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1365) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1364) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1363) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1362) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1361) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1360) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1359) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1358) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1357) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1356) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1355) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1354) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1353) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1352) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1351) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1350) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1349) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1348) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1347) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1346) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1345) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1344) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1343) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1342) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1341) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1340) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1339) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1338) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1337) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1336) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1335) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1334) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1333) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1332) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1331) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1330) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1329) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1328) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1327) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1326) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1325) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1324) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1323) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1322) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1321) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1320) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1319) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1318) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1317) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1316) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1315) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1314) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1313) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1312) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1311) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1310) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1309) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1308) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1307) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1306) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1305) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1304) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1303) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1302) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1301) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1300) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1299) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1298) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1297) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1296) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1295) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1294) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1293) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1292) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1291) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1290) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1289) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1288) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1287) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1286) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1285) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1284) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1283) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1282) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1281) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1280) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1279) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1278) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1277) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1276) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1275) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1274) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1273) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1272) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1271) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1270) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1269) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1268) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1267) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1266) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1265) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1264) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1263) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1262) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1261) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1260) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1259) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1258) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1257) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1256) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1255) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1254) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1253) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1252) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1251) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1250) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1249) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1248) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1247) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1246) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1245) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1244) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1243) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1242) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1241) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1240) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1239) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1238) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1237) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1236) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1235) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1234) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1233) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1232) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1231) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1230) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1229) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1228) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1227) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1226) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1225) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1224) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1223) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1222) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1221) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1220) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1219) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1218) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1217) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1216) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1215) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1214) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1213) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1212) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1211) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1210) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1209) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1208) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1207) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1206) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1205) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1204) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1203) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1202) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1201) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1200) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1199) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1198) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1197) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1196) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1195) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1194) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1193) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1192) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1191) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1190) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1189) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1188) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1187) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1186) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1185) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1184) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1183) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1182) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1181) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1180) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1179) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1178) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1177) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1176) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1175) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1174) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1173) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1172) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1171) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1170) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1169) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1168) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1167) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1166) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1165) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1164) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1163) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1162) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1161) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1160) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1159) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1158) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1157) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1156) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1155) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1154) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1153) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1152) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1151) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1150) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1149) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1148) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1147) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1146) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1145) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1144) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1143) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1142) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1141) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1140) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1139) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1138) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1137) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1136) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1135) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1134) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1133) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1132) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1131) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1130) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1129) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1128) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1127) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1126) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1125) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1124) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1123) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1122) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1121) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1120) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1119) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1118) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1117) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1116) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1115) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1114) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1113) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1112) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1111) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1110) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1109) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1108) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1107) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1106) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1105) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1104) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1103) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1102) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1101) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1100) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1099) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1098) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1097) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1096) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1095) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1094) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1093) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1092) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1091) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1090) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1089) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1088) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1087) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1086) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1085) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1084) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1083) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1082) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1081) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1080) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1079) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1078) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1077) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1076) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1075) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1074) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1073) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1072) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1071) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1070) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1069) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1068) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1067) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1066) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1065) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1064) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1063) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1062) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1061) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1060) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1059) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1058) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1057) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1056) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1055) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1054) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1053) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1052) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1051) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1050) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1049) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1048) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1047) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1046) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1045) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1044) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1043) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1042) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1041) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1040) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1039) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1038) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1037) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1036) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1035) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1034) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1033) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1032) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1031) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1030) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1029) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1028) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1027) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1026) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1025) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1024) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(1023 downto 512) => xbar_to_m01_couplers_RDATA(511 downto 0),
      m_axi_rdata(511 downto 0) => xbar_to_m00_couplers_RDATA(511 downto 0),
      m_axi_rlast(6) => xbar_to_m06_couplers_RLAST,
      m_axi_rlast(5) => xbar_to_m05_couplers_RLAST,
      m_axi_rlast(4) => xbar_to_m04_couplers_RLAST,
      m_axi_rlast(3) => xbar_to_m03_couplers_RLAST,
      m_axi_rlast(2) => xbar_to_m02_couplers_RLAST,
      m_axi_rlast(1) => xbar_to_m01_couplers_RLAST,
      m_axi_rlast(0) => xbar_to_m00_couplers_RLAST,
      m_axi_rready(6) => xbar_to_m06_couplers_RREADY(6),
      m_axi_rready(5) => xbar_to_m05_couplers_RREADY(5),
      m_axi_rready(4) => xbar_to_m04_couplers_RREADY(4),
      m_axi_rready(3) => xbar_to_m03_couplers_RREADY(3),
      m_axi_rready(2) => xbar_to_m02_couplers_RREADY(2),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(13) => xbar_to_m06_couplers_RRESP,
      m_axi_rresp(12) => xbar_to_m06_couplers_RRESP,
      m_axi_rresp(11 downto 10) => xbar_to_m05_couplers_RRESP(1 downto 0),
      m_axi_rresp(9) => xbar_to_m04_couplers_RRESP,
      m_axi_rresp(8) => xbar_to_m04_couplers_RRESP,
      m_axi_rresp(7) => xbar_to_m03_couplers_RRESP,
      m_axi_rresp(6) => xbar_to_m03_couplers_RRESP,
      m_axi_rresp(5) => xbar_to_m02_couplers_RRESP,
      m_axi_rresp(4) => xbar_to_m02_couplers_RRESP,
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(6) => xbar_to_m06_couplers_RVALID,
      m_axi_rvalid(5) => xbar_to_m05_couplers_RVALID,
      m_axi_rvalid(4) => xbar_to_m04_couplers_RVALID,
      m_axi_rvalid(3) => xbar_to_m03_couplers_RVALID,
      m_axi_rvalid(2) => xbar_to_m02_couplers_RVALID,
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID,
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(3583 downto 3072) => xbar_to_m06_couplers_WDATA(3583 downto 3072),
      m_axi_wdata(3071 downto 2560) => xbar_to_m05_couplers_WDATA(3071 downto 2560),
      m_axi_wdata(2559 downto 2048) => xbar_to_m04_couplers_WDATA(2559 downto 2048),
      m_axi_wdata(2047 downto 1536) => xbar_to_m03_couplers_WDATA(2047 downto 1536),
      m_axi_wdata(1535 downto 1024) => xbar_to_m02_couplers_WDATA(1535 downto 1024),
      m_axi_wdata(1023 downto 512) => xbar_to_m01_couplers_WDATA(1023 downto 512),
      m_axi_wdata(511 downto 0) => xbar_to_m00_couplers_WDATA(511 downto 0),
      m_axi_wlast(6) => xbar_to_m06_couplers_WLAST(6),
      m_axi_wlast(5) => xbar_to_m05_couplers_WLAST(5),
      m_axi_wlast(4) => xbar_to_m04_couplers_WLAST(4),
      m_axi_wlast(3) => xbar_to_m03_couplers_WLAST(3),
      m_axi_wlast(2) => xbar_to_m02_couplers_WLAST(2),
      m_axi_wlast(1) => xbar_to_m01_couplers_WLAST(1),
      m_axi_wlast(0) => xbar_to_m00_couplers_WLAST(0),
      m_axi_wready(6) => xbar_to_m06_couplers_WREADY,
      m_axi_wready(5) => xbar_to_m05_couplers_WREADY,
      m_axi_wready(4) => xbar_to_m04_couplers_WREADY,
      m_axi_wready(3) => xbar_to_m03_couplers_WREADY,
      m_axi_wready(2) => xbar_to_m02_couplers_WREADY,
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY,
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(447 downto 384) => xbar_to_m06_couplers_WSTRB(447 downto 384),
      m_axi_wstrb(383 downto 320) => xbar_to_m05_couplers_WSTRB(383 downto 320),
      m_axi_wstrb(319 downto 256) => xbar_to_m04_couplers_WSTRB(319 downto 256),
      m_axi_wstrb(255 downto 192) => xbar_to_m03_couplers_WSTRB(255 downto 192),
      m_axi_wstrb(191 downto 128) => xbar_to_m02_couplers_WSTRB(191 downto 128),
      m_axi_wstrb(127 downto 64) => xbar_to_m01_couplers_WSTRB(127 downto 64),
      m_axi_wstrb(63 downto 0) => xbar_to_m00_couplers_WSTRB(63 downto 0),
      m_axi_wvalid(6) => xbar_to_m06_couplers_WVALID(6),
      m_axi_wvalid(5) => xbar_to_m05_couplers_WVALID(5),
      m_axi_wvalid(4) => xbar_to_m04_couplers_WVALID(4),
      m_axi_wvalid(3) => xbar_to_m03_couplers_WVALID(3),
      m_axi_wvalid(2) => xbar_to_m02_couplers_WVALID(2),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(95 downto 64) => B"00000000000000000000000000000000",
      s_axi_araddr(63 downto 32) => s01_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arburst(5 downto 4) => B"00",
      s_axi_arburst(3 downto 2) => s01_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arcache(11 downto 8) => B"0000",
      s_axi_arcache(7 downto 4) => s01_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arid(5 downto 0) => B"000000",
      s_axi_arlen(23 downto 16) => B"00000000",
      s_axi_arlen(15 downto 8) => s01_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlock(2) => '0',
      s_axi_arlock(1) => s01_couplers_to_xbar_ARLOCK(0),
      s_axi_arlock(0) => s00_couplers_to_xbar_ARLOCK(0),
      s_axi_arprot(8 downto 6) => B"000",
      s_axi_arprot(5 downto 3) => s01_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arqos(11 downto 8) => B"0000",
      s_axi_arqos(7 downto 4) => s01_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arready(2) => NLW_xbar_s_axi_arready_UNCONNECTED(2),
      s_axi_arready(1) => s01_couplers_to_xbar_ARREADY(1),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arsize(8 downto 6) => B"001",
      s_axi_arsize(5 downto 3) => s01_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arvalid(2) => '0',
      s_axi_arvalid(1) => s01_couplers_to_xbar_ARVALID,
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(95 downto 64) => s02_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(63 downto 32) => B"00000000000000000000000000000000",
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awburst(5 downto 4) => s02_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(3 downto 2) => B"00",
      s_axi_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awcache(11 downto 8) => s02_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(7 downto 4) => B"0000",
      s_axi_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awid(5 downto 0) => B"000000",
      s_axi_awlen(23 downto 16) => s02_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(15 downto 8) => B"00000000",
      s_axi_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlock(2) => s02_couplers_to_xbar_AWLOCK(0),
      s_axi_awlock(1) => '0',
      s_axi_awlock(0) => s00_couplers_to_xbar_AWLOCK(0),
      s_axi_awprot(8 downto 6) => s02_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(5 downto 3) => B"000",
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awqos(11 downto 8) => s02_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awqos(7 downto 4) => B"0000",
      s_axi_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awready(2) => s02_couplers_to_xbar_AWREADY(2),
      s_axi_awready(1) => NLW_xbar_s_axi_awready_UNCONNECTED(1),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awsize(8 downto 6) => s02_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(5 downto 3) => B"101",
      s_axi_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awvalid(2) => s02_couplers_to_xbar_AWVALID,
      s_axi_awvalid(1) => '0',
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bid(5 downto 0) => NLW_xbar_s_axi_bid_UNCONNECTED(5 downto 0),
      s_axi_bready(2) => s02_couplers_to_xbar_BREADY,
      s_axi_bready(1) => '0',
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(5 downto 4) => s02_couplers_to_xbar_BRESP(5 downto 4),
      s_axi_bresp(3 downto 2) => NLW_xbar_s_axi_bresp_UNCONNECTED(3 downto 2),
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(2) => s02_couplers_to_xbar_BVALID(2),
      s_axi_bvalid(1) => NLW_xbar_s_axi_bvalid_UNCONNECTED(1),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(1535 downto 1024) => NLW_xbar_s_axi_rdata_UNCONNECTED(1535 downto 1024),
      s_axi_rdata(1023 downto 512) => s01_couplers_to_xbar_RDATA(1023 downto 512),
      s_axi_rdata(511 downto 0) => s00_couplers_to_xbar_RDATA(511 downto 0),
      s_axi_rid(5 downto 0) => NLW_xbar_s_axi_rid_UNCONNECTED(5 downto 0),
      s_axi_rlast(2) => NLW_xbar_s_axi_rlast_UNCONNECTED(2),
      s_axi_rlast(1) => s01_couplers_to_xbar_RLAST(1),
      s_axi_rlast(0) => s00_couplers_to_xbar_RLAST(0),
      s_axi_rready(2) => '0',
      s_axi_rready(1) => s01_couplers_to_xbar_RREADY,
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(5 downto 4) => NLW_xbar_s_axi_rresp_UNCONNECTED(5 downto 4),
      s_axi_rresp(3 downto 2) => s01_couplers_to_xbar_RRESP(3 downto 2),
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(2) => NLW_xbar_s_axi_rvalid_UNCONNECTED(2),
      s_axi_rvalid(1) => s01_couplers_to_xbar_RVALID(1),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(1535 downto 1024) => s02_couplers_to_xbar_WDATA(511 downto 0),
      s_axi_wdata(1023 downto 512) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wdata(511 downto 0) => s00_couplers_to_xbar_WDATA(511 downto 0),
      s_axi_wlast(2) => s02_couplers_to_xbar_WLAST,
      s_axi_wlast(1) => '0',
      s_axi_wlast(0) => s00_couplers_to_xbar_WLAST,
      s_axi_wready(2) => s02_couplers_to_xbar_WREADY(2),
      s_axi_wready(1) => NLW_xbar_s_axi_wready_UNCONNECTED(1),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(191 downto 128) => s02_couplers_to_xbar_WSTRB(63 downto 0),
      s_axi_wstrb(127 downto 64) => B"1111111111111111111111111111111111111111111111111111111111111111",
      s_axi_wstrb(63 downto 0) => s00_couplers_to_xbar_WSTRB(63 downto 0),
      s_axi_wvalid(2) => s02_couplers_to_xbar_WVALID,
      s_axi_wvalid(1) => '0',
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity embedded_system is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of embedded_system : entity is "embedded_system,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=embedded_system,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=27,numReposBlks=16,numNonXlnxBlks=0,numHierBlks=11,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,""""""""""""""""""""""""""""""da_axi4_cnt""""""""""""""""""""""""""""""=10,""""""""""""""""""""""""""""""da_board_cnt""""""""""""""""""""""""""""""=5,""""""""""""""""""""""""""""""da_bram_cntlr_cnt""""""""""""""""""""""""""""""=9,""""""""""""""""""""""""""""""da_clkrst_cnt""""""""""""""""""""""""""""""=9,""""""""""""""""""""""""""""""da_ps7_cnt""""""""""""""""""""""""""""""=3,""""""""""""""""""""""""""""da_axi4_cnt""""""""""""""""""""""""""""=9,""""""""""""""""""""""""""da_axi4_cnt""""""""""""""""""""""""""=1,""""""""""""""""""""""""""da_board_cnt""""""""""""""""""""""""""=1,""""""""""""""""""""""""da_axi4_cnt""""""""""""""""""""""""=21,""""""""""""""""""da_clkrst_cnt""""""""""""""""""=18,""""""""""""""""da_axi4_cnt""""""""""""""""=3,""""""""""da_axi4_cnt""""""""""=3,""""""""""da_board_cnt""""""""""=3,""""""""""da_clkrst_cnt""""""""""=2,""""""""""da_ps7_cnt""""""""""=1,""""""""da_axi4_cnt""""""""=5,""""""""da_board_cnt""""""""=4,""""""""da_bram_cntlr_cnt""""""""=2,""""""""da_clkrst_cnt""""""""=3,""""""""da_ps7_cnt""""""""=1,""""""da_bram_cntlr_cnt""""""=1,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of embedded_system : entity is "embedded_system.hwdef";
end embedded_system;

architecture STRUCTURE of embedded_system is
  component embedded_system_axi_gpio_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    gpio2_io_o : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component embedded_system_axi_gpio_0_0;
  component embedded_system_axi_dma_0_1 is
  port (
    s_axi_lite_aclk : in STD_LOGIC;
    m_axi_mm2s_aclk : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    axi_resetn : in STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_mm2s_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm2s_arvalid : out STD_LOGIC;
    m_axi_mm2s_arready : in STD_LOGIC;
    m_axi_mm2s_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_rlast : in STD_LOGIC;
    m_axi_mm2s_rvalid : in STD_LOGIC;
    m_axi_mm2s_rready : out STD_LOGIC;
    mm2s_prmry_reset_out_n : out STD_LOGIC;
    m_axis_mm2s_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_mm2s_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_mm2s_tvalid : out STD_LOGIC;
    m_axis_mm2s_tready : in STD_LOGIC;
    m_axis_mm2s_tlast : out STD_LOGIC;
    m_axi_s2mm_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_awvalid : out STD_LOGIC;
    m_axi_s2mm_awready : in STD_LOGIC;
    m_axi_s2mm_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_wlast : out STD_LOGIC;
    m_axi_s2mm_wvalid : out STD_LOGIC;
    m_axi_s2mm_wready : in STD_LOGIC;
    m_axi_s2mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_bvalid : in STD_LOGIC;
    m_axi_s2mm_bready : out STD_LOGIC;
    s2mm_prmry_reset_out_n : out STD_LOGIC;
    s_axis_s2mm_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_s2mm_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_s2mm_tvalid : in STD_LOGIC;
    s_axis_s2mm_tready : out STD_LOGIC;
    s_axis_s2mm_tlast : in STD_LOGIC;
    mm2s_introut : out STD_LOGIC;
    s2mm_introut : out STD_LOGIC
  );
  end component embedded_system_axi_dma_0_1;
  component embedded_system_system_ila_0_0 is
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
    SLOT_0_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXIS_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXIS_tlast : in STD_LOGIC;
    SLOT_0_AXIS_tvalid : in STD_LOGIC;
    SLOT_0_AXIS_tready : in STD_LOGIC;
    SLOT_1_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_1_AXIS_tlast : in STD_LOGIC;
    SLOT_1_AXIS_tvalid : in STD_LOGIC;
    SLOT_1_AXIS_tready : in STD_LOGIC;
    SLOT_2_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_2_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_2_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_2_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_awvalid : in STD_LOGIC;
    SLOT_2_AXI_awready : in STD_LOGIC;
    SLOT_2_AXI_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    SLOT_2_AXI_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    SLOT_2_AXI_wlast : in STD_LOGIC;
    SLOT_2_AXI_wvalid : in STD_LOGIC;
    SLOT_2_AXI_wready : in STD_LOGIC;
    SLOT_2_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_bvalid : in STD_LOGIC;
    SLOT_2_AXI_bready : in STD_LOGIC;
    SLOT_2_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_2_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_2_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_2_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_arvalid : in STD_LOGIC;
    SLOT_2_AXI_arready : in STD_LOGIC;
    SLOT_2_AXI_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    SLOT_2_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_rlast : in STD_LOGIC;
    SLOT_2_AXI_rvalid : in STD_LOGIC;
    SLOT_2_AXI_rready : in STD_LOGIC;
    SLOT_3_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_3_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_3_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_3_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_3_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_3_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_3_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_3_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_3_AXI_awvalid : in STD_LOGIC;
    SLOT_3_AXI_awready : in STD_LOGIC;
    SLOT_3_AXI_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    SLOT_3_AXI_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    SLOT_3_AXI_wlast : in STD_LOGIC;
    SLOT_3_AXI_wvalid : in STD_LOGIC;
    SLOT_3_AXI_wready : in STD_LOGIC;
    SLOT_3_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_3_AXI_bvalid : in STD_LOGIC;
    SLOT_3_AXI_bready : in STD_LOGIC;
    SLOT_3_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_3_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_3_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_3_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_3_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_3_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_3_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_3_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_3_AXI_arvalid : in STD_LOGIC;
    SLOT_3_AXI_arready : in STD_LOGIC;
    SLOT_3_AXI_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    SLOT_3_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_3_AXI_rlast : in STD_LOGIC;
    SLOT_3_AXI_rvalid : in STD_LOGIC;
    SLOT_3_AXI_rready : in STD_LOGIC;
    SLOT_4_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_4_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_4_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_4_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_4_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_4_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_4_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_4_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_4_AXI_awvalid : in STD_LOGIC;
    SLOT_4_AXI_awready : in STD_LOGIC;
    SLOT_4_AXI_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    SLOT_4_AXI_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    SLOT_4_AXI_wlast : in STD_LOGIC;
    SLOT_4_AXI_wvalid : in STD_LOGIC;
    SLOT_4_AXI_wready : in STD_LOGIC;
    SLOT_4_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_4_AXI_bvalid : in STD_LOGIC;
    SLOT_4_AXI_bready : in STD_LOGIC;
    SLOT_4_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_4_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_4_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_4_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_4_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_4_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_4_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_4_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_4_AXI_arvalid : in STD_LOGIC;
    SLOT_4_AXI_arready : in STD_LOGIC;
    SLOT_4_AXI_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    SLOT_4_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_4_AXI_rlast : in STD_LOGIC;
    SLOT_4_AXI_rvalid : in STD_LOGIC;
    SLOT_4_AXI_rready : in STD_LOGIC;
    resetn : in STD_LOGIC
  );
  end component embedded_system_system_ila_0_0;
  component embedded_system_processing_system7_0_0 is
  port (
    USB0_PORT_INDCTL : out STD_LOGIC_VECTOR ( 1 downto 0 );
    USB0_VBUS_PWRSELECT : out STD_LOGIC;
    USB0_VBUS_PWRFAULT : in STD_LOGIC;
    M_AXI_GP0_ARVALID : out STD_LOGIC;
    M_AXI_GP0_AWVALID : out STD_LOGIC;
    M_AXI_GP0_BREADY : out STD_LOGIC;
    M_AXI_GP0_RREADY : out STD_LOGIC;
    M_AXI_GP0_WLAST : out STD_LOGIC;
    M_AXI_GP0_WVALID : out STD_LOGIC;
    M_AXI_GP0_ARID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_AWID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_WID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ACLK : in STD_LOGIC;
    M_AXI_GP0_ARREADY : in STD_LOGIC;
    M_AXI_GP0_AWREADY : in STD_LOGIC;
    M_AXI_GP0_BVALID : in STD_LOGIC;
    M_AXI_GP0_RLAST : in STD_LOGIC;
    M_AXI_GP0_RVALID : in STD_LOGIC;
    M_AXI_GP0_WREADY : in STD_LOGIC;
    M_AXI_GP0_BID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_RID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_ARREADY : out STD_LOGIC;
    S_AXI_HP0_AWREADY : out STD_LOGIC;
    S_AXI_HP0_BVALID : out STD_LOGIC;
    S_AXI_HP0_RLAST : out STD_LOGIC;
    S_AXI_HP0_RVALID : out STD_LOGIC;
    S_AXI_HP0_WREADY : out STD_LOGIC;
    S_AXI_HP0_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_BID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_RID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_RCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP0_WCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP0_RACOUNT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_WACOUNT : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_ACLK : in STD_LOGIC;
    S_AXI_HP0_ARVALID : in STD_LOGIC;
    S_AXI_HP0_AWVALID : in STD_LOGIC;
    S_AXI_HP0_BREADY : in STD_LOGIC;
    S_AXI_HP0_RDISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP0_RREADY : in STD_LOGIC;
    S_AXI_HP0_WLAST : in STD_LOGIC;
    S_AXI_HP0_WRISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP0_WVALID : in STD_LOGIC;
    S_AXI_HP0_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_ARLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_AWLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_AWID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_WID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    FCLK_CLK0 : out STD_LOGIC;
    FCLK_RESET0_N : out STD_LOGIC;
    MIO : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    DDR_CAS_n : inout STD_LOGIC;
    DDR_CKE : inout STD_LOGIC;
    DDR_Clk_n : inout STD_LOGIC;
    DDR_Clk : inout STD_LOGIC;
    DDR_CS_n : inout STD_LOGIC;
    DDR_DRSTB : inout STD_LOGIC;
    DDR_ODT : inout STD_LOGIC;
    DDR_RAS_n : inout STD_LOGIC;
    DDR_WEB : inout STD_LOGIC;
    DDR_BankAddr : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_Addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_VRN : inout STD_LOGIC;
    DDR_VRP : inout STD_LOGIC;
    DDR_DM : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQ : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_DQS_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQS : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    PS_SRSTB : inout STD_LOGIC;
    PS_CLK : inout STD_LOGIC;
    PS_PORB : inout STD_LOGIC
  );
  end component embedded_system_processing_system7_0_0;
  component embedded_system_rst_ps7_0_50M_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component embedded_system_rst_ps7_0_50M_0;
  signal PL_CLASSIFIER_w_VOTI_0_m_axis_TREADY : STD_LOGIC;
  attribute CONN_BUS_INFO : string;
  attribute CONN_BUS_INFO of PL_CLASSIFIER_w_VOTI_0_m_axis_TREADY : signal is "PL_CLASSIFIER_w_VOTI_0_m_axis xilinx.com:interface:axis:1.0 None TREADY";
  attribute DEBUG : string;
  attribute DEBUG of PL_CLASSIFIER_w_VOTI_0_m_axis_TREADY : signal is "true";
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of PL_CLASSIFIER_w_VOTI_0_m_axis_TREADY : signal is std.standard.true;
  signal axi_dma_0_M_AXIS_MM2S_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute CONN_BUS_INFO of axi_dma_0_M_AXIS_MM2S_TDATA : signal is "axi_dma_0_M_AXIS_MM2S xilinx.com:interface:axis:1.0 None TDATA";
  attribute DEBUG of axi_dma_0_M_AXIS_MM2S_TDATA : signal is "true";
  attribute MARK_DEBUG of axi_dma_0_M_AXIS_MM2S_TDATA : signal is std.standard.true;
  signal axi_dma_0_M_AXIS_MM2S_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute CONN_BUS_INFO of axi_dma_0_M_AXIS_MM2S_TKEEP : signal is "axi_dma_0_M_AXIS_MM2S xilinx.com:interface:axis:1.0 None TKEEP";
  attribute DEBUG of axi_dma_0_M_AXIS_MM2S_TKEEP : signal is "true";
  attribute MARK_DEBUG of axi_dma_0_M_AXIS_MM2S_TKEEP : signal is std.standard.true;
  signal axi_dma_0_M_AXIS_MM2S_TLAST : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_dma_0_M_AXIS_MM2S_TLAST : signal is "axi_dma_0_M_AXIS_MM2S xilinx.com:interface:axis:1.0 None TLAST";
  attribute DEBUG of axi_dma_0_M_AXIS_MM2S_TLAST : signal is "true";
  attribute MARK_DEBUG of axi_dma_0_M_AXIS_MM2S_TLAST : signal is std.standard.true;
  signal axi_dma_0_M_AXIS_MM2S_TVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_dma_0_M_AXIS_MM2S_TVALID : signal is "axi_dma_0_M_AXIS_MM2S xilinx.com:interface:axis:1.0 None TVALID";
  attribute DEBUG of axi_dma_0_M_AXIS_MM2S_TVALID : signal is "true";
  attribute MARK_DEBUG of axi_dma_0_M_AXIS_MM2S_TVALID : signal is std.standard.true;
  signal axi_dma_0_M_AXI_MM2S_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_MM2S_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_MM2S_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_RLAST : STD_LOGIC;
  signal axi_dma_0_M_AXI_MM2S_RREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_MM2S_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_RVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_BREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_BVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_WLAST : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_WREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_WVALID : STD_LOGIC;
  signal axi_gpio_0_gpio2_io_o : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute DEBUG of axi_gpio_0_gpio2_io_o : signal is "true";
  attribute MARK_DEBUG of axi_gpio_0_gpio2_io_o : signal is std.standard.true;
  signal axi_gpio_0_gpio_io_o : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute DEBUG of axi_gpio_0_gpio_io_o : signal is "true";
  attribute MARK_DEBUG of axi_gpio_0_gpio_io_o : signal is std.standard.true;
  signal processing_system7_0_DDR_ADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal processing_system7_0_DDR_BA : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_DDR_CAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_CKE : STD_LOGIC;
  signal processing_system7_0_DDR_CK_N : STD_LOGIC;
  signal processing_system7_0_DDR_CK_P : STD_LOGIC;
  signal processing_system7_0_DDR_CS_N : STD_LOGIC;
  signal processing_system7_0_DDR_DM : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_DDR_DQS_N : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQS_P : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_ODT : STD_LOGIC;
  signal processing_system7_0_DDR_RAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_RESET_N : STD_LOGIC;
  signal processing_system7_0_DDR_WE_N : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK0 : STD_LOGIC;
  signal processing_system7_0_FCLK_RESET0_N : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRN : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRP : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_MIO : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal processing_system7_0_FIXED_IO_PS_CLK : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_PORB : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_SRSTB : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M05_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M05_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M05_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M05_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M05_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M05_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M05_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M05_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M05_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M05_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M05_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M05_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M05_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M05_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M05_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M05_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M05_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M05_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M05_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M05_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M05_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M05_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M05_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M05_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M05_AXI_RLAST : STD_LOGIC;
  signal ps7_0_axi_periph_M05_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M05_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M05_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M05_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M05_AXI_WLAST : STD_LOGIC;
  signal ps7_0_axi_periph_M05_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M05_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M05_AXI_WVALID : STD_LOGIC;
  signal rst_ps7_0_50M_interconnect_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_ps7_0_50M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal smartconnect_0_M00_AXI_ARADDR : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_0_M00_AXI_ARADDR : signal is "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 None ARADDR";
  attribute DEBUG of smartconnect_0_M00_AXI_ARADDR : signal is "true";
  attribute MARK_DEBUG of smartconnect_0_M00_AXI_ARADDR : signal is std.standard.true;
  signal smartconnect_0_M00_AXI_ARBURST : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_0_M00_AXI_ARBURST : signal is "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 None ARBURST";
  attribute DEBUG of smartconnect_0_M00_AXI_ARBURST : signal is "true";
  attribute MARK_DEBUG of smartconnect_0_M00_AXI_ARBURST : signal is std.standard.true;
  signal smartconnect_0_M00_AXI_ARCACHE : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_0_M00_AXI_ARCACHE : signal is "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 None ARCACHE";
  attribute DEBUG of smartconnect_0_M00_AXI_ARCACHE : signal is "true";
  attribute MARK_DEBUG of smartconnect_0_M00_AXI_ARCACHE : signal is std.standard.true;
  signal smartconnect_0_M00_AXI_ARLEN : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_0_M00_AXI_ARLEN : signal is "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 None ARLEN";
  attribute DEBUG of smartconnect_0_M00_AXI_ARLEN : signal is "true";
  attribute MARK_DEBUG of smartconnect_0_M00_AXI_ARLEN : signal is std.standard.true;
  signal smartconnect_0_M00_AXI_ARLOCK : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_0_M00_AXI_ARLOCK : signal is "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 None ARLOCK";
  attribute DEBUG of smartconnect_0_M00_AXI_ARLOCK : signal is "true";
  attribute MARK_DEBUG of smartconnect_0_M00_AXI_ARLOCK : signal is std.standard.true;
  signal smartconnect_0_M00_AXI_ARPROT : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_0_M00_AXI_ARPROT : signal is "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 None ARPROT";
  attribute DEBUG of smartconnect_0_M00_AXI_ARPROT : signal is "true";
  attribute MARK_DEBUG of smartconnect_0_M00_AXI_ARPROT : signal is std.standard.true;
  signal smartconnect_0_M00_AXI_ARQOS : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_0_M00_AXI_ARQOS : signal is "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 None ARQOS";
  attribute DEBUG of smartconnect_0_M00_AXI_ARQOS : signal is "true";
  attribute MARK_DEBUG of smartconnect_0_M00_AXI_ARQOS : signal is std.standard.true;
  signal smartconnect_0_M00_AXI_ARSIZE : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_0_M00_AXI_ARSIZE : signal is "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 None ARSIZE";
  attribute DEBUG of smartconnect_0_M00_AXI_ARSIZE : signal is "true";
  attribute MARK_DEBUG of smartconnect_0_M00_AXI_ARSIZE : signal is std.standard.true;
  signal smartconnect_0_M00_AXI_ARVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_0_M00_AXI_ARVALID : signal is "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 None ARVALID";
  attribute DEBUG of smartconnect_0_M00_AXI_ARVALID : signal is "true";
  attribute MARK_DEBUG of smartconnect_0_M00_AXI_ARVALID : signal is std.standard.true;
  signal smartconnect_0_M00_AXI_AWADDR : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_0_M00_AXI_AWADDR : signal is "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 None AWADDR";
  attribute DEBUG of smartconnect_0_M00_AXI_AWADDR : signal is "true";
  attribute MARK_DEBUG of smartconnect_0_M00_AXI_AWADDR : signal is std.standard.true;
  signal smartconnect_0_M00_AXI_AWBURST : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_0_M00_AXI_AWBURST : signal is "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 None AWBURST";
  attribute DEBUG of smartconnect_0_M00_AXI_AWBURST : signal is "true";
  attribute MARK_DEBUG of smartconnect_0_M00_AXI_AWBURST : signal is std.standard.true;
  signal smartconnect_0_M00_AXI_AWCACHE : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_0_M00_AXI_AWCACHE : signal is "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 None AWCACHE";
  attribute DEBUG of smartconnect_0_M00_AXI_AWCACHE : signal is "true";
  attribute MARK_DEBUG of smartconnect_0_M00_AXI_AWCACHE : signal is std.standard.true;
  signal smartconnect_0_M00_AXI_AWLEN : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_0_M00_AXI_AWLEN : signal is "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 None AWLEN";
  attribute DEBUG of smartconnect_0_M00_AXI_AWLEN : signal is "true";
  attribute MARK_DEBUG of smartconnect_0_M00_AXI_AWLEN : signal is std.standard.true;
  signal smartconnect_0_M00_AXI_AWLOCK : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_0_M00_AXI_AWLOCK : signal is "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 None AWLOCK";
  attribute DEBUG of smartconnect_0_M00_AXI_AWLOCK : signal is "true";
  attribute MARK_DEBUG of smartconnect_0_M00_AXI_AWLOCK : signal is std.standard.true;
  signal smartconnect_0_M00_AXI_AWPROT : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_0_M00_AXI_AWPROT : signal is "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 None AWPROT";
  attribute DEBUG of smartconnect_0_M00_AXI_AWPROT : signal is "true";
  attribute MARK_DEBUG of smartconnect_0_M00_AXI_AWPROT : signal is std.standard.true;
  signal smartconnect_0_M00_AXI_AWQOS : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_0_M00_AXI_AWQOS : signal is "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 None AWQOS";
  attribute DEBUG of smartconnect_0_M00_AXI_AWQOS : signal is "true";
  attribute MARK_DEBUG of smartconnect_0_M00_AXI_AWQOS : signal is std.standard.true;
  signal smartconnect_0_M00_AXI_AWSIZE : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_0_M00_AXI_AWSIZE : signal is "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 None AWSIZE";
  attribute DEBUG of smartconnect_0_M00_AXI_AWSIZE : signal is "true";
  attribute MARK_DEBUG of smartconnect_0_M00_AXI_AWSIZE : signal is std.standard.true;
  signal smartconnect_0_M00_AXI_AWVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_0_M00_AXI_AWVALID : signal is "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 None AWVALID";
  attribute DEBUG of smartconnect_0_M00_AXI_AWVALID : signal is "true";
  attribute MARK_DEBUG of smartconnect_0_M00_AXI_AWVALID : signal is std.standard.true;
  signal smartconnect_0_M00_AXI_BREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_0_M00_AXI_BREADY : signal is "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 None BREADY";
  attribute DEBUG of smartconnect_0_M00_AXI_BREADY : signal is "true";
  attribute MARK_DEBUG of smartconnect_0_M00_AXI_BREADY : signal is std.standard.true;
  signal smartconnect_0_M00_AXI_RREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_0_M00_AXI_RREADY : signal is "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 None RREADY";
  attribute DEBUG of smartconnect_0_M00_AXI_RREADY : signal is "true";
  attribute MARK_DEBUG of smartconnect_0_M00_AXI_RREADY : signal is std.standard.true;
  signal smartconnect_0_M00_AXI_WDATA : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_0_M00_AXI_WDATA : signal is "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 None WDATA";
  attribute DEBUG of smartconnect_0_M00_AXI_WDATA : signal is "true";
  attribute MARK_DEBUG of smartconnect_0_M00_AXI_WDATA : signal is std.standard.true;
  signal smartconnect_0_M00_AXI_WLAST : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_0_M00_AXI_WLAST : signal is "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 None WLAST";
  attribute DEBUG of smartconnect_0_M00_AXI_WLAST : signal is "true";
  attribute MARK_DEBUG of smartconnect_0_M00_AXI_WLAST : signal is std.standard.true;
  signal smartconnect_0_M00_AXI_WSTRB : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_0_M00_AXI_WSTRB : signal is "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 None WSTRB";
  attribute DEBUG of smartconnect_0_M00_AXI_WSTRB : signal is "true";
  attribute MARK_DEBUG of smartconnect_0_M00_AXI_WSTRB : signal is std.standard.true;
  signal smartconnect_0_M00_AXI_WVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_0_M00_AXI_WVALID : signal is "smartconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 None WVALID";
  attribute DEBUG of smartconnect_0_M00_AXI_WVALID : signal is "true";
  attribute MARK_DEBUG of smartconnect_0_M00_AXI_WVALID : signal is std.standard.true;
  signal smartconnect_1_M00_AXI_ARADDR : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_1_M00_AXI_ARADDR : signal is "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 None ARADDR";
  attribute DEBUG of smartconnect_1_M00_AXI_ARADDR : signal is "true";
  attribute MARK_DEBUG of smartconnect_1_M00_AXI_ARADDR : signal is std.standard.true;
  signal smartconnect_1_M00_AXI_ARBURST : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_1_M00_AXI_ARBURST : signal is "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 None ARBURST";
  attribute DEBUG of smartconnect_1_M00_AXI_ARBURST : signal is "true";
  attribute MARK_DEBUG of smartconnect_1_M00_AXI_ARBURST : signal is std.standard.true;
  signal smartconnect_1_M00_AXI_ARCACHE : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_1_M00_AXI_ARCACHE : signal is "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 None ARCACHE";
  attribute DEBUG of smartconnect_1_M00_AXI_ARCACHE : signal is "true";
  attribute MARK_DEBUG of smartconnect_1_M00_AXI_ARCACHE : signal is std.standard.true;
  signal smartconnect_1_M00_AXI_ARLEN : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_1_M00_AXI_ARLEN : signal is "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 None ARLEN";
  attribute DEBUG of smartconnect_1_M00_AXI_ARLEN : signal is "true";
  attribute MARK_DEBUG of smartconnect_1_M00_AXI_ARLEN : signal is std.standard.true;
  signal smartconnect_1_M00_AXI_ARLOCK : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_1_M00_AXI_ARLOCK : signal is "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 None ARLOCK";
  attribute DEBUG of smartconnect_1_M00_AXI_ARLOCK : signal is "true";
  attribute MARK_DEBUG of smartconnect_1_M00_AXI_ARLOCK : signal is std.standard.true;
  signal smartconnect_1_M00_AXI_ARPROT : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_1_M00_AXI_ARPROT : signal is "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 None ARPROT";
  attribute DEBUG of smartconnect_1_M00_AXI_ARPROT : signal is "true";
  attribute MARK_DEBUG of smartconnect_1_M00_AXI_ARPROT : signal is std.standard.true;
  signal smartconnect_1_M00_AXI_ARQOS : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_1_M00_AXI_ARQOS : signal is "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 None ARQOS";
  attribute DEBUG of smartconnect_1_M00_AXI_ARQOS : signal is "true";
  attribute MARK_DEBUG of smartconnect_1_M00_AXI_ARQOS : signal is std.standard.true;
  signal smartconnect_1_M00_AXI_ARSIZE : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_1_M00_AXI_ARSIZE : signal is "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 None ARSIZE";
  attribute DEBUG of smartconnect_1_M00_AXI_ARSIZE : signal is "true";
  attribute MARK_DEBUG of smartconnect_1_M00_AXI_ARSIZE : signal is std.standard.true;
  signal smartconnect_1_M00_AXI_ARVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_1_M00_AXI_ARVALID : signal is "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 None ARVALID";
  attribute DEBUG of smartconnect_1_M00_AXI_ARVALID : signal is "true";
  attribute MARK_DEBUG of smartconnect_1_M00_AXI_ARVALID : signal is std.standard.true;
  signal smartconnect_1_M00_AXI_AWADDR : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_1_M00_AXI_AWADDR : signal is "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 None AWADDR";
  attribute DEBUG of smartconnect_1_M00_AXI_AWADDR : signal is "true";
  attribute MARK_DEBUG of smartconnect_1_M00_AXI_AWADDR : signal is std.standard.true;
  signal smartconnect_1_M00_AXI_AWBURST : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_1_M00_AXI_AWBURST : signal is "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 None AWBURST";
  attribute DEBUG of smartconnect_1_M00_AXI_AWBURST : signal is "true";
  attribute MARK_DEBUG of smartconnect_1_M00_AXI_AWBURST : signal is std.standard.true;
  signal smartconnect_1_M00_AXI_AWCACHE : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_1_M00_AXI_AWCACHE : signal is "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 None AWCACHE";
  attribute DEBUG of smartconnect_1_M00_AXI_AWCACHE : signal is "true";
  attribute MARK_DEBUG of smartconnect_1_M00_AXI_AWCACHE : signal is std.standard.true;
  signal smartconnect_1_M00_AXI_AWLEN : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_1_M00_AXI_AWLEN : signal is "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 None AWLEN";
  attribute DEBUG of smartconnect_1_M00_AXI_AWLEN : signal is "true";
  attribute MARK_DEBUG of smartconnect_1_M00_AXI_AWLEN : signal is std.standard.true;
  signal smartconnect_1_M00_AXI_AWLOCK : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_1_M00_AXI_AWLOCK : signal is "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 None AWLOCK";
  attribute DEBUG of smartconnect_1_M00_AXI_AWLOCK : signal is "true";
  attribute MARK_DEBUG of smartconnect_1_M00_AXI_AWLOCK : signal is std.standard.true;
  signal smartconnect_1_M00_AXI_AWPROT : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_1_M00_AXI_AWPROT : signal is "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 None AWPROT";
  attribute DEBUG of smartconnect_1_M00_AXI_AWPROT : signal is "true";
  attribute MARK_DEBUG of smartconnect_1_M00_AXI_AWPROT : signal is std.standard.true;
  signal smartconnect_1_M00_AXI_AWQOS : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_1_M00_AXI_AWQOS : signal is "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 None AWQOS";
  attribute DEBUG of smartconnect_1_M00_AXI_AWQOS : signal is "true";
  attribute MARK_DEBUG of smartconnect_1_M00_AXI_AWQOS : signal is std.standard.true;
  signal smartconnect_1_M00_AXI_AWSIZE : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_1_M00_AXI_AWSIZE : signal is "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 None AWSIZE";
  attribute DEBUG of smartconnect_1_M00_AXI_AWSIZE : signal is "true";
  attribute MARK_DEBUG of smartconnect_1_M00_AXI_AWSIZE : signal is std.standard.true;
  signal smartconnect_1_M00_AXI_AWVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_1_M00_AXI_AWVALID : signal is "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 None AWVALID";
  attribute DEBUG of smartconnect_1_M00_AXI_AWVALID : signal is "true";
  attribute MARK_DEBUG of smartconnect_1_M00_AXI_AWVALID : signal is std.standard.true;
  signal smartconnect_1_M00_AXI_BREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_1_M00_AXI_BREADY : signal is "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 None BREADY";
  attribute DEBUG of smartconnect_1_M00_AXI_BREADY : signal is "true";
  attribute MARK_DEBUG of smartconnect_1_M00_AXI_BREADY : signal is std.standard.true;
  signal smartconnect_1_M00_AXI_RREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_1_M00_AXI_RREADY : signal is "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 None RREADY";
  attribute DEBUG of smartconnect_1_M00_AXI_RREADY : signal is "true";
  attribute MARK_DEBUG of smartconnect_1_M00_AXI_RREADY : signal is std.standard.true;
  signal smartconnect_1_M00_AXI_WDATA : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_1_M00_AXI_WDATA : signal is "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 None WDATA";
  attribute DEBUG of smartconnect_1_M00_AXI_WDATA : signal is "true";
  attribute MARK_DEBUG of smartconnect_1_M00_AXI_WDATA : signal is std.standard.true;
  signal smartconnect_1_M00_AXI_WLAST : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_1_M00_AXI_WLAST : signal is "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 None WLAST";
  attribute DEBUG of smartconnect_1_M00_AXI_WLAST : signal is "true";
  attribute MARK_DEBUG of smartconnect_1_M00_AXI_WLAST : signal is std.standard.true;
  signal smartconnect_1_M00_AXI_WSTRB : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_1_M00_AXI_WSTRB : signal is "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 None WSTRB";
  attribute DEBUG of smartconnect_1_M00_AXI_WSTRB : signal is "true";
  attribute MARK_DEBUG of smartconnect_1_M00_AXI_WSTRB : signal is std.standard.true;
  signal smartconnect_1_M00_AXI_WVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_1_M00_AXI_WVALID : signal is "smartconnect_1_M00_AXI xilinx.com:interface:aximm:1.0 None WVALID";
  attribute DEBUG of smartconnect_1_M00_AXI_WVALID : signal is "true";
  attribute MARK_DEBUG of smartconnect_1_M00_AXI_WVALID : signal is std.standard.true;
  signal smartconnect_2_M00_AXI_ARADDR : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_2_M00_AXI_ARADDR : signal is "smartconnect_2_M00_AXI xilinx.com:interface:aximm:1.0 None ARADDR";
  attribute DEBUG of smartconnect_2_M00_AXI_ARADDR : signal is "true";
  attribute MARK_DEBUG of smartconnect_2_M00_AXI_ARADDR : signal is std.standard.true;
  signal smartconnect_2_M00_AXI_ARBURST : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_2_M00_AXI_ARBURST : signal is "smartconnect_2_M00_AXI xilinx.com:interface:aximm:1.0 None ARBURST";
  attribute DEBUG of smartconnect_2_M00_AXI_ARBURST : signal is "true";
  attribute MARK_DEBUG of smartconnect_2_M00_AXI_ARBURST : signal is std.standard.true;
  signal smartconnect_2_M00_AXI_ARCACHE : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_2_M00_AXI_ARCACHE : signal is "smartconnect_2_M00_AXI xilinx.com:interface:aximm:1.0 None ARCACHE";
  attribute DEBUG of smartconnect_2_M00_AXI_ARCACHE : signal is "true";
  attribute MARK_DEBUG of smartconnect_2_M00_AXI_ARCACHE : signal is std.standard.true;
  signal smartconnect_2_M00_AXI_ARLEN : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_2_M00_AXI_ARLEN : signal is "smartconnect_2_M00_AXI xilinx.com:interface:aximm:1.0 None ARLEN";
  attribute DEBUG of smartconnect_2_M00_AXI_ARLEN : signal is "true";
  attribute MARK_DEBUG of smartconnect_2_M00_AXI_ARLEN : signal is std.standard.true;
  signal smartconnect_2_M00_AXI_ARLOCK : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_2_M00_AXI_ARLOCK : signal is "smartconnect_2_M00_AXI xilinx.com:interface:aximm:1.0 None ARLOCK";
  attribute DEBUG of smartconnect_2_M00_AXI_ARLOCK : signal is "true";
  attribute MARK_DEBUG of smartconnect_2_M00_AXI_ARLOCK : signal is std.standard.true;
  signal smartconnect_2_M00_AXI_ARPROT : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_2_M00_AXI_ARPROT : signal is "smartconnect_2_M00_AXI xilinx.com:interface:aximm:1.0 None ARPROT";
  attribute DEBUG of smartconnect_2_M00_AXI_ARPROT : signal is "true";
  attribute MARK_DEBUG of smartconnect_2_M00_AXI_ARPROT : signal is std.standard.true;
  signal smartconnect_2_M00_AXI_ARQOS : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_2_M00_AXI_ARQOS : signal is "smartconnect_2_M00_AXI xilinx.com:interface:aximm:1.0 None ARQOS";
  attribute DEBUG of smartconnect_2_M00_AXI_ARQOS : signal is "true";
  attribute MARK_DEBUG of smartconnect_2_M00_AXI_ARQOS : signal is std.standard.true;
  signal smartconnect_2_M00_AXI_ARSIZE : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_2_M00_AXI_ARSIZE : signal is "smartconnect_2_M00_AXI xilinx.com:interface:aximm:1.0 None ARSIZE";
  attribute DEBUG of smartconnect_2_M00_AXI_ARSIZE : signal is "true";
  attribute MARK_DEBUG of smartconnect_2_M00_AXI_ARSIZE : signal is std.standard.true;
  signal smartconnect_2_M00_AXI_ARVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_2_M00_AXI_ARVALID : signal is "smartconnect_2_M00_AXI xilinx.com:interface:aximm:1.0 None ARVALID";
  attribute DEBUG of smartconnect_2_M00_AXI_ARVALID : signal is "true";
  attribute MARK_DEBUG of smartconnect_2_M00_AXI_ARVALID : signal is std.standard.true;
  signal smartconnect_2_M00_AXI_AWADDR : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_2_M00_AXI_AWADDR : signal is "smartconnect_2_M00_AXI xilinx.com:interface:aximm:1.0 None AWADDR";
  attribute DEBUG of smartconnect_2_M00_AXI_AWADDR : signal is "true";
  attribute MARK_DEBUG of smartconnect_2_M00_AXI_AWADDR : signal is std.standard.true;
  signal smartconnect_2_M00_AXI_AWBURST : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_2_M00_AXI_AWBURST : signal is "smartconnect_2_M00_AXI xilinx.com:interface:aximm:1.0 None AWBURST";
  attribute DEBUG of smartconnect_2_M00_AXI_AWBURST : signal is "true";
  attribute MARK_DEBUG of smartconnect_2_M00_AXI_AWBURST : signal is std.standard.true;
  signal smartconnect_2_M00_AXI_AWCACHE : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_2_M00_AXI_AWCACHE : signal is "smartconnect_2_M00_AXI xilinx.com:interface:aximm:1.0 None AWCACHE";
  attribute DEBUG of smartconnect_2_M00_AXI_AWCACHE : signal is "true";
  attribute MARK_DEBUG of smartconnect_2_M00_AXI_AWCACHE : signal is std.standard.true;
  signal smartconnect_2_M00_AXI_AWLEN : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_2_M00_AXI_AWLEN : signal is "smartconnect_2_M00_AXI xilinx.com:interface:aximm:1.0 None AWLEN";
  attribute DEBUG of smartconnect_2_M00_AXI_AWLEN : signal is "true";
  attribute MARK_DEBUG of smartconnect_2_M00_AXI_AWLEN : signal is std.standard.true;
  signal smartconnect_2_M00_AXI_AWLOCK : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_2_M00_AXI_AWLOCK : signal is "smartconnect_2_M00_AXI xilinx.com:interface:aximm:1.0 None AWLOCK";
  attribute DEBUG of smartconnect_2_M00_AXI_AWLOCK : signal is "true";
  attribute MARK_DEBUG of smartconnect_2_M00_AXI_AWLOCK : signal is std.standard.true;
  signal smartconnect_2_M00_AXI_AWPROT : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_2_M00_AXI_AWPROT : signal is "smartconnect_2_M00_AXI xilinx.com:interface:aximm:1.0 None AWPROT";
  attribute DEBUG of smartconnect_2_M00_AXI_AWPROT : signal is "true";
  attribute MARK_DEBUG of smartconnect_2_M00_AXI_AWPROT : signal is std.standard.true;
  signal smartconnect_2_M00_AXI_AWQOS : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_2_M00_AXI_AWQOS : signal is "smartconnect_2_M00_AXI xilinx.com:interface:aximm:1.0 None AWQOS";
  attribute DEBUG of smartconnect_2_M00_AXI_AWQOS : signal is "true";
  attribute MARK_DEBUG of smartconnect_2_M00_AXI_AWQOS : signal is std.standard.true;
  signal smartconnect_2_M00_AXI_AWSIZE : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_2_M00_AXI_AWSIZE : signal is "smartconnect_2_M00_AXI xilinx.com:interface:aximm:1.0 None AWSIZE";
  attribute DEBUG of smartconnect_2_M00_AXI_AWSIZE : signal is "true";
  attribute MARK_DEBUG of smartconnect_2_M00_AXI_AWSIZE : signal is std.standard.true;
  signal smartconnect_2_M00_AXI_AWVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_2_M00_AXI_AWVALID : signal is "smartconnect_2_M00_AXI xilinx.com:interface:aximm:1.0 None AWVALID";
  attribute DEBUG of smartconnect_2_M00_AXI_AWVALID : signal is "true";
  attribute MARK_DEBUG of smartconnect_2_M00_AXI_AWVALID : signal is std.standard.true;
  signal smartconnect_2_M00_AXI_BREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_2_M00_AXI_BREADY : signal is "smartconnect_2_M00_AXI xilinx.com:interface:aximm:1.0 None BREADY";
  attribute DEBUG of smartconnect_2_M00_AXI_BREADY : signal is "true";
  attribute MARK_DEBUG of smartconnect_2_M00_AXI_BREADY : signal is std.standard.true;
  signal smartconnect_2_M00_AXI_RREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_2_M00_AXI_RREADY : signal is "smartconnect_2_M00_AXI xilinx.com:interface:aximm:1.0 None RREADY";
  attribute DEBUG of smartconnect_2_M00_AXI_RREADY : signal is "true";
  attribute MARK_DEBUG of smartconnect_2_M00_AXI_RREADY : signal is std.standard.true;
  signal smartconnect_2_M00_AXI_WDATA : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_2_M00_AXI_WDATA : signal is "smartconnect_2_M00_AXI xilinx.com:interface:aximm:1.0 None WDATA";
  attribute DEBUG of smartconnect_2_M00_AXI_WDATA : signal is "true";
  attribute MARK_DEBUG of smartconnect_2_M00_AXI_WDATA : signal is std.standard.true;
  signal smartconnect_2_M00_AXI_WLAST : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_2_M00_AXI_WLAST : signal is "smartconnect_2_M00_AXI xilinx.com:interface:aximm:1.0 None WLAST";
  attribute DEBUG of smartconnect_2_M00_AXI_WLAST : signal is "true";
  attribute MARK_DEBUG of smartconnect_2_M00_AXI_WLAST : signal is std.standard.true;
  signal smartconnect_2_M00_AXI_WSTRB : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_2_M00_AXI_WSTRB : signal is "smartconnect_2_M00_AXI xilinx.com:interface:aximm:1.0 None WSTRB";
  attribute DEBUG of smartconnect_2_M00_AXI_WSTRB : signal is "true";
  attribute MARK_DEBUG of smartconnect_2_M00_AXI_WSTRB : signal is std.standard.true;
  signal smartconnect_2_M00_AXI_WVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of smartconnect_2_M00_AXI_WVALID : signal is "smartconnect_2_M00_AXI xilinx.com:interface:aximm:1.0 None WVALID";
  attribute DEBUG of smartconnect_2_M00_AXI_WVALID : signal is "true";
  attribute MARK_DEBUG of smartconnect_2_M00_AXI_WVALID : signal is std.standard.true;
  signal NLW_axi_dma_0_mm2s_introut_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dma_0_mm2s_prmry_reset_out_n_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dma_0_s2mm_introut_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dma_0_s2mm_prmry_reset_out_n_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_S_AXI_HP0_BID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_WACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_WCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ps7_0_axi_periph_M02_AXI_arregion_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M02_AXI_awregion_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M03_AXI_arregion_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M03_AXI_awregion_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M04_AXI_arregion_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M04_AXI_awregion_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_araddr_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_arburst_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_arcache_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_arlen_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_arlock_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_arprot_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_arqos_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_arregion_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_arsize_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_awaddr_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_awburst_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_awcache_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_awlen_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_awlock_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_awprot_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_awqos_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_awregion_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_awsize_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_wdata_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_wstrb_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_ps7_0_50M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_ps7_0_50M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps7_0_50M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of DDR_cas_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CAS_N";
  attribute X_INTERFACE_INFO of DDR_ck_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_N";
  attribute X_INTERFACE_INFO of DDR_ck_p : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_P";
  attribute X_INTERFACE_INFO of DDR_cke : signal is "xilinx.com:interface:ddrx:1.0 DDR CKE";
  attribute X_INTERFACE_INFO of DDR_cs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CS_N";
  attribute X_INTERFACE_INFO of DDR_odt : signal is "xilinx.com:interface:ddrx:1.0 DDR ODT";
  attribute X_INTERFACE_INFO of DDR_ras_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RAS_N";
  attribute X_INTERFACE_INFO of DDR_reset_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RESET_N";
  attribute X_INTERFACE_INFO of DDR_we_n : signal is "xilinx.com:interface:ddrx:1.0 DDR WE_N";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrn : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of FIXED_IO_ddr_vrn : signal is "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrp : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_clk : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_porb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_srstb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB";
  attribute X_INTERFACE_INFO of DDR_addr : signal is "xilinx.com:interface:ddrx:1.0 DDR ADDR";
  attribute X_INTERFACE_PARAMETER of DDR_addr : signal is "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250";
  attribute X_INTERFACE_INFO of DDR_ba : signal is "xilinx.com:interface:ddrx:1.0 DDR BA";
  attribute X_INTERFACE_INFO of DDR_dm : signal is "xilinx.com:interface:ddrx:1.0 DDR DM";
  attribute X_INTERFACE_INFO of DDR_dq : signal is "xilinx.com:interface:ddrx:1.0 DDR DQ";
  attribute X_INTERFACE_INFO of DDR_dqs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_N";
  attribute X_INTERFACE_INFO of DDR_dqs_p : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_P";
  attribute X_INTERFACE_INFO of FIXED_IO_mio : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO";
begin
axi_dma_0: component embedded_system_axi_dma_0_1
     port map (
      axi_resetn => rst_ps7_0_50M_peripheral_aresetn(0),
      m_axi_mm2s_aclk => processing_system7_0_FCLK_CLK0,
      m_axi_mm2s_araddr(31 downto 0) => axi_dma_0_M_AXI_MM2S_ARADDR(31 downto 0),
      m_axi_mm2s_arburst(1 downto 0) => axi_dma_0_M_AXI_MM2S_ARBURST(1 downto 0),
      m_axi_mm2s_arcache(3 downto 0) => axi_dma_0_M_AXI_MM2S_ARCACHE(3 downto 0),
      m_axi_mm2s_arlen(7 downto 0) => axi_dma_0_M_AXI_MM2S_ARLEN(7 downto 0),
      m_axi_mm2s_arprot(2 downto 0) => axi_dma_0_M_AXI_MM2S_ARPROT(2 downto 0),
      m_axi_mm2s_arready => axi_dma_0_M_AXI_MM2S_ARREADY,
      m_axi_mm2s_arsize(2 downto 0) => axi_dma_0_M_AXI_MM2S_ARSIZE(2 downto 0),
      m_axi_mm2s_arvalid => axi_dma_0_M_AXI_MM2S_ARVALID,
      m_axi_mm2s_rdata(31 downto 0) => axi_dma_0_M_AXI_MM2S_RDATA(31 downto 0),
      m_axi_mm2s_rlast => axi_dma_0_M_AXI_MM2S_RLAST,
      m_axi_mm2s_rready => axi_dma_0_M_AXI_MM2S_RREADY,
      m_axi_mm2s_rresp(1 downto 0) => axi_dma_0_M_AXI_MM2S_RRESP(1 downto 0),
      m_axi_mm2s_rvalid => axi_dma_0_M_AXI_MM2S_RVALID,
      m_axi_s2mm_aclk => processing_system7_0_FCLK_CLK0,
      m_axi_s2mm_awaddr(31 downto 0) => axi_dma_0_M_AXI_S2MM_AWADDR(31 downto 0),
      m_axi_s2mm_awburst(1 downto 0) => axi_dma_0_M_AXI_S2MM_AWBURST(1 downto 0),
      m_axi_s2mm_awcache(3 downto 0) => axi_dma_0_M_AXI_S2MM_AWCACHE(3 downto 0),
      m_axi_s2mm_awlen(7 downto 0) => axi_dma_0_M_AXI_S2MM_AWLEN(7 downto 0),
      m_axi_s2mm_awprot(2 downto 0) => axi_dma_0_M_AXI_S2MM_AWPROT(2 downto 0),
      m_axi_s2mm_awready => axi_dma_0_M_AXI_S2MM_AWREADY,
      m_axi_s2mm_awsize(2 downto 0) => axi_dma_0_M_AXI_S2MM_AWSIZE(2 downto 0),
      m_axi_s2mm_awvalid => axi_dma_0_M_AXI_S2MM_AWVALID,
      m_axi_s2mm_bready => axi_dma_0_M_AXI_S2MM_BREADY,
      m_axi_s2mm_bresp(1 downto 0) => axi_dma_0_M_AXI_S2MM_BRESP(1 downto 0),
      m_axi_s2mm_bvalid => axi_dma_0_M_AXI_S2MM_BVALID,
      m_axi_s2mm_wdata(31 downto 0) => axi_dma_0_M_AXI_S2MM_WDATA(31 downto 0),
      m_axi_s2mm_wlast => axi_dma_0_M_AXI_S2MM_WLAST,
      m_axi_s2mm_wready => axi_dma_0_M_AXI_S2MM_WREADY,
      m_axi_s2mm_wstrb(3 downto 0) => axi_dma_0_M_AXI_S2MM_WSTRB(3 downto 0),
      m_axi_s2mm_wvalid => axi_dma_0_M_AXI_S2MM_WVALID,
      m_axis_mm2s_tdata(31 downto 0) => axi_dma_0_M_AXIS_MM2S_TDATA(31 downto 0),
      m_axis_mm2s_tkeep(3 downto 0) => axi_dma_0_M_AXIS_MM2S_TKEEP(3 downto 0),
      m_axis_mm2s_tlast => axi_dma_0_M_AXIS_MM2S_TLAST,
      m_axis_mm2s_tready => '1',
      m_axis_mm2s_tvalid => axi_dma_0_M_AXIS_MM2S_TVALID,
      mm2s_introut => NLW_axi_dma_0_mm2s_introut_UNCONNECTED,
      mm2s_prmry_reset_out_n => NLW_axi_dma_0_mm2s_prmry_reset_out_n_UNCONNECTED,
      s2mm_introut => NLW_axi_dma_0_s2mm_introut_UNCONNECTED,
      s2mm_prmry_reset_out_n => NLW_axi_dma_0_s2mm_prmry_reset_out_n_UNCONNECTED,
      s_axi_lite_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_lite_araddr(9 downto 0) => ps7_0_axi_periph_M01_AXI_ARADDR(9 downto 0),
      s_axi_lite_arready => ps7_0_axi_periph_M01_AXI_ARREADY,
      s_axi_lite_arvalid => ps7_0_axi_periph_M01_AXI_ARVALID,
      s_axi_lite_awaddr(9 downto 0) => ps7_0_axi_periph_M01_AXI_AWADDR(9 downto 0),
      s_axi_lite_awready => ps7_0_axi_periph_M01_AXI_AWREADY,
      s_axi_lite_awvalid => ps7_0_axi_periph_M01_AXI_AWVALID,
      s_axi_lite_bready => ps7_0_axi_periph_M01_AXI_BREADY,
      s_axi_lite_bresp(1 downto 0) => ps7_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      s_axi_lite_bvalid => ps7_0_axi_periph_M01_AXI_BVALID,
      s_axi_lite_rdata(31 downto 0) => ps7_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      s_axi_lite_rready => ps7_0_axi_periph_M01_AXI_RREADY,
      s_axi_lite_rresp(1 downto 0) => ps7_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      s_axi_lite_rvalid => ps7_0_axi_periph_M01_AXI_RVALID,
      s_axi_lite_wdata(31 downto 0) => ps7_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      s_axi_lite_wready => ps7_0_axi_periph_M01_AXI_WREADY,
      s_axi_lite_wvalid => ps7_0_axi_periph_M01_AXI_WVALID,
      s_axis_s2mm_tdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axis_s2mm_tkeep(3 downto 0) => B"1111",
      s_axis_s2mm_tlast => '0',
      s_axis_s2mm_tready => PL_CLASSIFIER_w_VOTI_0_m_axis_TREADY,
      s_axis_s2mm_tvalid => '0'
    );
axi_gpio_0: component embedded_system_axi_gpio_0_0
     port map (
      gpio2_io_o(0) => axi_gpio_0_gpio2_io_o(0),
      gpio_io_o(0) => axi_gpio_0_gpio_io_o(0),
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_araddr(8 downto 0) => ps7_0_axi_periph_M00_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => '1',
      s_axi_arready => ps7_0_axi_periph_M00_AXI_ARREADY,
      s_axi_arvalid => ps7_0_axi_periph_M00_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => ps7_0_axi_periph_M00_AXI_AWADDR(8 downto 0),
      s_axi_awready => ps7_0_axi_periph_M00_AXI_AWREADY,
      s_axi_awvalid => ps7_0_axi_periph_M00_AXI_AWVALID,
      s_axi_bready => ps7_0_axi_periph_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => ps7_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => ps7_0_axi_periph_M00_AXI_BVALID,
      s_axi_rdata(31 downto 0) => ps7_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      s_axi_rready => ps7_0_axi_periph_M00_AXI_RREADY,
      s_axi_rresp(1 downto 0) => ps7_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => ps7_0_axi_periph_M00_AXI_RVALID,
      s_axi_wdata(31 downto 0) => ps7_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      s_axi_wready => ps7_0_axi_periph_M00_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => ps7_0_axi_periph_M00_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => ps7_0_axi_periph_M00_AXI_WVALID
    );
processing_system7_0: component embedded_system_processing_system7_0_0
     port map (
      DDR_Addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_BankAddr(2 downto 0) => DDR_ba(2 downto 0),
      DDR_CAS_n => DDR_cas_n,
      DDR_CKE => DDR_cke,
      DDR_CS_n => DDR_cs_n,
      DDR_Clk => DDR_ck_p,
      DDR_Clk_n => DDR_ck_n,
      DDR_DM(3 downto 0) => DDR_dm(3 downto 0),
      DDR_DQ(31 downto 0) => DDR_dq(31 downto 0),
      DDR_DQS(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_DQS_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_DRSTB => DDR_reset_n,
      DDR_ODT => DDR_odt,
      DDR_RAS_n => DDR_ras_n,
      DDR_VRN => FIXED_IO_ddr_vrn,
      DDR_VRP => FIXED_IO_ddr_vrp,
      DDR_WEB => DDR_we_n,
      FCLK_CLK0 => processing_system7_0_FCLK_CLK0,
      FCLK_RESET0_N => processing_system7_0_FCLK_RESET0_N,
      MIO(53 downto 0) => FIXED_IO_mio(53 downto 0),
      M_AXI_GP0_ACLK => processing_system7_0_FCLK_CLK0,
      M_AXI_GP0_ARADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      M_AXI_GP0_ARBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      M_AXI_GP0_ARCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      M_AXI_GP0_ARID(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      M_AXI_GP0_ARLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      M_AXI_GP0_ARLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      M_AXI_GP0_ARPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      M_AXI_GP0_ARQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      M_AXI_GP0_ARREADY => processing_system7_0_M_AXI_GP0_ARREADY,
      M_AXI_GP0_ARSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      M_AXI_GP0_ARVALID => processing_system7_0_M_AXI_GP0_ARVALID,
      M_AXI_GP0_AWADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      M_AXI_GP0_AWBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      M_AXI_GP0_AWCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      M_AXI_GP0_AWID(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      M_AXI_GP0_AWLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      M_AXI_GP0_AWLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      M_AXI_GP0_AWPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      M_AXI_GP0_AWQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      M_AXI_GP0_AWREADY => processing_system7_0_M_AXI_GP0_AWREADY,
      M_AXI_GP0_AWSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      M_AXI_GP0_AWVALID => processing_system7_0_M_AXI_GP0_AWVALID,
      M_AXI_GP0_BID(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      M_AXI_GP0_BREADY => processing_system7_0_M_AXI_GP0_BREADY,
      M_AXI_GP0_BRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      M_AXI_GP0_BVALID => processing_system7_0_M_AXI_GP0_BVALID,
      M_AXI_GP0_RDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      M_AXI_GP0_RID(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      M_AXI_GP0_RLAST => processing_system7_0_M_AXI_GP0_RLAST,
      M_AXI_GP0_RREADY => processing_system7_0_M_AXI_GP0_RREADY,
      M_AXI_GP0_RRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      M_AXI_GP0_RVALID => processing_system7_0_M_AXI_GP0_RVALID,
      M_AXI_GP0_WDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      M_AXI_GP0_WID(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      M_AXI_GP0_WLAST => processing_system7_0_M_AXI_GP0_WLAST,
      M_AXI_GP0_WREADY => processing_system7_0_M_AXI_GP0_WREADY,
      M_AXI_GP0_WSTRB(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      M_AXI_GP0_WVALID => processing_system7_0_M_AXI_GP0_WVALID,
      PS_CLK => FIXED_IO_ps_clk,
      PS_PORB => FIXED_IO_ps_porb,
      PS_SRSTB => FIXED_IO_ps_srstb,
      S_AXI_HP0_ACLK => processing_system7_0_FCLK_CLK0,
      S_AXI_HP0_ARADDR(31 downto 0) => ps7_0_axi_periph_M05_AXI_ARADDR(31 downto 0),
      S_AXI_HP0_ARBURST(1 downto 0) => ps7_0_axi_periph_M05_AXI_ARBURST(1 downto 0),
      S_AXI_HP0_ARCACHE(3 downto 0) => ps7_0_axi_periph_M05_AXI_ARCACHE(3 downto 0),
      S_AXI_HP0_ARID(5 downto 0) => B"000000",
      S_AXI_HP0_ARLEN(3 downto 0) => ps7_0_axi_periph_M05_AXI_ARLEN(3 downto 0),
      S_AXI_HP0_ARLOCK(1 downto 0) => ps7_0_axi_periph_M05_AXI_ARLOCK(1 downto 0),
      S_AXI_HP0_ARPROT(2 downto 0) => ps7_0_axi_periph_M05_AXI_ARPROT(2 downto 0),
      S_AXI_HP0_ARQOS(3 downto 0) => ps7_0_axi_periph_M05_AXI_ARQOS(3 downto 0),
      S_AXI_HP0_ARREADY => ps7_0_axi_periph_M05_AXI_ARREADY,
      S_AXI_HP0_ARSIZE(2 downto 0) => ps7_0_axi_periph_M05_AXI_ARSIZE(2 downto 0),
      S_AXI_HP0_ARVALID => ps7_0_axi_periph_M05_AXI_ARVALID,
      S_AXI_HP0_AWADDR(31 downto 0) => ps7_0_axi_periph_M05_AXI_AWADDR(31 downto 0),
      S_AXI_HP0_AWBURST(1 downto 0) => ps7_0_axi_periph_M05_AXI_AWBURST(1 downto 0),
      S_AXI_HP0_AWCACHE(3 downto 0) => ps7_0_axi_periph_M05_AXI_AWCACHE(3 downto 0),
      S_AXI_HP0_AWID(5 downto 0) => B"000000",
      S_AXI_HP0_AWLEN(3 downto 0) => ps7_0_axi_periph_M05_AXI_AWLEN(3 downto 0),
      S_AXI_HP0_AWLOCK(1 downto 0) => ps7_0_axi_periph_M05_AXI_AWLOCK(1 downto 0),
      S_AXI_HP0_AWPROT(2 downto 0) => ps7_0_axi_periph_M05_AXI_AWPROT(2 downto 0),
      S_AXI_HP0_AWQOS(3 downto 0) => ps7_0_axi_periph_M05_AXI_AWQOS(3 downto 0),
      S_AXI_HP0_AWREADY => ps7_0_axi_periph_M05_AXI_AWREADY,
      S_AXI_HP0_AWSIZE(2 downto 0) => ps7_0_axi_periph_M05_AXI_AWSIZE(2 downto 0),
      S_AXI_HP0_AWVALID => ps7_0_axi_periph_M05_AXI_AWVALID,
      S_AXI_HP0_BID(5 downto 0) => NLW_processing_system7_0_S_AXI_HP0_BID_UNCONNECTED(5 downto 0),
      S_AXI_HP0_BREADY => ps7_0_axi_periph_M05_AXI_BREADY,
      S_AXI_HP0_BRESP(1 downto 0) => ps7_0_axi_periph_M05_AXI_BRESP(1 downto 0),
      S_AXI_HP0_BVALID => ps7_0_axi_periph_M05_AXI_BVALID,
      S_AXI_HP0_RACOUNT(2 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RACOUNT_UNCONNECTED(2 downto 0),
      S_AXI_HP0_RCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP0_RDATA(31 downto 0) => ps7_0_axi_periph_M05_AXI_RDATA(31 downto 0),
      S_AXI_HP0_RDISSUECAP1_EN => '0',
      S_AXI_HP0_RID(5 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RID_UNCONNECTED(5 downto 0),
      S_AXI_HP0_RLAST => ps7_0_axi_periph_M05_AXI_RLAST,
      S_AXI_HP0_RREADY => ps7_0_axi_periph_M05_AXI_RREADY,
      S_AXI_HP0_RRESP(1 downto 0) => ps7_0_axi_periph_M05_AXI_RRESP(1 downto 0),
      S_AXI_HP0_RVALID => ps7_0_axi_periph_M05_AXI_RVALID,
      S_AXI_HP0_WACOUNT(5 downto 0) => NLW_processing_system7_0_S_AXI_HP0_WACOUNT_UNCONNECTED(5 downto 0),
      S_AXI_HP0_WCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP0_WCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP0_WDATA(31 downto 0) => ps7_0_axi_periph_M05_AXI_WDATA(31 downto 0),
      S_AXI_HP0_WID(5 downto 0) => B"000000",
      S_AXI_HP0_WLAST => ps7_0_axi_periph_M05_AXI_WLAST,
      S_AXI_HP0_WREADY => ps7_0_axi_periph_M05_AXI_WREADY,
      S_AXI_HP0_WRISSUECAP1_EN => '0',
      S_AXI_HP0_WSTRB(3 downto 0) => ps7_0_axi_periph_M05_AXI_WSTRB(3 downto 0),
      S_AXI_HP0_WVALID => ps7_0_axi_periph_M05_AXI_WVALID,
      USB0_PORT_INDCTL(1 downto 0) => NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED(1 downto 0),
      USB0_VBUS_PWRFAULT => '0',
      USB0_VBUS_PWRSELECT => NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED
    );
ps7_0_axi_periph: entity work.embedded_system_ps7_0_axi_periph_0
     port map (
      ACLK => processing_system7_0_FCLK_CLK0,
      ARESETN => rst_ps7_0_50M_interconnect_aresetn(0),
      M00_ACLK => processing_system7_0_FCLK_CLK0,
      M00_ARESETN => rst_ps7_0_50M_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arready => ps7_0_axi_periph_M00_AXI_ARREADY,
      M00_AXI_arvalid => ps7_0_axi_periph_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awready => ps7_0_axi_periph_M00_AXI_AWREADY,
      M00_AXI_awvalid => ps7_0_axi_periph_M00_AXI_AWVALID,
      M00_AXI_bready => ps7_0_axi_periph_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => ps7_0_axi_periph_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => ps7_0_axi_periph_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => ps7_0_axi_periph_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => ps7_0_axi_periph_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => ps7_0_axi_periph_M00_AXI_WVALID,
      M01_ACLK => processing_system7_0_FCLK_CLK0,
      M01_ARESETN => rst_ps7_0_50M_peripheral_aresetn(0),
      M01_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M01_AXI_ARADDR(31 downto 0),
      M01_AXI_arready => ps7_0_axi_periph_M01_AXI_ARREADY,
      M01_AXI_arvalid => ps7_0_axi_periph_M01_AXI_ARVALID,
      M01_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M01_AXI_AWADDR(31 downto 0),
      M01_AXI_awready => ps7_0_axi_periph_M01_AXI_AWREADY,
      M01_AXI_awvalid => ps7_0_axi_periph_M01_AXI_AWVALID,
      M01_AXI_bready => ps7_0_axi_periph_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid => ps7_0_axi_periph_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready => ps7_0_axi_periph_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid => ps7_0_axi_periph_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready => ps7_0_axi_periph_M01_AXI_WREADY,
      M01_AXI_wvalid => ps7_0_axi_periph_M01_AXI_WVALID,
      M02_ACLK => processing_system7_0_FCLK_CLK0,
      M02_ARESETN => rst_ps7_0_50M_peripheral_aresetn(0),
      M02_AXI_araddr => smartconnect_2_M00_AXI_ARADDR,
      M02_AXI_arburst => smartconnect_2_M00_AXI_ARBURST,
      M02_AXI_arcache => smartconnect_2_M00_AXI_ARCACHE,
      M02_AXI_arlen => smartconnect_2_M00_AXI_ARLEN,
      M02_AXI_arlock => smartconnect_2_M00_AXI_ARLOCK,
      M02_AXI_arprot => smartconnect_2_M00_AXI_ARPROT,
      M02_AXI_arqos => smartconnect_2_M00_AXI_ARQOS,
      M02_AXI_arready => '0',
      M02_AXI_arregion => NLW_ps7_0_axi_periph_M02_AXI_arregion_UNCONNECTED,
      M02_AXI_arsize => smartconnect_2_M00_AXI_ARSIZE,
      M02_AXI_arvalid => smartconnect_2_M00_AXI_ARVALID,
      M02_AXI_awaddr => smartconnect_2_M00_AXI_AWADDR,
      M02_AXI_awburst => smartconnect_2_M00_AXI_AWBURST,
      M02_AXI_awcache => smartconnect_2_M00_AXI_AWCACHE,
      M02_AXI_awlen => smartconnect_2_M00_AXI_AWLEN,
      M02_AXI_awlock => smartconnect_2_M00_AXI_AWLOCK,
      M02_AXI_awprot => smartconnect_2_M00_AXI_AWPROT,
      M02_AXI_awqos => smartconnect_2_M00_AXI_AWQOS,
      M02_AXI_awready => '0',
      M02_AXI_awregion => NLW_ps7_0_axi_periph_M02_AXI_awregion_UNCONNECTED,
      M02_AXI_awsize => smartconnect_2_M00_AXI_AWSIZE,
      M02_AXI_awvalid => smartconnect_2_M00_AXI_AWVALID,
      M02_AXI_bready => smartconnect_2_M00_AXI_BREADY,
      M02_AXI_bresp => '0',
      M02_AXI_bvalid => '0',
      M02_AXI_rdata => '0',
      M02_AXI_rlast => '0',
      M02_AXI_rready => smartconnect_2_M00_AXI_RREADY,
      M02_AXI_rresp => '0',
      M02_AXI_rvalid => '0',
      M02_AXI_wdata => smartconnect_2_M00_AXI_WDATA,
      M02_AXI_wlast => smartconnect_2_M00_AXI_WLAST,
      M02_AXI_wready => '0',
      M02_AXI_wstrb => smartconnect_2_M00_AXI_WSTRB,
      M02_AXI_wvalid => smartconnect_2_M00_AXI_WVALID,
      M03_ACLK => processing_system7_0_FCLK_CLK0,
      M03_ARESETN => rst_ps7_0_50M_peripheral_aresetn(0),
      M03_AXI_araddr => smartconnect_0_M00_AXI_ARADDR,
      M03_AXI_arburst => smartconnect_0_M00_AXI_ARBURST,
      M03_AXI_arcache => smartconnect_0_M00_AXI_ARCACHE,
      M03_AXI_arlen => smartconnect_0_M00_AXI_ARLEN,
      M03_AXI_arlock => smartconnect_0_M00_AXI_ARLOCK,
      M03_AXI_arprot => smartconnect_0_M00_AXI_ARPROT,
      M03_AXI_arqos => smartconnect_0_M00_AXI_ARQOS,
      M03_AXI_arready => '0',
      M03_AXI_arregion => NLW_ps7_0_axi_periph_M03_AXI_arregion_UNCONNECTED,
      M03_AXI_arsize => smartconnect_0_M00_AXI_ARSIZE,
      M03_AXI_arvalid => smartconnect_0_M00_AXI_ARVALID,
      M03_AXI_awaddr => smartconnect_0_M00_AXI_AWADDR,
      M03_AXI_awburst => smartconnect_0_M00_AXI_AWBURST,
      M03_AXI_awcache => smartconnect_0_M00_AXI_AWCACHE,
      M03_AXI_awlen => smartconnect_0_M00_AXI_AWLEN,
      M03_AXI_awlock => smartconnect_0_M00_AXI_AWLOCK,
      M03_AXI_awprot => smartconnect_0_M00_AXI_AWPROT,
      M03_AXI_awqos => smartconnect_0_M00_AXI_AWQOS,
      M03_AXI_awready => '0',
      M03_AXI_awregion => NLW_ps7_0_axi_periph_M03_AXI_awregion_UNCONNECTED,
      M03_AXI_awsize => smartconnect_0_M00_AXI_AWSIZE,
      M03_AXI_awvalid => smartconnect_0_M00_AXI_AWVALID,
      M03_AXI_bready => smartconnect_0_M00_AXI_BREADY,
      M03_AXI_bresp => '0',
      M03_AXI_bvalid => '0',
      M03_AXI_rdata => '0',
      M03_AXI_rlast => '0',
      M03_AXI_rready => smartconnect_0_M00_AXI_RREADY,
      M03_AXI_rresp => '0',
      M03_AXI_rvalid => '0',
      M03_AXI_wdata => smartconnect_0_M00_AXI_WDATA,
      M03_AXI_wlast => smartconnect_0_M00_AXI_WLAST,
      M03_AXI_wready => '0',
      M03_AXI_wstrb => smartconnect_0_M00_AXI_WSTRB,
      M03_AXI_wvalid => smartconnect_0_M00_AXI_WVALID,
      M04_ACLK => processing_system7_0_FCLK_CLK0,
      M04_ARESETN => rst_ps7_0_50M_peripheral_aresetn(0),
      M04_AXI_araddr => smartconnect_1_M00_AXI_ARADDR,
      M04_AXI_arburst => smartconnect_1_M00_AXI_ARBURST,
      M04_AXI_arcache => smartconnect_1_M00_AXI_ARCACHE,
      M04_AXI_arlen => smartconnect_1_M00_AXI_ARLEN,
      M04_AXI_arlock => smartconnect_1_M00_AXI_ARLOCK,
      M04_AXI_arprot => smartconnect_1_M00_AXI_ARPROT,
      M04_AXI_arqos => smartconnect_1_M00_AXI_ARQOS,
      M04_AXI_arready => '0',
      M04_AXI_arregion => NLW_ps7_0_axi_periph_M04_AXI_arregion_UNCONNECTED,
      M04_AXI_arsize => smartconnect_1_M00_AXI_ARSIZE,
      M04_AXI_arvalid => smartconnect_1_M00_AXI_ARVALID,
      M04_AXI_awaddr => smartconnect_1_M00_AXI_AWADDR,
      M04_AXI_awburst => smartconnect_1_M00_AXI_AWBURST,
      M04_AXI_awcache => smartconnect_1_M00_AXI_AWCACHE,
      M04_AXI_awlen => smartconnect_1_M00_AXI_AWLEN,
      M04_AXI_awlock => smartconnect_1_M00_AXI_AWLOCK,
      M04_AXI_awprot => smartconnect_1_M00_AXI_AWPROT,
      M04_AXI_awqos => smartconnect_1_M00_AXI_AWQOS,
      M04_AXI_awready => '0',
      M04_AXI_awregion => NLW_ps7_0_axi_periph_M04_AXI_awregion_UNCONNECTED,
      M04_AXI_awsize => smartconnect_1_M00_AXI_AWSIZE,
      M04_AXI_awvalid => smartconnect_1_M00_AXI_AWVALID,
      M04_AXI_bready => smartconnect_1_M00_AXI_BREADY,
      M04_AXI_bresp => '0',
      M04_AXI_bvalid => '0',
      M04_AXI_rdata => '0',
      M04_AXI_rlast => '0',
      M04_AXI_rready => smartconnect_1_M00_AXI_RREADY,
      M04_AXI_rresp => '0',
      M04_AXI_rvalid => '0',
      M04_AXI_wdata => smartconnect_1_M00_AXI_WDATA,
      M04_AXI_wlast => smartconnect_1_M00_AXI_WLAST,
      M04_AXI_wready => '0',
      M04_AXI_wstrb => smartconnect_1_M00_AXI_WSTRB,
      M04_AXI_wvalid => smartconnect_1_M00_AXI_WVALID,
      M05_ACLK => processing_system7_0_FCLK_CLK0,
      M05_ARESETN => rst_ps7_0_50M_peripheral_aresetn(0),
      M05_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M05_AXI_ARADDR(31 downto 0),
      M05_AXI_arburst(1 downto 0) => ps7_0_axi_periph_M05_AXI_ARBURST(1 downto 0),
      M05_AXI_arcache(3 downto 0) => ps7_0_axi_periph_M05_AXI_ARCACHE(3 downto 0),
      M05_AXI_arlen(3 downto 0) => ps7_0_axi_periph_M05_AXI_ARLEN(3 downto 0),
      M05_AXI_arlock(1 downto 0) => ps7_0_axi_periph_M05_AXI_ARLOCK(1 downto 0),
      M05_AXI_arprot(2 downto 0) => ps7_0_axi_periph_M05_AXI_ARPROT(2 downto 0),
      M05_AXI_arqos(3 downto 0) => ps7_0_axi_periph_M05_AXI_ARQOS(3 downto 0),
      M05_AXI_arready => ps7_0_axi_periph_M05_AXI_ARREADY,
      M05_AXI_arsize(2 downto 0) => ps7_0_axi_periph_M05_AXI_ARSIZE(2 downto 0),
      M05_AXI_arvalid => ps7_0_axi_periph_M05_AXI_ARVALID,
      M05_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M05_AXI_AWADDR(31 downto 0),
      M05_AXI_awburst(1 downto 0) => ps7_0_axi_periph_M05_AXI_AWBURST(1 downto 0),
      M05_AXI_awcache(3 downto 0) => ps7_0_axi_periph_M05_AXI_AWCACHE(3 downto 0),
      M05_AXI_awlen(3 downto 0) => ps7_0_axi_periph_M05_AXI_AWLEN(3 downto 0),
      M05_AXI_awlock(1 downto 0) => ps7_0_axi_periph_M05_AXI_AWLOCK(1 downto 0),
      M05_AXI_awprot(2 downto 0) => ps7_0_axi_periph_M05_AXI_AWPROT(2 downto 0),
      M05_AXI_awqos(3 downto 0) => ps7_0_axi_periph_M05_AXI_AWQOS(3 downto 0),
      M05_AXI_awready => ps7_0_axi_periph_M05_AXI_AWREADY,
      M05_AXI_awsize(2 downto 0) => ps7_0_axi_periph_M05_AXI_AWSIZE(2 downto 0),
      M05_AXI_awvalid => ps7_0_axi_periph_M05_AXI_AWVALID,
      M05_AXI_bready => ps7_0_axi_periph_M05_AXI_BREADY,
      M05_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M05_AXI_BRESP(1 downto 0),
      M05_AXI_bvalid => ps7_0_axi_periph_M05_AXI_BVALID,
      M05_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M05_AXI_RDATA(31 downto 0),
      M05_AXI_rlast => ps7_0_axi_periph_M05_AXI_RLAST,
      M05_AXI_rready => ps7_0_axi_periph_M05_AXI_RREADY,
      M05_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M05_AXI_RRESP(1 downto 0),
      M05_AXI_rvalid => ps7_0_axi_periph_M05_AXI_RVALID,
      M05_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M05_AXI_WDATA(31 downto 0),
      M05_AXI_wlast => ps7_0_axi_periph_M05_AXI_WLAST,
      M05_AXI_wready => ps7_0_axi_periph_M05_AXI_WREADY,
      M05_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_M05_AXI_WSTRB(3 downto 0),
      M05_AXI_wvalid => ps7_0_axi_periph_M05_AXI_WVALID,
      M06_ACLK => processing_system7_0_FCLK_CLK0,
      M06_ARESETN => rst_ps7_0_50M_peripheral_aresetn(0),
      M06_AXI_araddr => NLW_ps7_0_axi_periph_M06_AXI_araddr_UNCONNECTED,
      M06_AXI_arburst => NLW_ps7_0_axi_periph_M06_AXI_arburst_UNCONNECTED,
      M06_AXI_arcache => NLW_ps7_0_axi_periph_M06_AXI_arcache_UNCONNECTED,
      M06_AXI_arlen => NLW_ps7_0_axi_periph_M06_AXI_arlen_UNCONNECTED,
      M06_AXI_arlock => NLW_ps7_0_axi_periph_M06_AXI_arlock_UNCONNECTED,
      M06_AXI_arprot => NLW_ps7_0_axi_periph_M06_AXI_arprot_UNCONNECTED,
      M06_AXI_arqos => NLW_ps7_0_axi_periph_M06_AXI_arqos_UNCONNECTED,
      M06_AXI_arready => '0',
      M06_AXI_arregion => NLW_ps7_0_axi_periph_M06_AXI_arregion_UNCONNECTED,
      M06_AXI_arsize => NLW_ps7_0_axi_periph_M06_AXI_arsize_UNCONNECTED,
      M06_AXI_arvalid => NLW_ps7_0_axi_periph_M06_AXI_arvalid_UNCONNECTED,
      M06_AXI_awaddr => NLW_ps7_0_axi_periph_M06_AXI_awaddr_UNCONNECTED,
      M06_AXI_awburst => NLW_ps7_0_axi_periph_M06_AXI_awburst_UNCONNECTED,
      M06_AXI_awcache => NLW_ps7_0_axi_periph_M06_AXI_awcache_UNCONNECTED,
      M06_AXI_awlen => NLW_ps7_0_axi_periph_M06_AXI_awlen_UNCONNECTED,
      M06_AXI_awlock => NLW_ps7_0_axi_periph_M06_AXI_awlock_UNCONNECTED,
      M06_AXI_awprot => NLW_ps7_0_axi_periph_M06_AXI_awprot_UNCONNECTED,
      M06_AXI_awqos => NLW_ps7_0_axi_periph_M06_AXI_awqos_UNCONNECTED,
      M06_AXI_awready => '0',
      M06_AXI_awregion => NLW_ps7_0_axi_periph_M06_AXI_awregion_UNCONNECTED,
      M06_AXI_awsize => NLW_ps7_0_axi_periph_M06_AXI_awsize_UNCONNECTED,
      M06_AXI_awvalid => NLW_ps7_0_axi_periph_M06_AXI_awvalid_UNCONNECTED,
      M06_AXI_bready => NLW_ps7_0_axi_periph_M06_AXI_bready_UNCONNECTED,
      M06_AXI_bresp => '0',
      M06_AXI_bvalid => '0',
      M06_AXI_rdata => '0',
      M06_AXI_rlast => '0',
      M06_AXI_rready => NLW_ps7_0_axi_periph_M06_AXI_rready_UNCONNECTED,
      M06_AXI_rresp => '0',
      M06_AXI_rvalid => '0',
      M06_AXI_wdata => NLW_ps7_0_axi_periph_M06_AXI_wdata_UNCONNECTED,
      M06_AXI_wlast => NLW_ps7_0_axi_periph_M06_AXI_wlast_UNCONNECTED,
      M06_AXI_wready => '0',
      M06_AXI_wstrb => NLW_ps7_0_axi_periph_M06_AXI_wstrb_UNCONNECTED,
      M06_AXI_wvalid => NLW_ps7_0_axi_periph_M06_AXI_wvalid_UNCONNECTED,
      S00_ACLK => processing_system7_0_FCLK_CLK0,
      S00_ARESETN => rst_ps7_0_50M_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      S00_AXI_arid(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      S00_AXI_arlen(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      S00_AXI_arlock(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      S00_AXI_arprot(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      S00_AXI_arready => processing_system7_0_M_AXI_GP0_ARREADY,
      S00_AXI_arsize(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      S00_AXI_arvalid => processing_system7_0_M_AXI_GP0_ARVALID,
      S00_AXI_awaddr(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      S00_AXI_awid(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      S00_AXI_awlen(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      S00_AXI_awlock(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      S00_AXI_awprot(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      S00_AXI_awready => processing_system7_0_M_AXI_GP0_AWREADY,
      S00_AXI_awsize(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      S00_AXI_awvalid => processing_system7_0_M_AXI_GP0_AWVALID,
      S00_AXI_bid(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      S00_AXI_bready => processing_system7_0_M_AXI_GP0_BREADY,
      S00_AXI_bresp(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      S00_AXI_bvalid => processing_system7_0_M_AXI_GP0_BVALID,
      S00_AXI_rdata(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      S00_AXI_rid(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      S00_AXI_rlast => processing_system7_0_M_AXI_GP0_RLAST,
      S00_AXI_rready => processing_system7_0_M_AXI_GP0_RREADY,
      S00_AXI_rresp(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      S00_AXI_rvalid => processing_system7_0_M_AXI_GP0_RVALID,
      S00_AXI_wdata(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      S00_AXI_wid(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      S00_AXI_wlast => processing_system7_0_M_AXI_GP0_WLAST,
      S00_AXI_wready => processing_system7_0_M_AXI_GP0_WREADY,
      S00_AXI_wstrb(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      S00_AXI_wvalid => processing_system7_0_M_AXI_GP0_WVALID,
      S01_ACLK => processing_system7_0_FCLK_CLK0,
      S01_ARESETN => rst_ps7_0_50M_peripheral_aresetn(0),
      S01_AXI_araddr(31 downto 0) => axi_dma_0_M_AXI_MM2S_ARADDR(31 downto 0),
      S01_AXI_arburst(1 downto 0) => axi_dma_0_M_AXI_MM2S_ARBURST(1 downto 0),
      S01_AXI_arcache(3 downto 0) => axi_dma_0_M_AXI_MM2S_ARCACHE(3 downto 0),
      S01_AXI_arlen(7 downto 0) => axi_dma_0_M_AXI_MM2S_ARLEN(7 downto 0),
      S01_AXI_arprot(2 downto 0) => axi_dma_0_M_AXI_MM2S_ARPROT(2 downto 0),
      S01_AXI_arready => axi_dma_0_M_AXI_MM2S_ARREADY,
      S01_AXI_arsize(2 downto 0) => axi_dma_0_M_AXI_MM2S_ARSIZE(2 downto 0),
      S01_AXI_arvalid => axi_dma_0_M_AXI_MM2S_ARVALID,
      S01_AXI_rdata(31 downto 0) => axi_dma_0_M_AXI_MM2S_RDATA(31 downto 0),
      S01_AXI_rlast => axi_dma_0_M_AXI_MM2S_RLAST,
      S01_AXI_rready => axi_dma_0_M_AXI_MM2S_RREADY,
      S01_AXI_rresp(1 downto 0) => axi_dma_0_M_AXI_MM2S_RRESP(1 downto 0),
      S01_AXI_rvalid => axi_dma_0_M_AXI_MM2S_RVALID,
      S02_ACLK => processing_system7_0_FCLK_CLK0,
      S02_ARESETN => rst_ps7_0_50M_peripheral_aresetn(0),
      S02_AXI_awaddr(31 downto 0) => axi_dma_0_M_AXI_S2MM_AWADDR(31 downto 0),
      S02_AXI_awburst(1 downto 0) => axi_dma_0_M_AXI_S2MM_AWBURST(1 downto 0),
      S02_AXI_awcache(3 downto 0) => axi_dma_0_M_AXI_S2MM_AWCACHE(3 downto 0),
      S02_AXI_awlen(7 downto 0) => axi_dma_0_M_AXI_S2MM_AWLEN(7 downto 0),
      S02_AXI_awprot(2 downto 0) => axi_dma_0_M_AXI_S2MM_AWPROT(2 downto 0),
      S02_AXI_awready => axi_dma_0_M_AXI_S2MM_AWREADY,
      S02_AXI_awsize(2 downto 0) => axi_dma_0_M_AXI_S2MM_AWSIZE(2 downto 0),
      S02_AXI_awvalid => axi_dma_0_M_AXI_S2MM_AWVALID,
      S02_AXI_bready => axi_dma_0_M_AXI_S2MM_BREADY,
      S02_AXI_bresp(1 downto 0) => axi_dma_0_M_AXI_S2MM_BRESP(1 downto 0),
      S02_AXI_bvalid => axi_dma_0_M_AXI_S2MM_BVALID,
      S02_AXI_wdata(31 downto 0) => axi_dma_0_M_AXI_S2MM_WDATA(31 downto 0),
      S02_AXI_wlast => axi_dma_0_M_AXI_S2MM_WLAST,
      S02_AXI_wready => axi_dma_0_M_AXI_S2MM_WREADY,
      S02_AXI_wstrb(3 downto 0) => axi_dma_0_M_AXI_S2MM_WSTRB(3 downto 0),
      S02_AXI_wvalid => axi_dma_0_M_AXI_S2MM_WVALID
    );
rst_ps7_0_50M: component embedded_system_rst_ps7_0_50M_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_ps7_0_50M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => rst_ps7_0_50M_interconnect_aresetn(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_ps7_0_50M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_ps7_0_50M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_ps7_0_50M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => processing_system7_0_FCLK_CLK0
    );
system_ila_0: component embedded_system_system_ila_0_0
     port map (
      SLOT_0_AXIS_tdata(31 downto 0) => axi_dma_0_M_AXIS_MM2S_TDATA(31 downto 0),
      SLOT_0_AXIS_tkeep(3 downto 0) => axi_dma_0_M_AXIS_MM2S_TKEEP(3 downto 0),
      SLOT_0_AXIS_tlast => axi_dma_0_M_AXIS_MM2S_TLAST,
      SLOT_0_AXIS_tready => '1',
      SLOT_0_AXIS_tvalid => axi_dma_0_M_AXIS_MM2S_TVALID,
      SLOT_1_AXIS_tdata(31 downto 0) => B"00000000000000000000000000000000",
      SLOT_1_AXIS_tlast => '0',
      SLOT_1_AXIS_tready => PL_CLASSIFIER_w_VOTI_0_m_axis_TREADY,
      SLOT_1_AXIS_tvalid => '0',
      SLOT_2_AXI_araddr(31) => smartconnect_0_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(30) => smartconnect_0_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(29) => smartconnect_0_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(28) => smartconnect_0_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(27) => smartconnect_0_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(26) => smartconnect_0_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(25) => smartconnect_0_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(24) => smartconnect_0_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(23) => smartconnect_0_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(22) => smartconnect_0_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(21) => smartconnect_0_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(20) => smartconnect_0_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(19) => smartconnect_0_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(18) => smartconnect_0_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(17) => smartconnect_0_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(16) => smartconnect_0_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(15) => smartconnect_0_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(14) => smartconnect_0_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(13) => smartconnect_0_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(12) => smartconnect_0_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(11) => smartconnect_0_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(10) => smartconnect_0_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(9) => smartconnect_0_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(8) => smartconnect_0_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(7) => smartconnect_0_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(6) => smartconnect_0_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(5) => smartconnect_0_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(4) => smartconnect_0_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(3) => smartconnect_0_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(2) => smartconnect_0_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(1) => smartconnect_0_M00_AXI_ARADDR,
      SLOT_2_AXI_araddr(0) => smartconnect_0_M00_AXI_ARADDR,
      SLOT_2_AXI_arburst(1) => smartconnect_0_M00_AXI_ARBURST,
      SLOT_2_AXI_arburst(0) => smartconnect_0_M00_AXI_ARBURST,
      SLOT_2_AXI_arcache(3) => smartconnect_0_M00_AXI_ARCACHE,
      SLOT_2_AXI_arcache(2) => smartconnect_0_M00_AXI_ARCACHE,
      SLOT_2_AXI_arcache(1) => smartconnect_0_M00_AXI_ARCACHE,
      SLOT_2_AXI_arcache(0) => smartconnect_0_M00_AXI_ARCACHE,
      SLOT_2_AXI_arlen(7) => smartconnect_0_M00_AXI_ARLEN,
      SLOT_2_AXI_arlen(6) => smartconnect_0_M00_AXI_ARLEN,
      SLOT_2_AXI_arlen(5) => smartconnect_0_M00_AXI_ARLEN,
      SLOT_2_AXI_arlen(4) => smartconnect_0_M00_AXI_ARLEN,
      SLOT_2_AXI_arlen(3) => smartconnect_0_M00_AXI_ARLEN,
      SLOT_2_AXI_arlen(2) => smartconnect_0_M00_AXI_ARLEN,
      SLOT_2_AXI_arlen(1) => smartconnect_0_M00_AXI_ARLEN,
      SLOT_2_AXI_arlen(0) => smartconnect_0_M00_AXI_ARLEN,
      SLOT_2_AXI_arlock(0) => smartconnect_0_M00_AXI_ARLOCK,
      SLOT_2_AXI_arprot(2) => smartconnect_0_M00_AXI_ARPROT,
      SLOT_2_AXI_arprot(1) => smartconnect_0_M00_AXI_ARPROT,
      SLOT_2_AXI_arprot(0) => smartconnect_0_M00_AXI_ARPROT,
      SLOT_2_AXI_arqos(3) => smartconnect_0_M00_AXI_ARQOS,
      SLOT_2_AXI_arqos(2) => smartconnect_0_M00_AXI_ARQOS,
      SLOT_2_AXI_arqos(1) => smartconnect_0_M00_AXI_ARQOS,
      SLOT_2_AXI_arqos(0) => smartconnect_0_M00_AXI_ARQOS,
      SLOT_2_AXI_arready => '0',
      SLOT_2_AXI_arsize(2) => smartconnect_0_M00_AXI_ARSIZE,
      SLOT_2_AXI_arsize(1) => smartconnect_0_M00_AXI_ARSIZE,
      SLOT_2_AXI_arsize(0) => smartconnect_0_M00_AXI_ARSIZE,
      SLOT_2_AXI_arvalid => smartconnect_0_M00_AXI_ARVALID,
      SLOT_2_AXI_awaddr(31) => smartconnect_0_M00_AXI_AWADDR,
      SLOT_2_AXI_awaddr(30) => smartconnect_0_M00_AXI_AWADDR,
      SLOT_2_AXI_awaddr(29) => smartconnect_0_M00_AXI_AWADDR,
      SLOT_2_AXI_awaddr(28) => smartconnect_0_M00_AXI_AWADDR,
      SLOT_2_AXI_awaddr(27) => smartconnect_0_M00_AXI_AWADDR,
      SLOT_2_AXI_awaddr(26) => smartconnect_0_M00_AXI_AWADDR,
      SLOT_2_AXI_awaddr(25) => smartconnect_0_M00_AXI_AWADDR,
      SLOT_2_AXI_awaddr(24) => smartconnect_0_M00_AXI_AWADDR,
      SLOT_2_AXI_awaddr(23) => smartconnect_0_M00_AXI_AWADDR,
      SLOT_2_AXI_awaddr(22) => smartconnect_0_M00_AXI_AWADDR,
      SLOT_2_AXI_awaddr(21) => smartconnect_0_M00_AXI_AWADDR,
      SLOT_2_AXI_awaddr(20) => smartconnect_0_M00_AXI_AWADDR,
      SLOT_2_AXI_awaddr(19) => smartconnect_0_M00_AXI_AWADDR,
      SLOT_2_AXI_awaddr(18) => smartconnect_0_M00_AXI_AWADDR,
      SLOT_2_AXI_awaddr(17) => smartconnect_0_M00_AXI_AWADDR,
      SLOT_2_AXI_awaddr(16) => smartconnect_0_M00_AXI_AWADDR,
      SLOT_2_AXI_awaddr(15) => smartconnect_0_M00_AXI_AWADDR,
      SLOT_2_AXI_awaddr(14) => smartconnect_0_M00_AXI_AWADDR,
      SLOT_2_AXI_awaddr(13) => smartconnect_0_M00_AXI_AWADDR,
      SLOT_2_AXI_awaddr(12) => smartconnect_0_M00_AXI_AWADDR,
      SLOT_2_AXI_awaddr(11) => smartconnect_0_M00_AXI_AWADDR,
      SLOT_2_AXI_awaddr(10) => smartconnect_0_M00_AXI_AWADDR,
      SLOT_2_AXI_awaddr(9) => smartconnect_0_M00_AXI_AWADDR,
      SLOT_2_AXI_awaddr(8) => smartconnect_0_M00_AXI_AWADDR,
      SLOT_2_AXI_awaddr(7) => smartconnect_0_M00_AXI_AWADDR,
      SLOT_2_AXI_awaddr(6) => smartconnect_0_M00_AXI_AWADDR,
      SLOT_2_AXI_awaddr(5) => smartconnect_0_M00_AXI_AWADDR,
      SLOT_2_AXI_awaddr(4) => smartconnect_0_M00_AXI_AWADDR,
      SLOT_2_AXI_awaddr(3) => smartconnect_0_M00_AXI_AWADDR,
      SLOT_2_AXI_awaddr(2) => smartconnect_0_M00_AXI_AWADDR,
      SLOT_2_AXI_awaddr(1) => smartconnect_0_M00_AXI_AWADDR,
      SLOT_2_AXI_awaddr(0) => smartconnect_0_M00_AXI_AWADDR,
      SLOT_2_AXI_awburst(1) => smartconnect_0_M00_AXI_AWBURST,
      SLOT_2_AXI_awburst(0) => smartconnect_0_M00_AXI_AWBURST,
      SLOT_2_AXI_awcache(3) => smartconnect_0_M00_AXI_AWCACHE,
      SLOT_2_AXI_awcache(2) => smartconnect_0_M00_AXI_AWCACHE,
      SLOT_2_AXI_awcache(1) => smartconnect_0_M00_AXI_AWCACHE,
      SLOT_2_AXI_awcache(0) => smartconnect_0_M00_AXI_AWCACHE,
      SLOT_2_AXI_awlen(7) => smartconnect_0_M00_AXI_AWLEN,
      SLOT_2_AXI_awlen(6) => smartconnect_0_M00_AXI_AWLEN,
      SLOT_2_AXI_awlen(5) => smartconnect_0_M00_AXI_AWLEN,
      SLOT_2_AXI_awlen(4) => smartconnect_0_M00_AXI_AWLEN,
      SLOT_2_AXI_awlen(3) => smartconnect_0_M00_AXI_AWLEN,
      SLOT_2_AXI_awlen(2) => smartconnect_0_M00_AXI_AWLEN,
      SLOT_2_AXI_awlen(1) => smartconnect_0_M00_AXI_AWLEN,
      SLOT_2_AXI_awlen(0) => smartconnect_0_M00_AXI_AWLEN,
      SLOT_2_AXI_awlock(0) => smartconnect_0_M00_AXI_AWLOCK,
      SLOT_2_AXI_awprot(2) => smartconnect_0_M00_AXI_AWPROT,
      SLOT_2_AXI_awprot(1) => smartconnect_0_M00_AXI_AWPROT,
      SLOT_2_AXI_awprot(0) => smartconnect_0_M00_AXI_AWPROT,
      SLOT_2_AXI_awqos(3) => smartconnect_0_M00_AXI_AWQOS,
      SLOT_2_AXI_awqos(2) => smartconnect_0_M00_AXI_AWQOS,
      SLOT_2_AXI_awqos(1) => smartconnect_0_M00_AXI_AWQOS,
      SLOT_2_AXI_awqos(0) => smartconnect_0_M00_AXI_AWQOS,
      SLOT_2_AXI_awready => '0',
      SLOT_2_AXI_awsize(2) => smartconnect_0_M00_AXI_AWSIZE,
      SLOT_2_AXI_awsize(1) => smartconnect_0_M00_AXI_AWSIZE,
      SLOT_2_AXI_awsize(0) => smartconnect_0_M00_AXI_AWSIZE,
      SLOT_2_AXI_awvalid => smartconnect_0_M00_AXI_AWVALID,
      SLOT_2_AXI_bready => smartconnect_0_M00_AXI_BREADY,
      SLOT_2_AXI_bresp(1 downto 0) => B"00",
      SLOT_2_AXI_bvalid => '0',
      SLOT_2_AXI_rdata(511 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      SLOT_2_AXI_rlast => '0',
      SLOT_2_AXI_rready => smartconnect_0_M00_AXI_RREADY,
      SLOT_2_AXI_rresp(1 downto 0) => B"00",
      SLOT_2_AXI_rvalid => '0',
      SLOT_2_AXI_wdata(511) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(510) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(509) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(508) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(507) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(506) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(505) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(504) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(503) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(502) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(501) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(500) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(499) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(498) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(497) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(496) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(495) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(494) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(493) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(492) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(491) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(490) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(489) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(488) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(487) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(486) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(485) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(484) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(483) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(482) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(481) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(480) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(479) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(478) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(477) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(476) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(475) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(474) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(473) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(472) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(471) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(470) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(469) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(468) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(467) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(466) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(465) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(464) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(463) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(462) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(461) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(460) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(459) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(458) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(457) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(456) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(455) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(454) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(453) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(452) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(451) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(450) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(449) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(448) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(447) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(446) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(445) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(444) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(443) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(442) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(441) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(440) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(439) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(438) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(437) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(436) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(435) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(434) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(433) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(432) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(431) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(430) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(429) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(428) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(427) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(426) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(425) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(424) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(423) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(422) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(421) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(420) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(419) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(418) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(417) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(416) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(415) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(414) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(413) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(412) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(411) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(410) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(409) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(408) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(407) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(406) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(405) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(404) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(403) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(402) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(401) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(400) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(399) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(398) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(397) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(396) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(395) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(394) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(393) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(392) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(391) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(390) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(389) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(388) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(387) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(386) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(385) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(384) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(383) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(382) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(381) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(380) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(379) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(378) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(377) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(376) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(375) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(374) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(373) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(372) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(371) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(370) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(369) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(368) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(367) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(366) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(365) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(364) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(363) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(362) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(361) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(360) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(359) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(358) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(357) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(356) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(355) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(354) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(353) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(352) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(351) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(350) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(349) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(348) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(347) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(346) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(345) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(344) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(343) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(342) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(341) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(340) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(339) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(338) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(337) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(336) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(335) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(334) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(333) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(332) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(331) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(330) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(329) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(328) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(327) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(326) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(325) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(324) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(323) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(322) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(321) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(320) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(319) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(318) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(317) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(316) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(315) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(314) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(313) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(312) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(311) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(310) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(309) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(308) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(307) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(306) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(305) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(304) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(303) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(302) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(301) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(300) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(299) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(298) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(297) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(296) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(295) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(294) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(293) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(292) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(291) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(290) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(289) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(288) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(287) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(286) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(285) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(284) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(283) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(282) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(281) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(280) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(279) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(278) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(277) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(276) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(275) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(274) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(273) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(272) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(271) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(270) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(269) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(268) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(267) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(266) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(265) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(264) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(263) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(262) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(261) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(260) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(259) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(258) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(257) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(256) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(255) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(254) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(253) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(252) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(251) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(250) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(249) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(248) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(247) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(246) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(245) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(244) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(243) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(242) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(241) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(240) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(239) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(238) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(237) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(236) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(235) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(234) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(233) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(232) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(231) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(230) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(229) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(228) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(227) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(226) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(225) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(224) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(223) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(222) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(221) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(220) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(219) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(218) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(217) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(216) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(215) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(214) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(213) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(212) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(211) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(210) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(209) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(208) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(207) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(206) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(205) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(204) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(203) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(202) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(201) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(200) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(199) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(198) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(197) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(196) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(195) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(194) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(193) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(192) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(191) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(190) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(189) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(188) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(187) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(186) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(185) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(184) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(183) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(182) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(181) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(180) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(179) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(178) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(177) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(176) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(175) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(174) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(173) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(172) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(171) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(170) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(169) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(168) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(167) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(166) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(165) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(164) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(163) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(162) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(161) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(160) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(159) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(158) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(157) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(156) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(155) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(154) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(153) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(152) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(151) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(150) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(149) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(148) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(147) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(146) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(145) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(144) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(143) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(142) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(141) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(140) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(139) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(138) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(137) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(136) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(135) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(134) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(133) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(132) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(131) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(130) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(129) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(128) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(127) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(126) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(125) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(124) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(123) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(122) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(121) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(120) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(119) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(118) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(117) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(116) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(115) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(114) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(113) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(112) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(111) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(110) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(109) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(108) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(107) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(106) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(105) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(104) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(103) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(102) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(101) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(100) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(99) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(98) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(97) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(96) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(95) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(94) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(93) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(92) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(91) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(90) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(89) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(88) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(87) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(86) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(85) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(84) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(83) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(82) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(81) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(80) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(79) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(78) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(77) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(76) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(75) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(74) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(73) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(72) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(71) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(70) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(69) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(68) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(67) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(66) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(65) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(64) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(63) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(62) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(61) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(60) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(59) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(58) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(57) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(56) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(55) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(54) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(53) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(52) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(51) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(50) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(49) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(48) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(47) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(46) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(45) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(44) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(43) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(42) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(41) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(40) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(39) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(38) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(37) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(36) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(35) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(34) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(33) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(32) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(31) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(30) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(29) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(28) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(27) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(26) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(25) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(24) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(23) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(22) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(21) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(20) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(19) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(18) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(17) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(16) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(15) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(14) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(13) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(12) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(11) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(10) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(9) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(8) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(7) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(6) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(5) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(4) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(3) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(2) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(1) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wdata(0) => smartconnect_0_M00_AXI_WDATA,
      SLOT_2_AXI_wlast => smartconnect_0_M00_AXI_WLAST,
      SLOT_2_AXI_wready => '0',
      SLOT_2_AXI_wstrb(63) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(62) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(61) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(60) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(59) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(58) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(57) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(56) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(55) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(54) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(53) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(52) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(51) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(50) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(49) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(48) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(47) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(46) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(45) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(44) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(43) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(42) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(41) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(40) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(39) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(38) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(37) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(36) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(35) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(34) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(33) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(32) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(31) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(30) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(29) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(28) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(27) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(26) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(25) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(24) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(23) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(22) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(21) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(20) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(19) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(18) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(17) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(16) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(15) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(14) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(13) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(12) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(11) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(10) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(9) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(8) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(7) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(6) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(5) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(4) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(3) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(2) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(1) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wstrb(0) => smartconnect_0_M00_AXI_WSTRB,
      SLOT_2_AXI_wvalid => smartconnect_0_M00_AXI_WVALID,
      SLOT_3_AXI_araddr(31) => smartconnect_1_M00_AXI_ARADDR,
      SLOT_3_AXI_araddr(30) => smartconnect_1_M00_AXI_ARADDR,
      SLOT_3_AXI_araddr(29) => smartconnect_1_M00_AXI_ARADDR,
      SLOT_3_AXI_araddr(28) => smartconnect_1_M00_AXI_ARADDR,
      SLOT_3_AXI_araddr(27) => smartconnect_1_M00_AXI_ARADDR,
      SLOT_3_AXI_araddr(26) => smartconnect_1_M00_AXI_ARADDR,
      SLOT_3_AXI_araddr(25) => smartconnect_1_M00_AXI_ARADDR,
      SLOT_3_AXI_araddr(24) => smartconnect_1_M00_AXI_ARADDR,
      SLOT_3_AXI_araddr(23) => smartconnect_1_M00_AXI_ARADDR,
      SLOT_3_AXI_araddr(22) => smartconnect_1_M00_AXI_ARADDR,
      SLOT_3_AXI_araddr(21) => smartconnect_1_M00_AXI_ARADDR,
      SLOT_3_AXI_araddr(20) => smartconnect_1_M00_AXI_ARADDR,
      SLOT_3_AXI_araddr(19) => smartconnect_1_M00_AXI_ARADDR,
      SLOT_3_AXI_araddr(18) => smartconnect_1_M00_AXI_ARADDR,
      SLOT_3_AXI_araddr(17) => smartconnect_1_M00_AXI_ARADDR,
      SLOT_3_AXI_araddr(16) => smartconnect_1_M00_AXI_ARADDR,
      SLOT_3_AXI_araddr(15) => smartconnect_1_M00_AXI_ARADDR,
      SLOT_3_AXI_araddr(14) => smartconnect_1_M00_AXI_ARADDR,
      SLOT_3_AXI_araddr(13) => smartconnect_1_M00_AXI_ARADDR,
      SLOT_3_AXI_araddr(12) => smartconnect_1_M00_AXI_ARADDR,
      SLOT_3_AXI_araddr(11) => smartconnect_1_M00_AXI_ARADDR,
      SLOT_3_AXI_araddr(10) => smartconnect_1_M00_AXI_ARADDR,
      SLOT_3_AXI_araddr(9) => smartconnect_1_M00_AXI_ARADDR,
      SLOT_3_AXI_araddr(8) => smartconnect_1_M00_AXI_ARADDR,
      SLOT_3_AXI_araddr(7) => smartconnect_1_M00_AXI_ARADDR,
      SLOT_3_AXI_araddr(6) => smartconnect_1_M00_AXI_ARADDR,
      SLOT_3_AXI_araddr(5) => smartconnect_1_M00_AXI_ARADDR,
      SLOT_3_AXI_araddr(4) => smartconnect_1_M00_AXI_ARADDR,
      SLOT_3_AXI_araddr(3) => smartconnect_1_M00_AXI_ARADDR,
      SLOT_3_AXI_araddr(2) => smartconnect_1_M00_AXI_ARADDR,
      SLOT_3_AXI_araddr(1) => smartconnect_1_M00_AXI_ARADDR,
      SLOT_3_AXI_araddr(0) => smartconnect_1_M00_AXI_ARADDR,
      SLOT_3_AXI_arburst(1) => smartconnect_1_M00_AXI_ARBURST,
      SLOT_3_AXI_arburst(0) => smartconnect_1_M00_AXI_ARBURST,
      SLOT_3_AXI_arcache(3) => smartconnect_1_M00_AXI_ARCACHE,
      SLOT_3_AXI_arcache(2) => smartconnect_1_M00_AXI_ARCACHE,
      SLOT_3_AXI_arcache(1) => smartconnect_1_M00_AXI_ARCACHE,
      SLOT_3_AXI_arcache(0) => smartconnect_1_M00_AXI_ARCACHE,
      SLOT_3_AXI_arlen(7) => smartconnect_1_M00_AXI_ARLEN,
      SLOT_3_AXI_arlen(6) => smartconnect_1_M00_AXI_ARLEN,
      SLOT_3_AXI_arlen(5) => smartconnect_1_M00_AXI_ARLEN,
      SLOT_3_AXI_arlen(4) => smartconnect_1_M00_AXI_ARLEN,
      SLOT_3_AXI_arlen(3) => smartconnect_1_M00_AXI_ARLEN,
      SLOT_3_AXI_arlen(2) => smartconnect_1_M00_AXI_ARLEN,
      SLOT_3_AXI_arlen(1) => smartconnect_1_M00_AXI_ARLEN,
      SLOT_3_AXI_arlen(0) => smartconnect_1_M00_AXI_ARLEN,
      SLOT_3_AXI_arlock(0) => smartconnect_1_M00_AXI_ARLOCK,
      SLOT_3_AXI_arprot(2) => smartconnect_1_M00_AXI_ARPROT,
      SLOT_3_AXI_arprot(1) => smartconnect_1_M00_AXI_ARPROT,
      SLOT_3_AXI_arprot(0) => smartconnect_1_M00_AXI_ARPROT,
      SLOT_3_AXI_arqos(3) => smartconnect_1_M00_AXI_ARQOS,
      SLOT_3_AXI_arqos(2) => smartconnect_1_M00_AXI_ARQOS,
      SLOT_3_AXI_arqos(1) => smartconnect_1_M00_AXI_ARQOS,
      SLOT_3_AXI_arqos(0) => smartconnect_1_M00_AXI_ARQOS,
      SLOT_3_AXI_arready => '0',
      SLOT_3_AXI_arsize(2) => smartconnect_1_M00_AXI_ARSIZE,
      SLOT_3_AXI_arsize(1) => smartconnect_1_M00_AXI_ARSIZE,
      SLOT_3_AXI_arsize(0) => smartconnect_1_M00_AXI_ARSIZE,
      SLOT_3_AXI_arvalid => smartconnect_1_M00_AXI_ARVALID,
      SLOT_3_AXI_awaddr(31) => smartconnect_1_M00_AXI_AWADDR,
      SLOT_3_AXI_awaddr(30) => smartconnect_1_M00_AXI_AWADDR,
      SLOT_3_AXI_awaddr(29) => smartconnect_1_M00_AXI_AWADDR,
      SLOT_3_AXI_awaddr(28) => smartconnect_1_M00_AXI_AWADDR,
      SLOT_3_AXI_awaddr(27) => smartconnect_1_M00_AXI_AWADDR,
      SLOT_3_AXI_awaddr(26) => smartconnect_1_M00_AXI_AWADDR,
      SLOT_3_AXI_awaddr(25) => smartconnect_1_M00_AXI_AWADDR,
      SLOT_3_AXI_awaddr(24) => smartconnect_1_M00_AXI_AWADDR,
      SLOT_3_AXI_awaddr(23) => smartconnect_1_M00_AXI_AWADDR,
      SLOT_3_AXI_awaddr(22) => smartconnect_1_M00_AXI_AWADDR,
      SLOT_3_AXI_awaddr(21) => smartconnect_1_M00_AXI_AWADDR,
      SLOT_3_AXI_awaddr(20) => smartconnect_1_M00_AXI_AWADDR,
      SLOT_3_AXI_awaddr(19) => smartconnect_1_M00_AXI_AWADDR,
      SLOT_3_AXI_awaddr(18) => smartconnect_1_M00_AXI_AWADDR,
      SLOT_3_AXI_awaddr(17) => smartconnect_1_M00_AXI_AWADDR,
      SLOT_3_AXI_awaddr(16) => smartconnect_1_M00_AXI_AWADDR,
      SLOT_3_AXI_awaddr(15) => smartconnect_1_M00_AXI_AWADDR,
      SLOT_3_AXI_awaddr(14) => smartconnect_1_M00_AXI_AWADDR,
      SLOT_3_AXI_awaddr(13) => smartconnect_1_M00_AXI_AWADDR,
      SLOT_3_AXI_awaddr(12) => smartconnect_1_M00_AXI_AWADDR,
      SLOT_3_AXI_awaddr(11) => smartconnect_1_M00_AXI_AWADDR,
      SLOT_3_AXI_awaddr(10) => smartconnect_1_M00_AXI_AWADDR,
      SLOT_3_AXI_awaddr(9) => smartconnect_1_M00_AXI_AWADDR,
      SLOT_3_AXI_awaddr(8) => smartconnect_1_M00_AXI_AWADDR,
      SLOT_3_AXI_awaddr(7) => smartconnect_1_M00_AXI_AWADDR,
      SLOT_3_AXI_awaddr(6) => smartconnect_1_M00_AXI_AWADDR,
      SLOT_3_AXI_awaddr(5) => smartconnect_1_M00_AXI_AWADDR,
      SLOT_3_AXI_awaddr(4) => smartconnect_1_M00_AXI_AWADDR,
      SLOT_3_AXI_awaddr(3) => smartconnect_1_M00_AXI_AWADDR,
      SLOT_3_AXI_awaddr(2) => smartconnect_1_M00_AXI_AWADDR,
      SLOT_3_AXI_awaddr(1) => smartconnect_1_M00_AXI_AWADDR,
      SLOT_3_AXI_awaddr(0) => smartconnect_1_M00_AXI_AWADDR,
      SLOT_3_AXI_awburst(1) => smartconnect_1_M00_AXI_AWBURST,
      SLOT_3_AXI_awburst(0) => smartconnect_1_M00_AXI_AWBURST,
      SLOT_3_AXI_awcache(3) => smartconnect_1_M00_AXI_AWCACHE,
      SLOT_3_AXI_awcache(2) => smartconnect_1_M00_AXI_AWCACHE,
      SLOT_3_AXI_awcache(1) => smartconnect_1_M00_AXI_AWCACHE,
      SLOT_3_AXI_awcache(0) => smartconnect_1_M00_AXI_AWCACHE,
      SLOT_3_AXI_awlen(7) => smartconnect_1_M00_AXI_AWLEN,
      SLOT_3_AXI_awlen(6) => smartconnect_1_M00_AXI_AWLEN,
      SLOT_3_AXI_awlen(5) => smartconnect_1_M00_AXI_AWLEN,
      SLOT_3_AXI_awlen(4) => smartconnect_1_M00_AXI_AWLEN,
      SLOT_3_AXI_awlen(3) => smartconnect_1_M00_AXI_AWLEN,
      SLOT_3_AXI_awlen(2) => smartconnect_1_M00_AXI_AWLEN,
      SLOT_3_AXI_awlen(1) => smartconnect_1_M00_AXI_AWLEN,
      SLOT_3_AXI_awlen(0) => smartconnect_1_M00_AXI_AWLEN,
      SLOT_3_AXI_awlock(0) => smartconnect_1_M00_AXI_AWLOCK,
      SLOT_3_AXI_awprot(2) => smartconnect_1_M00_AXI_AWPROT,
      SLOT_3_AXI_awprot(1) => smartconnect_1_M00_AXI_AWPROT,
      SLOT_3_AXI_awprot(0) => smartconnect_1_M00_AXI_AWPROT,
      SLOT_3_AXI_awqos(3) => smartconnect_1_M00_AXI_AWQOS,
      SLOT_3_AXI_awqos(2) => smartconnect_1_M00_AXI_AWQOS,
      SLOT_3_AXI_awqos(1) => smartconnect_1_M00_AXI_AWQOS,
      SLOT_3_AXI_awqos(0) => smartconnect_1_M00_AXI_AWQOS,
      SLOT_3_AXI_awready => '0',
      SLOT_3_AXI_awsize(2) => smartconnect_1_M00_AXI_AWSIZE,
      SLOT_3_AXI_awsize(1) => smartconnect_1_M00_AXI_AWSIZE,
      SLOT_3_AXI_awsize(0) => smartconnect_1_M00_AXI_AWSIZE,
      SLOT_3_AXI_awvalid => smartconnect_1_M00_AXI_AWVALID,
      SLOT_3_AXI_bready => smartconnect_1_M00_AXI_BREADY,
      SLOT_3_AXI_bresp(1 downto 0) => B"00",
      SLOT_3_AXI_bvalid => '0',
      SLOT_3_AXI_rdata(511 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      SLOT_3_AXI_rlast => '0',
      SLOT_3_AXI_rready => smartconnect_1_M00_AXI_RREADY,
      SLOT_3_AXI_rresp(1 downto 0) => B"00",
      SLOT_3_AXI_rvalid => '0',
      SLOT_3_AXI_wdata(511) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(510) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(509) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(508) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(507) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(506) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(505) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(504) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(503) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(502) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(501) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(500) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(499) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(498) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(497) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(496) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(495) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(494) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(493) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(492) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(491) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(490) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(489) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(488) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(487) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(486) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(485) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(484) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(483) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(482) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(481) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(480) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(479) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(478) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(477) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(476) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(475) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(474) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(473) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(472) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(471) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(470) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(469) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(468) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(467) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(466) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(465) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(464) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(463) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(462) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(461) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(460) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(459) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(458) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(457) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(456) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(455) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(454) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(453) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(452) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(451) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(450) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(449) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(448) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(447) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(446) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(445) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(444) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(443) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(442) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(441) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(440) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(439) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(438) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(437) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(436) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(435) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(434) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(433) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(432) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(431) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(430) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(429) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(428) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(427) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(426) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(425) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(424) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(423) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(422) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(421) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(420) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(419) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(418) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(417) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(416) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(415) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(414) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(413) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(412) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(411) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(410) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(409) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(408) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(407) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(406) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(405) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(404) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(403) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(402) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(401) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(400) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(399) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(398) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(397) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(396) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(395) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(394) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(393) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(392) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(391) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(390) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(389) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(388) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(387) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(386) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(385) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(384) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(383) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(382) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(381) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(380) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(379) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(378) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(377) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(376) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(375) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(374) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(373) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(372) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(371) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(370) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(369) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(368) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(367) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(366) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(365) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(364) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(363) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(362) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(361) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(360) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(359) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(358) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(357) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(356) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(355) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(354) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(353) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(352) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(351) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(350) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(349) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(348) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(347) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(346) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(345) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(344) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(343) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(342) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(341) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(340) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(339) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(338) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(337) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(336) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(335) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(334) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(333) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(332) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(331) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(330) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(329) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(328) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(327) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(326) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(325) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(324) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(323) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(322) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(321) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(320) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(319) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(318) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(317) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(316) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(315) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(314) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(313) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(312) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(311) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(310) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(309) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(308) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(307) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(306) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(305) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(304) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(303) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(302) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(301) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(300) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(299) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(298) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(297) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(296) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(295) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(294) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(293) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(292) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(291) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(290) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(289) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(288) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(287) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(286) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(285) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(284) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(283) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(282) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(281) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(280) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(279) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(278) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(277) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(276) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(275) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(274) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(273) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(272) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(271) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(270) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(269) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(268) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(267) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(266) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(265) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(264) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(263) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(262) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(261) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(260) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(259) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(258) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(257) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(256) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(255) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(254) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(253) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(252) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(251) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(250) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(249) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(248) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(247) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(246) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(245) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(244) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(243) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(242) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(241) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(240) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(239) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(238) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(237) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(236) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(235) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(234) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(233) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(232) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(231) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(230) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(229) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(228) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(227) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(226) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(225) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(224) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(223) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(222) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(221) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(220) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(219) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(218) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(217) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(216) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(215) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(214) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(213) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(212) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(211) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(210) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(209) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(208) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(207) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(206) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(205) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(204) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(203) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(202) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(201) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(200) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(199) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(198) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(197) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(196) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(195) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(194) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(193) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(192) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(191) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(190) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(189) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(188) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(187) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(186) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(185) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(184) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(183) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(182) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(181) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(180) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(179) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(178) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(177) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(176) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(175) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(174) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(173) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(172) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(171) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(170) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(169) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(168) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(167) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(166) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(165) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(164) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(163) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(162) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(161) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(160) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(159) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(158) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(157) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(156) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(155) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(154) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(153) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(152) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(151) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(150) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(149) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(148) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(147) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(146) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(145) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(144) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(143) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(142) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(141) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(140) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(139) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(138) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(137) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(136) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(135) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(134) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(133) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(132) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(131) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(130) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(129) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(128) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(127) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(126) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(125) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(124) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(123) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(122) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(121) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(120) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(119) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(118) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(117) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(116) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(115) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(114) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(113) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(112) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(111) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(110) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(109) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(108) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(107) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(106) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(105) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(104) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(103) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(102) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(101) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(100) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(99) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(98) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(97) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(96) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(95) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(94) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(93) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(92) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(91) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(90) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(89) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(88) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(87) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(86) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(85) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(84) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(83) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(82) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(81) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(80) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(79) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(78) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(77) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(76) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(75) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(74) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(73) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(72) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(71) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(70) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(69) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(68) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(67) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(66) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(65) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(64) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(63) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(62) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(61) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(60) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(59) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(58) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(57) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(56) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(55) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(54) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(53) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(52) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(51) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(50) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(49) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(48) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(47) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(46) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(45) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(44) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(43) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(42) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(41) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(40) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(39) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(38) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(37) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(36) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(35) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(34) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(33) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(32) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(31) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(30) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(29) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(28) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(27) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(26) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(25) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(24) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(23) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(22) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(21) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(20) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(19) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(18) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(17) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(16) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(15) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(14) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(13) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(12) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(11) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(10) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(9) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(8) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(7) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(6) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(5) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(4) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(3) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(2) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(1) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wdata(0) => smartconnect_1_M00_AXI_WDATA,
      SLOT_3_AXI_wlast => smartconnect_1_M00_AXI_WLAST,
      SLOT_3_AXI_wready => '0',
      SLOT_3_AXI_wstrb(63) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(62) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(61) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(60) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(59) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(58) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(57) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(56) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(55) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(54) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(53) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(52) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(51) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(50) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(49) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(48) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(47) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(46) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(45) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(44) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(43) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(42) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(41) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(40) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(39) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(38) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(37) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(36) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(35) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(34) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(33) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(32) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(31) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(30) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(29) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(28) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(27) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(26) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(25) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(24) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(23) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(22) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(21) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(20) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(19) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(18) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(17) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(16) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(15) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(14) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(13) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(12) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(11) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(10) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(9) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(8) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(7) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(6) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(5) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(4) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(3) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(2) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(1) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wstrb(0) => smartconnect_1_M00_AXI_WSTRB,
      SLOT_3_AXI_wvalid => smartconnect_1_M00_AXI_WVALID,
      SLOT_4_AXI_araddr(31) => smartconnect_2_M00_AXI_ARADDR,
      SLOT_4_AXI_araddr(30) => smartconnect_2_M00_AXI_ARADDR,
      SLOT_4_AXI_araddr(29) => smartconnect_2_M00_AXI_ARADDR,
      SLOT_4_AXI_araddr(28) => smartconnect_2_M00_AXI_ARADDR,
      SLOT_4_AXI_araddr(27) => smartconnect_2_M00_AXI_ARADDR,
      SLOT_4_AXI_araddr(26) => smartconnect_2_M00_AXI_ARADDR,
      SLOT_4_AXI_araddr(25) => smartconnect_2_M00_AXI_ARADDR,
      SLOT_4_AXI_araddr(24) => smartconnect_2_M00_AXI_ARADDR,
      SLOT_4_AXI_araddr(23) => smartconnect_2_M00_AXI_ARADDR,
      SLOT_4_AXI_araddr(22) => smartconnect_2_M00_AXI_ARADDR,
      SLOT_4_AXI_araddr(21) => smartconnect_2_M00_AXI_ARADDR,
      SLOT_4_AXI_araddr(20) => smartconnect_2_M00_AXI_ARADDR,
      SLOT_4_AXI_araddr(19) => smartconnect_2_M00_AXI_ARADDR,
      SLOT_4_AXI_araddr(18) => smartconnect_2_M00_AXI_ARADDR,
      SLOT_4_AXI_araddr(17) => smartconnect_2_M00_AXI_ARADDR,
      SLOT_4_AXI_araddr(16) => smartconnect_2_M00_AXI_ARADDR,
      SLOT_4_AXI_araddr(15) => smartconnect_2_M00_AXI_ARADDR,
      SLOT_4_AXI_araddr(14) => smartconnect_2_M00_AXI_ARADDR,
      SLOT_4_AXI_araddr(13) => smartconnect_2_M00_AXI_ARADDR,
      SLOT_4_AXI_araddr(12) => smartconnect_2_M00_AXI_ARADDR,
      SLOT_4_AXI_araddr(11) => smartconnect_2_M00_AXI_ARADDR,
      SLOT_4_AXI_araddr(10) => smartconnect_2_M00_AXI_ARADDR,
      SLOT_4_AXI_araddr(9) => smartconnect_2_M00_AXI_ARADDR,
      SLOT_4_AXI_araddr(8) => smartconnect_2_M00_AXI_ARADDR,
      SLOT_4_AXI_araddr(7) => smartconnect_2_M00_AXI_ARADDR,
      SLOT_4_AXI_araddr(6) => smartconnect_2_M00_AXI_ARADDR,
      SLOT_4_AXI_araddr(5) => smartconnect_2_M00_AXI_ARADDR,
      SLOT_4_AXI_araddr(4) => smartconnect_2_M00_AXI_ARADDR,
      SLOT_4_AXI_araddr(3) => smartconnect_2_M00_AXI_ARADDR,
      SLOT_4_AXI_araddr(2) => smartconnect_2_M00_AXI_ARADDR,
      SLOT_4_AXI_araddr(1) => smartconnect_2_M00_AXI_ARADDR,
      SLOT_4_AXI_araddr(0) => smartconnect_2_M00_AXI_ARADDR,
      SLOT_4_AXI_arburst(1) => smartconnect_2_M00_AXI_ARBURST,
      SLOT_4_AXI_arburst(0) => smartconnect_2_M00_AXI_ARBURST,
      SLOT_4_AXI_arcache(3) => smartconnect_2_M00_AXI_ARCACHE,
      SLOT_4_AXI_arcache(2) => smartconnect_2_M00_AXI_ARCACHE,
      SLOT_4_AXI_arcache(1) => smartconnect_2_M00_AXI_ARCACHE,
      SLOT_4_AXI_arcache(0) => smartconnect_2_M00_AXI_ARCACHE,
      SLOT_4_AXI_arlen(7) => smartconnect_2_M00_AXI_ARLEN,
      SLOT_4_AXI_arlen(6) => smartconnect_2_M00_AXI_ARLEN,
      SLOT_4_AXI_arlen(5) => smartconnect_2_M00_AXI_ARLEN,
      SLOT_4_AXI_arlen(4) => smartconnect_2_M00_AXI_ARLEN,
      SLOT_4_AXI_arlen(3) => smartconnect_2_M00_AXI_ARLEN,
      SLOT_4_AXI_arlen(2) => smartconnect_2_M00_AXI_ARLEN,
      SLOT_4_AXI_arlen(1) => smartconnect_2_M00_AXI_ARLEN,
      SLOT_4_AXI_arlen(0) => smartconnect_2_M00_AXI_ARLEN,
      SLOT_4_AXI_arlock(0) => smartconnect_2_M00_AXI_ARLOCK,
      SLOT_4_AXI_arprot(2) => smartconnect_2_M00_AXI_ARPROT,
      SLOT_4_AXI_arprot(1) => smartconnect_2_M00_AXI_ARPROT,
      SLOT_4_AXI_arprot(0) => smartconnect_2_M00_AXI_ARPROT,
      SLOT_4_AXI_arqos(3) => smartconnect_2_M00_AXI_ARQOS,
      SLOT_4_AXI_arqos(2) => smartconnect_2_M00_AXI_ARQOS,
      SLOT_4_AXI_arqos(1) => smartconnect_2_M00_AXI_ARQOS,
      SLOT_4_AXI_arqos(0) => smartconnect_2_M00_AXI_ARQOS,
      SLOT_4_AXI_arready => '0',
      SLOT_4_AXI_arsize(2) => smartconnect_2_M00_AXI_ARSIZE,
      SLOT_4_AXI_arsize(1) => smartconnect_2_M00_AXI_ARSIZE,
      SLOT_4_AXI_arsize(0) => smartconnect_2_M00_AXI_ARSIZE,
      SLOT_4_AXI_arvalid => smartconnect_2_M00_AXI_ARVALID,
      SLOT_4_AXI_awaddr(31) => smartconnect_2_M00_AXI_AWADDR,
      SLOT_4_AXI_awaddr(30) => smartconnect_2_M00_AXI_AWADDR,
      SLOT_4_AXI_awaddr(29) => smartconnect_2_M00_AXI_AWADDR,
      SLOT_4_AXI_awaddr(28) => smartconnect_2_M00_AXI_AWADDR,
      SLOT_4_AXI_awaddr(27) => smartconnect_2_M00_AXI_AWADDR,
      SLOT_4_AXI_awaddr(26) => smartconnect_2_M00_AXI_AWADDR,
      SLOT_4_AXI_awaddr(25) => smartconnect_2_M00_AXI_AWADDR,
      SLOT_4_AXI_awaddr(24) => smartconnect_2_M00_AXI_AWADDR,
      SLOT_4_AXI_awaddr(23) => smartconnect_2_M00_AXI_AWADDR,
      SLOT_4_AXI_awaddr(22) => smartconnect_2_M00_AXI_AWADDR,
      SLOT_4_AXI_awaddr(21) => smartconnect_2_M00_AXI_AWADDR,
      SLOT_4_AXI_awaddr(20) => smartconnect_2_M00_AXI_AWADDR,
      SLOT_4_AXI_awaddr(19) => smartconnect_2_M00_AXI_AWADDR,
      SLOT_4_AXI_awaddr(18) => smartconnect_2_M00_AXI_AWADDR,
      SLOT_4_AXI_awaddr(17) => smartconnect_2_M00_AXI_AWADDR,
      SLOT_4_AXI_awaddr(16) => smartconnect_2_M00_AXI_AWADDR,
      SLOT_4_AXI_awaddr(15) => smartconnect_2_M00_AXI_AWADDR,
      SLOT_4_AXI_awaddr(14) => smartconnect_2_M00_AXI_AWADDR,
      SLOT_4_AXI_awaddr(13) => smartconnect_2_M00_AXI_AWADDR,
      SLOT_4_AXI_awaddr(12) => smartconnect_2_M00_AXI_AWADDR,
      SLOT_4_AXI_awaddr(11) => smartconnect_2_M00_AXI_AWADDR,
      SLOT_4_AXI_awaddr(10) => smartconnect_2_M00_AXI_AWADDR,
      SLOT_4_AXI_awaddr(9) => smartconnect_2_M00_AXI_AWADDR,
      SLOT_4_AXI_awaddr(8) => smartconnect_2_M00_AXI_AWADDR,
      SLOT_4_AXI_awaddr(7) => smartconnect_2_M00_AXI_AWADDR,
      SLOT_4_AXI_awaddr(6) => smartconnect_2_M00_AXI_AWADDR,
      SLOT_4_AXI_awaddr(5) => smartconnect_2_M00_AXI_AWADDR,
      SLOT_4_AXI_awaddr(4) => smartconnect_2_M00_AXI_AWADDR,
      SLOT_4_AXI_awaddr(3) => smartconnect_2_M00_AXI_AWADDR,
      SLOT_4_AXI_awaddr(2) => smartconnect_2_M00_AXI_AWADDR,
      SLOT_4_AXI_awaddr(1) => smartconnect_2_M00_AXI_AWADDR,
      SLOT_4_AXI_awaddr(0) => smartconnect_2_M00_AXI_AWADDR,
      SLOT_4_AXI_awburst(1) => smartconnect_2_M00_AXI_AWBURST,
      SLOT_4_AXI_awburst(0) => smartconnect_2_M00_AXI_AWBURST,
      SLOT_4_AXI_awcache(3) => smartconnect_2_M00_AXI_AWCACHE,
      SLOT_4_AXI_awcache(2) => smartconnect_2_M00_AXI_AWCACHE,
      SLOT_4_AXI_awcache(1) => smartconnect_2_M00_AXI_AWCACHE,
      SLOT_4_AXI_awcache(0) => smartconnect_2_M00_AXI_AWCACHE,
      SLOT_4_AXI_awlen(7) => smartconnect_2_M00_AXI_AWLEN,
      SLOT_4_AXI_awlen(6) => smartconnect_2_M00_AXI_AWLEN,
      SLOT_4_AXI_awlen(5) => smartconnect_2_M00_AXI_AWLEN,
      SLOT_4_AXI_awlen(4) => smartconnect_2_M00_AXI_AWLEN,
      SLOT_4_AXI_awlen(3) => smartconnect_2_M00_AXI_AWLEN,
      SLOT_4_AXI_awlen(2) => smartconnect_2_M00_AXI_AWLEN,
      SLOT_4_AXI_awlen(1) => smartconnect_2_M00_AXI_AWLEN,
      SLOT_4_AXI_awlen(0) => smartconnect_2_M00_AXI_AWLEN,
      SLOT_4_AXI_awlock(0) => smartconnect_2_M00_AXI_AWLOCK,
      SLOT_4_AXI_awprot(2) => smartconnect_2_M00_AXI_AWPROT,
      SLOT_4_AXI_awprot(1) => smartconnect_2_M00_AXI_AWPROT,
      SLOT_4_AXI_awprot(0) => smartconnect_2_M00_AXI_AWPROT,
      SLOT_4_AXI_awqos(3) => smartconnect_2_M00_AXI_AWQOS,
      SLOT_4_AXI_awqos(2) => smartconnect_2_M00_AXI_AWQOS,
      SLOT_4_AXI_awqos(1) => smartconnect_2_M00_AXI_AWQOS,
      SLOT_4_AXI_awqos(0) => smartconnect_2_M00_AXI_AWQOS,
      SLOT_4_AXI_awready => '0',
      SLOT_4_AXI_awsize(2) => smartconnect_2_M00_AXI_AWSIZE,
      SLOT_4_AXI_awsize(1) => smartconnect_2_M00_AXI_AWSIZE,
      SLOT_4_AXI_awsize(0) => smartconnect_2_M00_AXI_AWSIZE,
      SLOT_4_AXI_awvalid => smartconnect_2_M00_AXI_AWVALID,
      SLOT_4_AXI_bready => smartconnect_2_M00_AXI_BREADY,
      SLOT_4_AXI_bresp(1 downto 0) => B"00",
      SLOT_4_AXI_bvalid => '0',
      SLOT_4_AXI_rdata(511 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      SLOT_4_AXI_rlast => '0',
      SLOT_4_AXI_rready => smartconnect_2_M00_AXI_RREADY,
      SLOT_4_AXI_rresp(1 downto 0) => B"00",
      SLOT_4_AXI_rvalid => '0',
      SLOT_4_AXI_wdata(511) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(510) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(509) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(508) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(507) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(506) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(505) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(504) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(503) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(502) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(501) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(500) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(499) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(498) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(497) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(496) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(495) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(494) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(493) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(492) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(491) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(490) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(489) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(488) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(487) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(486) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(485) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(484) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(483) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(482) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(481) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(480) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(479) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(478) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(477) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(476) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(475) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(474) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(473) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(472) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(471) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(470) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(469) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(468) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(467) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(466) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(465) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(464) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(463) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(462) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(461) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(460) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(459) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(458) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(457) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(456) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(455) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(454) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(453) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(452) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(451) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(450) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(449) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(448) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(447) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(446) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(445) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(444) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(443) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(442) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(441) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(440) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(439) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(438) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(437) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(436) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(435) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(434) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(433) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(432) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(431) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(430) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(429) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(428) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(427) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(426) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(425) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(424) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(423) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(422) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(421) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(420) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(419) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(418) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(417) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(416) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(415) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(414) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(413) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(412) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(411) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(410) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(409) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(408) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(407) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(406) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(405) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(404) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(403) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(402) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(401) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(400) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(399) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(398) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(397) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(396) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(395) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(394) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(393) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(392) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(391) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(390) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(389) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(388) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(387) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(386) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(385) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(384) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(383) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(382) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(381) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(380) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(379) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(378) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(377) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(376) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(375) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(374) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(373) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(372) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(371) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(370) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(369) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(368) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(367) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(366) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(365) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(364) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(363) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(362) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(361) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(360) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(359) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(358) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(357) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(356) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(355) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(354) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(353) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(352) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(351) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(350) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(349) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(348) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(347) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(346) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(345) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(344) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(343) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(342) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(341) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(340) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(339) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(338) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(337) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(336) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(335) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(334) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(333) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(332) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(331) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(330) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(329) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(328) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(327) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(326) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(325) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(324) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(323) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(322) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(321) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(320) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(319) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(318) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(317) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(316) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(315) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(314) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(313) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(312) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(311) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(310) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(309) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(308) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(307) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(306) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(305) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(304) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(303) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(302) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(301) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(300) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(299) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(298) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(297) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(296) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(295) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(294) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(293) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(292) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(291) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(290) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(289) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(288) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(287) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(286) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(285) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(284) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(283) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(282) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(281) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(280) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(279) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(278) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(277) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(276) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(275) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(274) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(273) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(272) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(271) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(270) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(269) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(268) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(267) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(266) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(265) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(264) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(263) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(262) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(261) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(260) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(259) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(258) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(257) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(256) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(255) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(254) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(253) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(252) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(251) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(250) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(249) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(248) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(247) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(246) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(245) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(244) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(243) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(242) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(241) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(240) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(239) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(238) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(237) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(236) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(235) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(234) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(233) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(232) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(231) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(230) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(229) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(228) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(227) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(226) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(225) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(224) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(223) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(222) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(221) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(220) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(219) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(218) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(217) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(216) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(215) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(214) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(213) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(212) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(211) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(210) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(209) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(208) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(207) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(206) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(205) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(204) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(203) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(202) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(201) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(200) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(199) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(198) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(197) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(196) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(195) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(194) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(193) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(192) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(191) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(190) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(189) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(188) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(187) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(186) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(185) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(184) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(183) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(182) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(181) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(180) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(179) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(178) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(177) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(176) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(175) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(174) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(173) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(172) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(171) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(170) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(169) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(168) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(167) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(166) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(165) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(164) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(163) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(162) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(161) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(160) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(159) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(158) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(157) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(156) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(155) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(154) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(153) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(152) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(151) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(150) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(149) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(148) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(147) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(146) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(145) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(144) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(143) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(142) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(141) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(140) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(139) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(138) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(137) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(136) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(135) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(134) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(133) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(132) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(131) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(130) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(129) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(128) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(127) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(126) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(125) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(124) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(123) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(122) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(121) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(120) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(119) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(118) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(117) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(116) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(115) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(114) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(113) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(112) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(111) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(110) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(109) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(108) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(107) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(106) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(105) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(104) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(103) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(102) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(101) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(100) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(99) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(98) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(97) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(96) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(95) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(94) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(93) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(92) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(91) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(90) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(89) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(88) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(87) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(86) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(85) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(84) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(83) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(82) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(81) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(80) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(79) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(78) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(77) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(76) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(75) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(74) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(73) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(72) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(71) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(70) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(69) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(68) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(67) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(66) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(65) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(64) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(63) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(62) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(61) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(60) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(59) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(58) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(57) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(56) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(55) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(54) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(53) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(52) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(51) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(50) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(49) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(48) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(47) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(46) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(45) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(44) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(43) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(42) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(41) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(40) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(39) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(38) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(37) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(36) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(35) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(34) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(33) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(32) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(31) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(30) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(29) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(28) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(27) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(26) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(25) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(24) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(23) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(22) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(21) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(20) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(19) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(18) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(17) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(16) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(15) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(14) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(13) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(12) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(11) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(10) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(9) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(8) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(7) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(6) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(5) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(4) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(3) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(2) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(1) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wdata(0) => smartconnect_2_M00_AXI_WDATA,
      SLOT_4_AXI_wlast => smartconnect_2_M00_AXI_WLAST,
      SLOT_4_AXI_wready => '0',
      SLOT_4_AXI_wstrb(63) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(62) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(61) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(60) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(59) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(58) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(57) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(56) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(55) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(54) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(53) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(52) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(51) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(50) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(49) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(48) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(47) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(46) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(45) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(44) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(43) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(42) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(41) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(40) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(39) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(38) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(37) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(36) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(35) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(34) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(33) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(32) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(31) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(30) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(29) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(28) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(27) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(26) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(25) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(24) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(23) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(22) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(21) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(20) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(19) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(18) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(17) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(16) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(15) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(14) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(13) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(12) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(11) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(10) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(9) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(8) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(7) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(6) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(5) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(4) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(3) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(2) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(1) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wstrb(0) => smartconnect_2_M00_AXI_WSTRB,
      SLOT_4_AXI_wvalid => smartconnect_2_M00_AXI_WVALID,
      clk => processing_system7_0_FCLK_CLK0,
      probe0(14 downto 0) => B"000000000000000",
      probe1(511 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      probe2(31 downto 0) => B"00000000000000000000000000000000",
      probe3(11 downto 0) => B"000000000000",
      probe4(31 downto 0) => B"00000000000000000000000000000000",
      probe5(11 downto 0) => B"000000000000",
      probe6(0) => axi_gpio_0_gpio_io_o(0),
      probe7(0) => axi_gpio_0_gpio2_io_o(0),
      resetn => rst_ps7_0_50M_peripheral_aresetn(0)
    );
end STRUCTURE;
