// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Mar 18 14:33:43 2023
// Host        : peppe-pc running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/work/Master_Degree_Thesis/HW_SVM/HW_SVM.sim/sim_1/synth/timing/xsim/TB_Voting_w_ce_time_synth.v
// Design      : Voting_w_ce
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module dbg_hub_CV
   (clk,
    sl_iport0_o,
    sl_oport0_i);
  input clk;
  output [0:36]sl_iport0_o;
  input [0:16]sl_oport0_i;


endmodule

module u_ila_0_CV
   (clk,
    SL_IPORT_I,
    SL_OPORT_O,
    probe0,
    probe1,
    probe2,
    probe3,
    probe4,
    probe5,
    probe6);
  input clk;
  input [0:36]SL_IPORT_I;
  output [0:16]SL_OPORT_O;
  input [0:2]probe0;
  input [0:31]probe1;
  input [0:0]probe2;
  input [0:0]probe3;
  input [0:0]probe4;
  input [0:0]probe5;
  input [0:0]probe6;


endmodule

(* NotValidForBitStream *)
module Voting_w_ce
   (clk,
    rst,
    ce,
    sign_classifier,
    sign_valid,
    win_class,
    win_class_valid);
  input clk;
  input rst;
  input ce;
  input sign_classifier;
  input sign_valid;
  output [2:0]win_class;
  output win_class_valid;

  wire ce;
  wire clk;
  wire count_clk;
  wire [4:0]count_clk_reg__0;
  wire \counter[1].pm_counter_3b_i_1_n_0 ;
  wire \counter[1].pm_counter_3b_i_2_n_0 ;
  wire \counter[2].pm_counter_3b_i_1_n_0 ;
  wire \counter[2].pm_counter_3b_i_2_n_0 ;
  wire \counter[3].pm_counter_3b_i_1_n_0 ;
  wire \counter[4].pm_counter_3b_i_1_n_0 ;
  wire \counter[5].pm_counter_3b_i_1_n_0 ;
  wire \counter[5].pm_counter_3b_i_2_n_0 ;
  wire \counter[6].pm_counter_3b_i_1_n_0 ;
  wire \counter[6].pm_counter_3b_i_2_n_0 ;
  wire [2:0]foundmax;
  wire [4:0]p_0_in;
  wire [2:0]p_0_out;
  wire [2:0]p_1_out;
  wire [2:0]p_2_out;
  wire [2:0]p_3_out;
  wire [2:0]p_4_out;
  wire [2:0]p_5_out;
  wire rst;
  wire sign_classifier;
  wire sign_classifier_s_i_1_n_0;
  wire sign_classifier_s_reg_n_0;
  wire sign_valid;
  wire [0:36]sl_iport0_o_0;
  wire [0:16]sl_oport0_i_0;
  wire tick;
  wire tick_i_1_n_0;
  wire [2:0]win_class;
  wire \win_class[0]_i_1_n_0 ;
  wire \win_class[0]_i_2_n_0 ;
  wire \win_class[0]_i_3_n_0 ;
  wire \win_class[0]_i_4_n_0 ;
  wire \win_class[1]_i_1_n_0 ;
  wire \win_class[1]_i_2_n_0 ;
  wire \win_class[1]_i_3_n_0 ;
  wire \win_class[2]_i_1_n_0 ;
  wire \win_class[2]_i_2_n_0 ;
  wire \win_class[2]_i_3_n_0 ;
  wire \win_class[2]_i_4_n_0 ;
  wire \win_class[2]_i_5_n_0 ;
  wire \win_class[2]_i_6_n_0 ;
  wire \win_class[2]_i_7_n_0 ;
  wire \win_class[2]_i_8_n_0 ;
  wire win_class_valid;
  wire NLW_dbg_hub_clk_UNCONNECTED;
  wire NLW_u_ila_0_clk_UNCONNECTED;
  wire [0:2]NLW_u_ila_0_probe0_UNCONNECTED;
  wire [0:31]NLW_u_ila_0_probe1_UNCONNECTED;
  wire [0:0]NLW_u_ila_0_probe2_UNCONNECTED;
  wire [0:0]NLW_u_ila_0_probe3_UNCONNECTED;
  wire [0:0]NLW_u_ila_0_probe4_UNCONNECTED;
  wire [0:0]NLW_u_ila_0_probe5_UNCONNECTED;
  wire [0:0]NLW_u_ila_0_probe6_UNCONNECTED;

