// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Dec 29 21:30:16 2022
// Host        : peppe-pc running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/work/Master_Degree_Thesis/HW_SVM/HW_SVM.srcs/sources_1/bd/hw_svm/ip/hw_svm_PL_CLASSIFIER_w_VOTI_0_0/hw_svm_PL_CLASSIFIER_w_VOTI_0_0_stub.v
// Design      : hw_svm_PL_CLASSIFIER_w_VOTI_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "PL_CLASSIFIER_w_VOTING,Vivado 2018.3" *)
module hw_svm_PL_CLASSIFIER_w_VOTI_0_0(start, classification, axi_resetn, s_axis_aclk, 
  s_axis_tready, s_axis_tvalid, s_axis_tdata, m_axis_tdata, m_axis_tvalid, m_axis_tready, 
  bram_addr_Pre_Comp_Vect, bram_wrdata_Pre_Comp_Vect, bram_en_Pre_Comp_Vect, 
  bram_we_Pre_Comp_Vect, bram_addr_Kernel_Scale, bram_wrdata_Kernel_Scale, 
  bram_en_Kernel_Scale, bram_we_Kernel_Scale, bram_addr_Bias, bram_wrdata_Bias, 
  bram_en_Bias, bram_we_Bias, trig_axis_to_BRAM_PCV, trig_axis_to_BRAM_Kernel_Scale, 
  trig_axis_to_BRAM_Bias)
/* synthesis syn_black_box black_box_pad_pin="start,classification,axi_resetn,s_axis_aclk,s_axis_tready,s_axis_tvalid,s_axis_tdata[31:0],m_axis_tdata[31:0],m_axis_tvalid,m_axis_tready,bram_addr_Pre_Comp_Vect[3:0],bram_wrdata_Pre_Comp_Vect[407:0],bram_en_Pre_Comp_Vect,bram_we_Pre_Comp_Vect,bram_addr_Kernel_Scale[3:0],bram_wrdata_Kernel_Scale[11:0],bram_en_Kernel_Scale,bram_we_Kernel_Scale,bram_addr_Bias[3:0],bram_wrdata_Bias[6:0],bram_en_Bias,bram_we_Bias,trig_axis_to_BRAM_PCV,trig_axis_to_BRAM_Kernel_Scale,trig_axis_to_BRAM_Bias" */;
  input start;
  input classification;
  input axi_resetn;
  input s_axis_aclk;
  output s_axis_tready;
  input s_axis_tvalid;
  input [31:0]s_axis_tdata;
  output [31:0]m_axis_tdata;
  output m_axis_tvalid;
  input m_axis_tready;
  input [3:0]bram_addr_Pre_Comp_Vect;
  input [407:0]bram_wrdata_Pre_Comp_Vect;
  input bram_en_Pre_Comp_Vect;
  input bram_we_Pre_Comp_Vect;
  input [3:0]bram_addr_Kernel_Scale;
  input [11:0]bram_wrdata_Kernel_Scale;
  input bram_en_Kernel_Scale;
  input bram_we_Kernel_Scale;
  input [3:0]bram_addr_Bias;
  input [6:0]bram_wrdata_Bias;
  input bram_en_Bias;
  input bram_we_Bias;
  output trig_axis_to_BRAM_PCV;
  output trig_axis_to_BRAM_Kernel_Scale;
  output trig_axis_to_BRAM_Bias;
endmodule
