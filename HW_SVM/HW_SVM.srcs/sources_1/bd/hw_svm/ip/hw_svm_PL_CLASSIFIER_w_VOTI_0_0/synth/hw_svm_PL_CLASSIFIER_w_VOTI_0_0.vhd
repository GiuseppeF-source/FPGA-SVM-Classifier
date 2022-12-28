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

-- IP VLNV: xilinx.com:module_ref:PL_CLASSIFIER_w_VOTING:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY hw_svm_PL_CLASSIFIER_w_VOTI_0_0 IS
  PORT (
    start : IN STD_LOGIC;
    classification : IN STD_LOGIC;
    axi_resetn : IN STD_LOGIC;
    s_axis_aclk : IN STD_LOGIC;
    s_axis_tready : OUT STD_LOGIC;
    s_axis_tvalid : IN STD_LOGIC;
    s_axis_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axis_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axis_tvalid : OUT STD_LOGIC;
    m_axis_tready : IN STD_LOGIC;
    bram_addr_Pre_Comp_Vect : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    bram_wrdata_Pre_Comp_Vect : IN STD_LOGIC_VECTOR(407 DOWNTO 0);
    bram_en_Pre_Comp_Vect : IN STD_LOGIC;
    bram_we_Pre_Comp_Vect : IN STD_LOGIC;
    bram_addr_Kernel_Scale : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    bram_wrdata_Kernel_Scale : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    bram_en_Kernel_Scale : IN STD_LOGIC;
    bram_we_Kernel_Scale : IN STD_LOGIC;
    bram_addr_Bias : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    bram_wrdata_Bias : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    bram_en_Bias : IN STD_LOGIC;
    bram_we_Bias : IN STD_LOGIC;
    trig_axis_to_BRAM_PCV : OUT STD_LOGIC;
    trig_axis_to_BRAM_Kernel_Scale : OUT STD_LOGIC;
    trig_axis_to_BRAM_Bias : OUT STD_LOGIC
  );
END hw_svm_PL_CLASSIFIER_w_VOTI_0_0;

ARCHITECTURE hw_svm_PL_CLASSIFIER_w_VOTI_0_0_arch OF hw_svm_PL_CLASSIFIER_w_VOTI_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF hw_svm_PL_CLASSIFIER_w_VOTI_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT PL_CLASSIFIER_w_VOTING IS
    PORT (
      start : IN STD_LOGIC;
      classification : IN STD_LOGIC;
      axi_resetn : IN STD_LOGIC;
      s_axis_aclk : IN STD_LOGIC;
      s_axis_tready : OUT STD_LOGIC;
      s_axis_tvalid : IN STD_LOGIC;
      s_axis_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axis_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axis_tvalid : OUT STD_LOGIC;
      m_axis_tready : IN STD_LOGIC;
      bram_addr_Pre_Comp_Vect : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      bram_wrdata_Pre_Comp_Vect : IN STD_LOGIC_VECTOR(407 DOWNTO 0);
      bram_en_Pre_Comp_Vect : IN STD_LOGIC;
      bram_we_Pre_Comp_Vect : IN STD_LOGIC;
      bram_addr_Kernel_Scale : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      bram_wrdata_Kernel_Scale : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      bram_en_Kernel_Scale : IN STD_LOGIC;
      bram_we_Kernel_Scale : IN STD_LOGIC;
      bram_addr_Bias : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      bram_wrdata_Bias : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
      bram_en_Bias : IN STD_LOGIC;
      bram_we_Bias : IN STD_LOGIC;
      trig_axis_to_BRAM_PCV : OUT STD_LOGIC;
      trig_axis_to_BRAM_Kernel_Scale : OUT STD_LOGIC;
      trig_axis_to_BRAM_Bias : OUT STD_LOGIC
    );
  END COMPONENT PL_CLASSIFIER_w_VOTING;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF hw_svm_PL_CLASSIFIER_w_VOTI_0_0_arch: ARCHITECTURE IS "PL_CLASSIFIER_w_VOTING,Vivado 2018.3";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF hw_svm_PL_CLASSIFIER_w_VOTI_0_0_arch : ARCHITECTURE IS "hw_svm_PL_CLASSIFIER_w_VOTI_0_0,PL_CLASSIFIER_w_VOTING,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF hw_svm_PL_CLASSIFIER_w_VOTI_0_0_arch: ARCHITECTURE IS "hw_svm_PL_CLASSIFIER_w_VOTI_0_0,PL_CLASSIFIER_w_VOTING,{x_ipProduct=Vivado 2018.3,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=PL_CLASSIFIER_w_VOTING,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF hw_svm_PL_CLASSIFIER_w_VOTI_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axis_tdata: SIGNAL IS "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axis_tready: SIGNAL IS "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 30303030, PHASE 0.000, CLK_DOMAIN hw_svm_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axis_aclk: SIGNAL IS "XIL_INTERFACENAME s_axis_aclk, ASSOCIATED_BUSIF s_axis, FREQ_HZ 30303030, PHASE 0.000, CLK_DOMAIN hw_svm_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 s_axis_aclk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF axi_resetn: SIGNAL IS "XIL_INTERFACENAME axi_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF axi_resetn: SIGNAL IS "xilinx.com:signal:reset:1.0 axi_resetn RST";
BEGIN
  U0 : PL_CLASSIFIER_w_VOTING
    PORT MAP (
      start => start,
      classification => classification,
      axi_resetn => axi_resetn,
      s_axis_aclk => s_axis_aclk,
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid,
      s_axis_tdata => s_axis_tdata,
      m_axis_tdata => m_axis_tdata,
      m_axis_tvalid => m_axis_tvalid,
      m_axis_tready => m_axis_tready,
      bram_addr_Pre_Comp_Vect => bram_addr_Pre_Comp_Vect,
      bram_wrdata_Pre_Comp_Vect => bram_wrdata_Pre_Comp_Vect,
      bram_en_Pre_Comp_Vect => bram_en_Pre_Comp_Vect,
      bram_we_Pre_Comp_Vect => bram_we_Pre_Comp_Vect,
      bram_addr_Kernel_Scale => bram_addr_Kernel_Scale,
      bram_wrdata_Kernel_Scale => bram_wrdata_Kernel_Scale,
      bram_en_Kernel_Scale => bram_en_Kernel_Scale,
      bram_we_Kernel_Scale => bram_we_Kernel_Scale,
      bram_addr_Bias => bram_addr_Bias,
      bram_wrdata_Bias => bram_wrdata_Bias,
      bram_en_Bias => bram_en_Bias,
      bram_we_Bias => bram_we_Bias,
      trig_axis_to_BRAM_PCV => trig_axis_to_BRAM_PCV,
      trig_axis_to_BRAM_Kernel_Scale => trig_axis_to_BRAM_Kernel_Scale,
      trig_axis_to_BRAM_Bias => trig_axis_to_BRAM_Bias
    );
END hw_svm_PL_CLASSIFIER_w_VOTI_0_0_arch;
