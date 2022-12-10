// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Nov  6 20:02:45 2022
// Host        : peppe-pc running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/yoxo/OneDrive/Documenti/work_dir/Master_Degree_Thesis/PYNQ_SVM_CLASSIFIER/PYNQ_SVM_CLASSIFIER.sim/sim_1/synth/timing/xsim/TB_axis_to_bram_PCV_time_synth.v
// Design      : axis_to_bram_Bias
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module AXIS_BRAM_mng
   (addr_ram,
    we_ram_OBUF,
    CLK,
    trig_IBUF);
  output [3:0]addr_ram;
  input we_ram_OBUF;
  input CLK;
  input trig_IBUF;

  wire CLK;
  wire [3:0]addr_ram;
  wire \count_addr[3]_i_2_n_0 ;
  wire [3:0]p_0_in;
  wire trig_IBUF;
  wire we_ram_OBUF;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_addr[0]_i_1 
       (.I0(addr_ram[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_addr[1]_i_1 
       (.I0(addr_ram[0]),
        .I1(addr_ram[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_addr[2]_i_1 
       (.I0(addr_ram[0]),
        .I1(addr_ram[1]),
        .I2(addr_ram[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_addr[3]_i_1 
       (.I0(addr_ram[1]),
        .I1(addr_ram[0]),
        .I2(addr_ram[2]),
        .I3(addr_ram[3]),
        .O(p_0_in[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \count_addr[3]_i_2 
       (.I0(trig_IBUF),
        .O(\count_addr[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_addr_reg[0] 
       (.C(CLK),
        .CE(we_ram_OBUF),
        .CLR(\count_addr[3]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(addr_ram[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_addr_reg[1] 
       (.C(CLK),
        .CE(we_ram_OBUF),
        .CLR(\count_addr[3]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(addr_ram[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_addr_reg[2] 
       (.C(CLK),
        .CE(we_ram_OBUF),
        .CLR(\count_addr[3]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(addr_ram[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_addr_reg[3] 
       (.C(CLK),
        .CE(we_ram_OBUF),
        .CLR(\count_addr[3]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(addr_ram[3]));
endmodule

module SIPO_shift_reg_w_full
   (we_ram_OBUF,
    E,
    Q,
    CLK,
    in_valid_IBUF,
    trig_IBUF,
    D);
  output we_ram_OBUF;
  output [0:0]E;
  output [6:0]Q;
  input CLK;
  input in_valid_IBUF;
  input trig_IBUF;
  input [6:0]D;

  wire CLK;
  wire [6:0]D;
  wire [0:0]E;
  wire [6:0]Q;
  wire in_valid_IBUF;
  wire trig_IBUF;
  wire we_ram_OBUF;

  FDRE #(
    .INIT(1'b0)) 
    \gen_IF_DEPTH_FF.count_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(E),
        .Q(we_ram_OBUF),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_IF_DEPTH_FF.shift_reg_reg[0][25] 
       (.C(CLK),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_IF_DEPTH_FF.shift_reg_reg[0][26] 
       (.C(CLK),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_IF_DEPTH_FF.shift_reg_reg[0][27] 
       (.C(CLK),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_IF_DEPTH_FF.shift_reg_reg[0][28] 
       (.C(CLK),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_IF_DEPTH_FF.shift_reg_reg[0][29] 
       (.C(CLK),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_IF_DEPTH_FF.shift_reg_reg[0][30] 
       (.C(CLK),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_IF_DEPTH_FF.shift_reg_reg[0][31] 
       (.C(CLK),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    in_ready_OBUF_inst_i_1
       (.I0(in_valid_IBUF),
        .I1(trig_IBUF),
        .I2(we_ram_OBUF),
        .O(E));
endmodule

(* n_in_bit = "32" *) (* n_out_bit = "7" *) 
(* NotValidForBitStream *)
module axis_to_bram_Bias
   (clk,
    trig,
    in_ready,
    in_valid,
    data_in,
    addr_ram,
    data_out,
    en_ram,
    we_ram);
  input clk;
  input trig;
  output in_ready;
  input in_valid;
  input [31:0]data_in;
  output [3:0]addr_ram;
  output [6:0]data_out;
  output en_ram;
  output we_ram;

  wire [3:0]addr_ram;
  wire [3:0]addr_ram_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [31:0]data_in;
  wire [31:25]data_in_IBUF;
  wire [6:0]data_out;
  wire [6:0]data_out_OBUF;
  wire en_ram;
  wire in_ready;
  wire in_ready_OBUF;
  wire in_valid;
  wire in_valid_IBUF;
  wire trig;
  wire trig_IBUF;
  wire we_ram;
  wire we_ram_OBUF;

initial begin
 $sdf_annotate("TB_axis_to_bram_PCV_time_synth.sdf",,,,"tool_control");
end
  AXIS_BRAM_mng MNG
       (.CLK(clk_IBUF_BUFG),
        .addr_ram(addr_ram_OBUF),
        .trig_IBUF(trig_IBUF),
        .we_ram_OBUF(we_ram_OBUF));
  SIPO_shift_reg_w_full SIPO
       (.CLK(clk_IBUF_BUFG),
        .D(data_in_IBUF),
        .E(in_ready_OBUF),
        .Q(data_out_OBUF),
        .in_valid_IBUF(in_valid_IBUF),
        .trig_IBUF(trig_IBUF),
        .we_ram_OBUF(we_ram_OBUF));
  OBUF \addr_ram_OBUF[0]_inst 
       (.I(addr_ram_OBUF[0]),
        .O(addr_ram[0]));
  OBUF \addr_ram_OBUF[1]_inst 
       (.I(addr_ram_OBUF[1]),
        .O(addr_ram[1]));
  OBUF \addr_ram_OBUF[2]_inst 
       (.I(addr_ram_OBUF[2]),
        .O(addr_ram[2]));
  OBUF \addr_ram_OBUF[3]_inst 
       (.I(addr_ram_OBUF[3]),
        .O(addr_ram[3]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF \data_in_IBUF[25]_inst 
       (.I(data_in[25]),
        .O(data_in_IBUF[25]));
  IBUF \data_in_IBUF[26]_inst 
       (.I(data_in[26]),
        .O(data_in_IBUF[26]));
  IBUF \data_in_IBUF[27]_inst 
       (.I(data_in[27]),
        .O(data_in_IBUF[27]));
  IBUF \data_in_IBUF[28]_inst 
       (.I(data_in[28]),
        .O(data_in_IBUF[28]));
  IBUF \data_in_IBUF[29]_inst 
       (.I(data_in[29]),
        .O(data_in_IBUF[29]));
  IBUF \data_in_IBUF[30]_inst 
       (.I(data_in[30]),
        .O(data_in_IBUF[30]));
  IBUF \data_in_IBUF[31]_inst 
       (.I(data_in[31]),
        .O(data_in_IBUF[31]));
  OBUF \data_out_OBUF[0]_inst 
       (.I(data_out_OBUF[0]),
        .O(data_out[0]));
  OBUF \data_out_OBUF[1]_inst 
       (.I(data_out_OBUF[1]),
        .O(data_out[1]));
  OBUF \data_out_OBUF[2]_inst 
       (.I(data_out_OBUF[2]),
        .O(data_out[2]));
  OBUF \data_out_OBUF[3]_inst 
       (.I(data_out_OBUF[3]),
        .O(data_out[3]));
  OBUF \data_out_OBUF[4]_inst 
       (.I(data_out_OBUF[4]),
        .O(data_out[4]));
  OBUF \data_out_OBUF[5]_inst 
       (.I(data_out_OBUF[5]),
        .O(data_out[5]));
  OBUF \data_out_OBUF[6]_inst 
       (.I(data_out_OBUF[6]),
        .O(data_out[6]));
  OBUF en_ram_OBUF_inst
       (.I(we_ram_OBUF),
        .O(en_ram));
  OBUF in_ready_OBUF_inst
       (.I(in_ready_OBUF),
        .O(in_ready));
  IBUF in_valid_IBUF_inst
       (.I(in_valid),
        .O(in_valid_IBUF));
  IBUF trig_IBUF_inst
       (.I(trig),
        .O(trig_IBUF));
  OBUF we_ram_OBUF_inst
       (.I(we_ram_OBUF),
        .O(we_ram));
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
