// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Aug 17 22:24:08 2022
// Host        : peppe-pc running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ embedded_system_PL_CLASSIFIER_w_VOTI_0_0_stub.v
// Design      : embedded_system_PL_CLASSIFIER_w_VOTI_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "PL_CLASSIFIER_w_VOTING,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(start, classification, s_axis_aclk, 
  s_axis_tready, s_axis_tvalid, s_axis_tdata, m_axis_tdata, m_axis_tvalid, m_axis_tready, 
  bram_addr_Pre_Comp_Vect, bram_wrdata_Pre_Comp_Vect, bram_en_Pre_Comp_Vect, 
  bram_we_Pre_Comp_Vect, bram_addr_Kernel_Scale, bram_wrdata_Kernel_Scale, 
  bram_en_Kernel_Scale, bram_we_Kernel_Scale, bram_addr_Bias, bram_wrdata_Bias, 
  bram_en_Bias, bram_we_Bias)
/* synthesis syn_black_box black_box_pad_pin="start,classification,s_axis_aclk,s_axis_tready,s_axis_tvalid,s_axis_tdata[31:0],m_axis_tdata[31:0],m_axis_tvalid,m_axis_tready,bram_addr_Pre_Comp_Vect[14:0],bram_wrdata_Pre_Comp_Vect[511:0],bram_en_Pre_Comp_Vect,bram_we_Pre_Comp_Vect[63:0],bram_addr_Kernel_Scale[11:0],bram_wrdata_Kernel_Scale[31:0],bram_en_Kernel_Scale,bram_we_Kernel_Scale[3:0],bram_addr_Bias[11:0],bram_wrdata_Bias[31:0],bram_en_Bias,bram_we_Bias[3:0]" */;
  input start;
  input classification;
  input s_axis_aclk;
  output s_axis_tready;
  input s_axis_tvalid;
  input [31:0]s_axis_tdata;
  output [31:0]m_axis_tdata;
  output m_axis_tvalid;
  input m_axis_tready;
  input [14:0]bram_addr_Pre_Comp_Vect;
  input [511:0]bram_wrdata_Pre_Comp_Vect;
  input bram_en_Pre_Comp_Vect;
  input [63:0]bram_we_Pre_Comp_Vect;
  input [11:0]bram_addr_Kernel_Scale;
  input [31:0]bram_wrdata_Kernel_Scale;
  input bram_en_Kernel_Scale;
  input [3:0]bram_we_Kernel_Scale;
  input [11:0]bram_addr_Bias;
  input [31:0]bram_wrdata_Bias;
  input bram_en_Bias;
  input [3:0]bram_we_Bias;
endmodule
