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

-- IP VLNV: xilinx.com:module_ref:axis_to_bram_Bias:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY embedded_system_axis_to_bram_Bias_0_1 IS
  PORT (
    clk : IN STD_LOGIC;
    trig : IN STD_LOGIC;
    s_axis_tready : OUT STD_LOGIC;
    s_axis_tvalid : IN STD_LOGIC;
    s_axis_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    addr_ram : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    data_out : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
    en_ram : OUT STD_LOGIC;
    we_ram : OUT STD_LOGIC
  );
END embedded_system_axis_to_bram_Bias_0_1;

ARCHITECTURE embedded_system_axis_to_bram_Bias_0_1_arch OF embedded_system_axis_to_bram_Bias_0_1 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF embedded_system_axis_to_bram_Bias_0_1_arch: ARCHITECTURE IS "yes";
  COMPONENT axis_to_bram_Bias IS
    GENERIC (
      n_in_bit : INTEGER;
      n_out_bit : INTEGER
    );
    PORT (
      clk : IN STD_LOGIC;
      trig : IN STD_LOGIC;
      s_axis_tready : OUT STD_LOGIC;
      s_axis_tvalid : IN STD_LOGIC;
      s_axis_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      addr_ram : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      data_out : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
      en_ram : OUT STD_LOGIC;
      we_ram : OUT STD_LOGIC
    );
  END COMPONENT axis_to_bram_Bias;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF embedded_system_axis_to_bram_Bias_0_1_arch: ARCHITECTURE IS "axis_to_bram_Bias,Vivado 2018.3";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF embedded_system_axis_to_bram_Bias_0_1_arch : ARCHITECTURE IS "embedded_system_axis_to_bram_Bias_0_1,axis_to_bram_Bias,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF embedded_system_axis_to_bram_Bias_0_1_arch: ARCHITECTURE IS "embedded_system_axis_to_bram_Bias_0_1,axis_to_bram_Bias,{x_ipProduct=Vivado 2018.3,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=axis_to_bram_Bias,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL,n_in_bit=32,n_out_bit=7}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF embedded_system_axis_to_bram_Bias_0_1_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tdata: SIGNAL IS "xilinx.com:user:s_axis:1.0 s_axis TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tvalid: SIGNAL IS "xilinx.com:user:s_axis:1.0 s_axis TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tready: SIGNAL IS "xilinx.com:user:s_axis:1.0 s_axis TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN embedded_system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
BEGIN
  U0 : axis_to_bram_Bias
    GENERIC MAP (
      n_in_bit => 32,
      n_out_bit => 7
    )
    PORT MAP (
      clk => clk,
      trig => trig,
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid,
      s_axis_tdata => s_axis_tdata,
      addr_ram => addr_ram,
      data_out => data_out,
      en_ram => en_ram,
      we_ram => we_ram
    );
END embedded_system_axis_to_bram_Bias_0_1_arch;
