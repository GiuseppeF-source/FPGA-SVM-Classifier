// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Mar 18 16:38:29 2023
// Host        : peppe-pc running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ hw_svm_axis_to_bram_Bias_0_0_stub.v
// Design      : hw_svm_axis_to_bram_Bias_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "axis_to_bram_Bias,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, trig, s_axis_tready, s_axis_tvalid, 
  s_axis_tdata, addr_ram, data_out, en_ram, we_ram)
/* synthesis syn_black_box black_box_pad_pin="clk,trig,s_axis_tready,s_axis_tvalid,s_axis_tdata[31:0],addr_ram[3:0],data_out[6:0],en_ram,we_ram" */;
  input clk;
  input trig;
  output s_axis_tready;
  input s_axis_tvalid;
  input [31:0]s_axis_tdata;
  output [3:0]addr_ram;
  output [6:0]data_out;
  output en_ram;
  output we_ram;
endmodule