initial begin
 $sdf_annotate("TB_Voting_w_ce_time_synth.sdf",,,,"tool_control");
end
  LUT1 #(
    .INIT(2'h1)) 
    \count_clk[0]_i_1 
       (.I0(count_clk_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_clk[1]_i_1 
       (.I0(count_clk_reg__0[0]),
        .I1(count_clk_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_clk[2]_i_1 
       (.I0(count_clk_reg__0[1]),
        .I1(count_clk_reg__0[0]),
        .I2(count_clk_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_clk[3]_i_1 
       (.I0(count_clk_reg__0[2]),
        .I1(count_clk_reg__0[0]),
        .I2(count_clk_reg__0[1]),
        .I3(count_clk_reg__0[3]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'hFFFF000080000000)) 
    \count_clk[4]_i_1 
       (.I0(count_clk_reg__0[1]),
        .I1(count_clk_reg__0[0]),
        .I2(count_clk_reg__0[2]),
        .I3(\counter[2].pm_counter_3b_i_2_n_0 ),
        .I4(ce),
        .I5(sign_valid),
        .O(count_clk));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h6CCCCCCC)) 
    \count_clk[4]_i_2 
       (.I0(count_clk_reg__0[3]),
        .I1(count_clk_reg__0[4]),
        .I2(count_clk_reg__0[1]),
        .I3(count_clk_reg__0[0]),
        .I4(count_clk_reg__0[2]),
        .O(p_0_in[4]));
  FDCE #(
    .INIT(1'b0)) 
    \count_clk_reg[0] 
       (.C(clk),
        .CE(count_clk),
        .CLR(rst),
        .D(p_0_in[0]),
        .Q(count_clk_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_clk_reg[1] 
       (.C(clk),
        .CE(count_clk),
        .CLR(rst),
        .D(p_0_in[1]),
        .Q(count_clk_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_clk_reg[2] 
       (.C(clk),
        .CE(count_clk),
        .CLR(rst),
        .D(p_0_in[2]),
        .Q(count_clk_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_clk_reg[3] 
       (.C(clk),
        .CE(count_clk),
        .CLR(rst),
        .D(p_0_in[3]),
        .Q(count_clk_reg__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \count_clk_reg[4] 
       (.C(clk),
        .CE(count_clk),
        .CLR(rst),
        .D(p_0_in[4]),
        .Q(count_clk_reg__0[4]));
  counter_3b__1 \counter[1].pm_counter_3b 
       (.ce(\counter[1].pm_counter_3b_i_1_n_0 ),
        .clk(clk),
        .out_count(p_5_out),
        .rst(rst));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h000C0C08)) 
    \counter[1].pm_counter_3b_i_1 
       (.I0(count_clk_reg__0[0]),
        .I1(\counter[1].pm_counter_3b_i_2_n_0 ),
        .I2(sign_classifier_s_reg_n_0),
        .I3(count_clk_reg__0[2]),
        .I4(count_clk_reg__0[1]),
        .O(\counter[1].pm_counter_3b_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \counter[1].pm_counter_3b_i_2 
       (.I0(count_clk_reg__0[3]),
        .I1(tick),
        .I2(count_clk_reg__0[4]),
        .O(\counter[1].pm_counter_3b_i_2_n_0 ));
  counter_3b__2 \counter[2].pm_counter_3b 
       (.ce(\counter[2].pm_counter_3b_i_1_n_0 ),
        .clk(clk),
        .out_count(p_4_out),
        .rst(rst));
  LUT6 #(
    .INIT(64'h0A4500050A400000)) 
    \counter[2].pm_counter_3b_i_1 
       (.I0(count_clk_reg__0[1]),
        .I1(count_clk_reg__0[0]),
        .I2(sign_classifier_s_reg_n_0),
        .I3(count_clk_reg__0[2]),
        .I4(\counter[1].pm_counter_3b_i_2_n_0 ),
        .I5(\counter[2].pm_counter_3b_i_2_n_0 ),
        .O(\counter[2].pm_counter_3b_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[2].pm_counter_3b_i_2 
       (.I0(count_clk_reg__0[3]),
        .I1(count_clk_reg__0[4]),
        .O(\counter[2].pm_counter_3b_i_2_n_0 ));
  counter_3b__3 \counter[3].pm_counter_3b 
       (.ce(\counter[3].pm_counter_3b_i_1_n_0 ),
        .clk(clk),
        .out_count(p_3_out),
        .rst(rst));
  LUT6 #(
    .INIT(64'h09014C4408000800)) 
    \counter[3].pm_counter_3b_i_1 
       (.I0(sign_classifier_s_reg_n_0),
        .I1(count_clk_reg__0[1]),
        .I2(count_clk_reg__0[0]),
        .I3(\counter[1].pm_counter_3b_i_2_n_0 ),
        .I4(count_clk_reg__0[2]),
        .I5(\counter[2].pm_counter_3b_i_2_n_0 ),
        .O(\counter[3].pm_counter_3b_i_1_n_0 ));
  counter_3b__4 \counter[4].pm_counter_3b 
       (.ce(\counter[4].pm_counter_3b_i_1_n_0 ),
        .clk(clk),
        .out_count(p_2_out),
        .rst(rst));
  LUT6 #(
    .INIT(64'h88303C0088000000)) 
    \counter[4].pm_counter_3b_i_1 
       (.I0(\counter[1].pm_counter_3b_i_2_n_0 ),
        .I1(sign_classifier_s_reg_n_0),
        .I2(count_clk_reg__0[2]),
        .I3(count_clk_reg__0[1]),
        .I4(count_clk_reg__0[0]),
        .I5(\counter[2].pm_counter_3b_i_2_n_0 ),
        .O(\counter[4].pm_counter_3b_i_1_n_0 ));
  counter_3b__5 \counter[5].pm_counter_3b 
       (.ce(\counter[5].pm_counter_3b_i_1_n_0 ),
        .clk(clk),
        .out_count(p_1_out),
        .rst(rst));
  LUT6 #(
    .INIT(64'h448800F088000000)) 
    \counter[5].pm_counter_3b_i_1 
       (.I0(count_clk_reg__0[2]),
        .I1(\counter[2].pm_counter_3b_i_2_n_0 ),
        .I2(\counter[5].pm_counter_3b_i_2_n_0 ),
        .I3(count_clk_reg__0[1]),
        .I4(count_clk_reg__0[0]),
        .I5(sign_classifier_s_reg_n_0),
        .O(\counter[5].pm_counter_3b_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0038)) 
    \counter[5].pm_counter_3b_i_2 
       (.I0(tick),
        .I1(count_clk_reg__0[2]),
        .I2(count_clk_reg__0[3]),
        .I3(count_clk_reg__0[4]),
        .O(\counter[5].pm_counter_3b_i_2_n_0 ));
  counter_3b \counter[6].pm_counter_3b 
       (.ce(\counter[6].pm_counter_3b_i_1_n_0 ),
        .clk(clk),
        .out_count(p_0_out),
        .rst(rst));
  LUT6 #(
    .INIT(64'h00C0000000380000)) 
    \counter[6].pm_counter_3b_i_1 
       (.I0(tick),
        .I1(count_clk_reg__0[2]),
        .I2(count_clk_reg__0[3]),
        .I3(count_clk_reg__0[4]),
        .I4(sign_classifier_s_reg_n_0),
        .I5(\counter[6].pm_counter_3b_i_2_n_0 ),
        .O(\counter[6].pm_counter_3b_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \counter[6].pm_counter_3b_i_2 
       (.I0(count_clk_reg__0[1]),
        .I1(count_clk_reg__0[0]),
        .O(\counter[6].pm_counter_3b_i_2_n_0 ));
  (* DEBUG_PORT_clk = "" *) 
  (* IS_DEBUG_CORE *) 
  dbg_hub_CV dbg_hub
       (.clk(NLW_dbg_hub_clk_UNCONNECTED),
        .sl_iport0_o(sl_iport0_o_0),
        .sl_oport0_i(sl_oport0_i_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    sign_classifier_s_i_1
       (.I0(sign_classifier),
        .I1(ce),
        .I2(sign_valid),
        .I3(sign_classifier_s_reg_n_0),
        .O(sign_classifier_s_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    sign_classifier_s_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(sign_classifier_s_i_1_n_0),
        .Q(sign_classifier_s_reg_n_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    tick_i_1
       (.I0(sign_valid),
        .I1(ce),
        .I2(rst),
        .I3(tick),
        .O(tick_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tick_reg
       (.C(clk),
        .CE(1'b1),
        .D(tick_i_1_n_0),
        .Q(tick),
        .R(1'b0));
  (* DEBUG_PORT_clk = "" *) 
  (* DEBUG_PORT_probe0 = "" *) 
  (* DEBUG_PORT_probe1 = "" *) 
  (* DEBUG_PORT_probe2 = "" *) 
  (* DEBUG_PORT_probe3 = "" *) 
  (* DEBUG_PORT_probe4 = "" *) 
  (* DEBUG_PORT_probe5 = "" *) 
  (* DEBUG_PORT_probe6 = "" *) 
  (* IS_DEBUG_CORE *) 
  u_ila_0_CV u_ila_0
       (.SL_IPORT_I(sl_iport0_o_0),
        .SL_OPORT_O(sl_oport0_i_0),
        .clk(NLW_u_ila_0_clk_UNCONNECTED),
        .probe0(NLW_u_ila_0_probe0_UNCONNECTED[0:2]),
        .probe1(NLW_u_ila_0_probe1_UNCONNECTED[0:31]),
        .probe2(NLW_u_ila_0_probe2_UNCONNECTED[0]),
        .probe3(NLW_u_ila_0_probe3_UNCONNECTED[0]),
        .probe4(NLW_u_ila_0_probe4_UNCONNECTED[0]),
        .probe5(NLW_u_ila_0_probe5_UNCONNECTED[0]),
        .probe6(NLW_u_ila_0_probe6_UNCONNECTED[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h55541110)) 
    \win_class[0]_i_1 
       (.I0(\win_class[2]_i_5_n_0 ),
        .I1(\win_class[2]_i_3_n_0 ),
        .I2(\win_class[2]_i_4_n_0 ),
        .I3(\win_class[0]_i_2_n_0 ),
        .I4(\win_class[0]_i_3_n_0 ),
        .O(\win_class[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBBB8)) 
    \win_class[0]_i_2 
       (.I0(\win_class[0]_i_4_n_0 ),
        .I1(\win_class[1]_i_2_n_0 ),
        .I2(\win_class[1]_i_3_n_0 ),
        .I3(p_5_out[2]),
        .I4(p_5_out[0]),
        .I5(p_5_out[1]),
        .O(\win_class[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22B222B2B2BB22B2)) 
    \win_class[0]_i_3 
       (.I0(p_1_out[2]),
        .I1(p_2_out[2]),
        .I2(p_1_out[1]),
        .I3(p_2_out[1]),
        .I4(p_1_out[0]),
        .I5(p_2_out[0]),
        .O(\win_class[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h22B222B2B2BB22B2)) 
    \win_class[0]_i_4 
       (.I0(p_3_out[2]),
        .I1(p_4_out[2]),
        .I2(p_3_out[1]),
        .I3(p_4_out[1]),
        .I4(p_3_out[0]),
        .I5(p_4_out[0]),
        .O(\win_class[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hABABABAA)) 
    \win_class[1]_i_1 
       (.I0(\win_class[2]_i_5_n_0 ),
        .I1(\win_class[2]_i_3_n_0 ),
        .I2(\win_class[2]_i_4_n_0 ),
        .I3(\win_class[1]_i_2_n_0 ),
        .I4(\win_class[1]_i_3_n_0 ),
        .O(\win_class[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2BBB222B2B2B2222)) 
    \win_class[1]_i_2 
       (.I0(p_4_out[2]),
        .I1(p_5_out[2]),
        .I2(p_5_out[1]),
        .I3(p_5_out[0]),
        .I4(p_4_out[1]),
        .I5(p_4_out[0]),
        .O(\win_class[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2BBB222B2B2B2222)) 
    \win_class[1]_i_3 
       (.I0(p_3_out[2]),
        .I1(p_5_out[2]),
        .I2(p_5_out[1]),
        .I3(p_5_out[0]),
        .I4(p_3_out[1]),
        .I5(p_3_out[0]),
        .O(\win_class[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \win_class[2]_i_1 
       (.I0(count_clk_reg__0[2]),
        .I1(count_clk_reg__0[3]),
        .I2(count_clk_reg__0[0]),
        .I3(count_clk_reg__0[1]),
        .I4(ce),
        .I5(count_clk_reg__0[4]),
        .O(\win_class[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEF40EF4FEF40E040)) 
    \win_class[2]_i_10 
       (.I0(\win_class[0]_i_3_n_0 ),
        .I1(p_2_out[1]),
        .I2(\win_class[2]_i_3_n_0 ),
        .I3(p_1_out[1]),
        .I4(\win_class[2]_i_4_n_0 ),
        .I5(\win_class[2]_i_7_n_0 ),
        .O(foundmax[1]));
  LUT6 #(
    .INIT(64'hEF40EF4FEF40E040)) 
    \win_class[2]_i_11 
       (.I0(\win_class[0]_i_3_n_0 ),
        .I1(p_2_out[0]),
        .I2(\win_class[2]_i_3_n_0 ),
        .I3(p_1_out[0]),
        .I4(\win_class[2]_i_4_n_0 ),
        .I5(\win_class[2]_i_8_n_0 ),
        .O(foundmax[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \win_class[2]_i_2 
       (.I0(\win_class[2]_i_3_n_0 ),
        .I1(\win_class[2]_i_4_n_0 ),
        .I2(\win_class[2]_i_5_n_0 ),
        .O(\win_class[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22B222B2B2BB22B2)) 
    \win_class[2]_i_3 
       (.I0(p_2_out[2]),
        .I1(\win_class[2]_i_6_n_0 ),
        .I2(p_2_out[1]),
        .I3(\win_class[2]_i_7_n_0 ),
        .I4(p_2_out[0]),
        .I5(\win_class[2]_i_8_n_0 ),
        .O(\win_class[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h22B222B2B2BB22B2)) 
    \win_class[2]_i_4 
       (.I0(p_1_out[2]),
        .I1(\win_class[2]_i_6_n_0 ),
        .I2(p_1_out[1]),
        .I3(\win_class[2]_i_7_n_0 ),
        .I4(p_1_out[0]),
        .I5(\win_class[2]_i_8_n_0 ),
        .O(\win_class[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h22B222B2B2BB22B2)) 
    \win_class[2]_i_5 
       (.I0(p_0_out[2]),
        .I1(foundmax[2]),
        .I2(p_0_out[1]),
        .I3(foundmax[1]),
        .I4(p_0_out[0]),
        .I5(foundmax[0]),
        .O(\win_class[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFCFF3000FCAA30AA)) 
    \win_class[2]_i_6 
       (.I0(p_5_out[2]),
        .I1(\win_class[0]_i_4_n_0 ),
        .I2(p_4_out[2]),
        .I3(\win_class[1]_i_2_n_0 ),
        .I4(p_3_out[2]),
        .I5(\win_class[1]_i_3_n_0 ),
        .O(\win_class[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFCFF3000FCAA30AA)) 
    \win_class[2]_i_7 
       (.I0(p_5_out[1]),
        .I1(\win_class[0]_i_4_n_0 ),
        .I2(p_4_out[1]),
        .I3(\win_class[1]_i_2_n_0 ),
        .I4(p_3_out[1]),
        .I5(\win_class[1]_i_3_n_0 ),
        .O(\win_class[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFCFF3000FCAA30AA)) 
    \win_class[2]_i_8 
       (.I0(p_5_out[0]),
        .I1(\win_class[0]_i_4_n_0 ),
        .I2(p_4_out[0]),
        .I3(\win_class[1]_i_2_n_0 ),
        .I4(p_3_out[0]),
        .I5(\win_class[1]_i_3_n_0 ),
        .O(\win_class[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEF40EF4FEF40E040)) 
    \win_class[2]_i_9 
       (.I0(\win_class[0]_i_3_n_0 ),
        .I1(p_2_out[2]),
        .I2(\win_class[2]_i_3_n_0 ),
        .I3(p_1_out[2]),
        .I4(\win_class[2]_i_4_n_0 ),
        .I5(\win_class[2]_i_6_n_0 ),
        .O(foundmax[2]));
  FDCE #(
    .INIT(1'b0)) 
    \win_class_reg[0] 
       (.C(clk),
        .CE(\win_class[2]_i_1_n_0 ),
        .CLR(rst),
        .D(\win_class[0]_i_1_n_0 ),
        .Q(win_class[0]));
  FDCE #(
    .INIT(1'b0)) 
    \win_class_reg[1] 
       (.C(clk),
        .CE(\win_class[2]_i_1_n_0 ),
        .CLR(rst),
        .D(\win_class[1]_i_1_n_0 ),
        .Q(win_class[1]));
  FDCE #(
    .INIT(1'b0)) 
    \win_class_reg[2] 
       (.C(clk),
        .CE(\win_class[2]_i_1_n_0 ),
        .CLR(rst),
        .D(\win_class[2]_i_2_n_0 ),
        .Q(win_class[2]));
  FDCE #(
    .INIT(1'b0)) 
    win_class_valid_reg
       (.C(clk),
        .CE(\win_class[2]_i_1_n_0 ),
        .CLR(rst),
        .D(ce),
        .Q(win_class_valid));
endmodule

module counter_3b
   (clk,
    ce,
    rst,
    out_count);
  input clk;
  input ce;
  input rst;
  output [2:0]out_count;

  wire ce;
  wire clk;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire [2:0]out_count;
  wire rst;

  LUT2 #(
    .INIT(4'h6)) 
    \count[0]_i_1 
       (.I0(ce),
        .I1(out_count[0]),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[1]_i_1 
       (.I0(out_count[0]),
        .I1(ce),
        .I2(out_count[1]),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[2]_i_1 
       (.I0(out_count[0]),
        .I1(out_count[1]),
        .I2(ce),
        .I3(out_count[2]),
        .O(\count[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(out_count[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\count[1]_i_1_n_0 ),
        .Q(out_count[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\count[2]_i_1_n_0 ),
        .Q(out_count[2]),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "counter_3b" *) 
module counter_3b__1
   (clk,
    ce,
    rst,
    out_count);
  input clk;
  input ce;
  input rst;
  output [2:0]out_count;

  wire ce;
  wire clk;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire [2:0]out_count;
  wire rst;

  LUT2 #(
    .INIT(4'h6)) 
    \count[0]_i_1 
       (.I0(ce),
        .I1(out_count[0]),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[1]_i_1 
       (.I0(out_count[0]),
        .I1(ce),
        .I2(out_count[1]),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[2]_i_1 
       (.I0(out_count[0]),
        .I1(out_count[1]),
        .I2(ce),
        .I3(out_count[2]),
        .O(\count[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(out_count[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\count[1]_i_1_n_0 ),
        .Q(out_count[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\count[2]_i_1_n_0 ),
        .Q(out_count[2]),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "counter_3b" *) 
module counter_3b__2
   (clk,
    ce,
    rst,
    out_count);
  input clk;
  input ce;
  input rst;
  output [2:0]out_count;

  wire ce;
  wire clk;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire [2:0]out_count;
  wire rst;

  LUT2 #(
    .INIT(4'h6)) 
    \count[0]_i_1 
       (.I0(ce),
        .I1(out_count[0]),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[1]_i_1 
       (.I0(out_count[0]),
        .I1(ce),
        .I2(out_count[1]),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[2]_i_1 
       (.I0(out_count[0]),
        .I1(out_count[1]),
        .I2(ce),
        .I3(out_count[2]),
        .O(\count[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(out_count[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\count[1]_i_1_n_0 ),
        .Q(out_count[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\count[2]_i_1_n_0 ),
        .Q(out_count[2]),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "counter_3b" *) 
module counter_3b__3
   (clk,
    ce,
    rst,
    out_count);
  input clk;
  input ce;
  input rst;
  output [2:0]out_count;

  wire ce;
  wire clk;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire [2:0]out_count;
  wire rst;

  LUT2 #(
    .INIT(4'h6)) 
    \count[0]_i_1 
       (.I0(ce),
        .I1(out_count[0]),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[1]_i_1 
       (.I0(out_count[0]),
        .I1(ce),
        .I2(out_count[1]),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[2]_i_1 
       (.I0(out_count[0]),
        .I1(out_count[1]),
        .I2(ce),
        .I3(out_count[2]),
        .O(\count[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(out_count[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\count[1]_i_1_n_0 ),
        .Q(out_count[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\count[2]_i_1_n_0 ),
        .Q(out_count[2]),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "counter_3b" *) 
module counter_3b__4
   (clk,
    ce,
    rst,
    out_count);
  input clk;
  input ce;
  input rst;
  output [2:0]out_count;

  wire ce;
  wire clk;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire [2:0]out_count;
  wire rst;

  LUT2 #(
    .INIT(4'h6)) 
    \count[0]_i_1 
       (.I0(ce),
        .I1(out_count[0]),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[1]_i_1 
       (.I0(out_count[0]),
        .I1(ce),
        .I2(out_count[1]),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[2]_i_1 
       (.I0(out_count[0]),
        .I1(out_count[1]),
        .I2(ce),
        .I3(out_count[2]),
        .O(\count[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(out_count[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\count[1]_i_1_n_0 ),
        .Q(out_count[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\count[2]_i_1_n_0 ),
        .Q(out_count[2]),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "counter_3b" *) 
module counter_3b__5
   (clk,
    ce,
    rst,
    out_count);
  input clk;
  input ce;
  input rst;
  output [2:0]out_count;

  wire ce;
  wire clk;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire [2:0]out_count;
  wire rst;

  LUT2 #(
    .INIT(4'h6)) 
    \count[0]_i_1 
       (.I0(ce),
        .I1(out_count[0]),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[1]_i_1 
       (.I0(out_count[0]),
        .I1(ce),
        .I2(out_count[1]),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[2]_i_1 
       (.I0(out_count[0]),
        .I1(out_count[1]),
        .I2(ce),
        .I3(out_count[2]),
        .O(\count[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(out_count[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\count[1]_i_1_n_0 ),
        .Q(out_count[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\count[2]_i_1_n_0 ),
        .Q(out_count[2]),
        .R(rst));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
