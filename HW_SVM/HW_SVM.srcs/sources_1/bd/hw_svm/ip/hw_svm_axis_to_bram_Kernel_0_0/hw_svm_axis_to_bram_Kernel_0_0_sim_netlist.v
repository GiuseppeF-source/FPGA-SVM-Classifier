// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Dec 20 21:24:31 2022
// Host        : peppe-pc running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/work/Master_Degree_Thesis/HW_SVM/HW_SVM.srcs/sources_1/bd/hw_svm/ip/hw_svm_axis_to_bram_Kernel_0_0/hw_svm_axis_to_bram_Kernel_0_0_sim_netlist.v
// Design      : hw_svm_axis_to_bram_Kernel_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "hw_svm_axis_to_bram_Kernel_0_0,axis_to_bram_Kernel,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "axis_to_bram_Kernel,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module hw_svm_axis_to_bram_Kernel_0_0
   (clk,
    trig,
    s_axis_tready,
    s_axis_tvalid,
    s_axis_tdata,
    addr_ram,
    data_out,
    en_ram,
    we_ram);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis, FREQ_HZ 30303030, PHASE 0.000, CLK_DOMAIN hw_svm_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  input trig;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 30303030, PHASE 0.000, CLK_DOMAIN hw_svm_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [31:0]s_axis_tdata;
  output [3:0]addr_ram;
  output [11:0]data_out;
  output en_ram;
  output we_ram;

  wire [3:0]addr_ram;
  wire clk;
  wire [11:0]data_out;
  wire en_ram;
  wire [31:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire trig;

  assign we_ram = en_ram;
  hw_svm_axis_to_bram_Kernel_0_0_axis_to_bram_Kernel U0
       (.E(s_axis_tready),
        .addr_ram(addr_ram),
        .clk(clk),
        .data_out(data_out),
        .\gen_IF_DEPTH_FF.count_reg[0] (en_ram),
        .s_axis_tdata(s_axis_tdata[31:20]),
        .s_axis_tvalid(s_axis_tvalid),
        .trig(trig));
endmodule

(* ORIG_REF_NAME = "AXIS_BRAM_mng" *) 
module hw_svm_axis_to_bram_Kernel_0_0_AXIS_BRAM_mng
   (addr_ram,
    \count_addr_reg[3]_0 ,
    clk,
    trig);
  output [3:0]addr_ram;
  input \count_addr_reg[3]_0 ;
  input clk;
  input trig;

  wire [3:0]addr_ram;
  wire clk;
  wire \count_addr[3]_i_2_n_0 ;
  wire \count_addr_reg[3]_0 ;
  wire [3:0]p_0_in;
  wire trig;

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
       (.I0(trig),
        .O(\count_addr[3]_i_2_n_0 ));
  FDCE \count_addr_reg[0] 
       (.C(clk),
        .CE(\count_addr_reg[3]_0 ),
        .CLR(\count_addr[3]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(addr_ram[0]));
  FDCE \count_addr_reg[1] 
       (.C(clk),
        .CE(\count_addr_reg[3]_0 ),
        .CLR(\count_addr[3]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(addr_ram[1]));
  FDCE \count_addr_reg[2] 
       (.C(clk),
        .CE(\count_addr_reg[3]_0 ),
        .CLR(\count_addr[3]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(addr_ram[2]));
  FDCE \count_addr_reg[3] 
       (.C(clk),
        .CE(\count_addr_reg[3]_0 ),
        .CLR(\count_addr[3]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(addr_ram[3]));
endmodule

(* ORIG_REF_NAME = "SIPO_shift_reg_w_full" *) 
module hw_svm_axis_to_bram_Kernel_0_0_SIPO_shift_reg_w_full
   (\gen_IF_DEPTH_FF.count_reg[0]_0 ,
    E,
    data_out,
    clk,
    s_axis_tvalid,
    trig,
    s_axis_tdata);
  output \gen_IF_DEPTH_FF.count_reg[0]_0 ;
  output [0:0]E;
  output [11:0]data_out;
  input clk;
  input s_axis_tvalid;
  input trig;
  input [11:0]s_axis_tdata;

  wire [0:0]E;
  wire clk;
  wire [11:0]data_out;
  wire \gen_IF_DEPTH_FF.count_reg[0]_0 ;
  wire [11:0]s_axis_tdata;
  wire s_axis_tvalid;
  wire trig;

  FDRE #(
    .INIT(1'b0)) 
    \gen_IF_DEPTH_FF.count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(E),
        .Q(\gen_IF_DEPTH_FF.count_reg[0]_0 ),
        .R(1'b0));
  FDRE \gen_IF_DEPTH_FF.shift_reg_reg[0][20] 
       (.C(clk),
        .CE(E),
        .D(s_axis_tdata[0]),
        .Q(data_out[0]),
        .R(1'b0));
  FDRE \gen_IF_DEPTH_FF.shift_reg_reg[0][21] 
       (.C(clk),
        .CE(E),
        .D(s_axis_tdata[1]),
        .Q(data_out[1]),
        .R(1'b0));
  FDRE \gen_IF_DEPTH_FF.shift_reg_reg[0][22] 
       (.C(clk),
        .CE(E),
        .D(s_axis_tdata[2]),
        .Q(data_out[2]),
        .R(1'b0));
  FDRE \gen_IF_DEPTH_FF.shift_reg_reg[0][23] 
       (.C(clk),
        .CE(E),
        .D(s_axis_tdata[3]),
        .Q(data_out[3]),
        .R(1'b0));
  FDRE \gen_IF_DEPTH_FF.shift_reg_reg[0][24] 
       (.C(clk),
        .CE(E),
        .D(s_axis_tdata[4]),
        .Q(data_out[4]),
        .R(1'b0));
  FDRE \gen_IF_DEPTH_FF.shift_reg_reg[0][25] 
       (.C(clk),
        .CE(E),
        .D(s_axis_tdata[5]),
        .Q(data_out[5]),
        .R(1'b0));
  FDRE \gen_IF_DEPTH_FF.shift_reg_reg[0][26] 
       (.C(clk),
        .CE(E),
        .D(s_axis_tdata[6]),
        .Q(data_out[6]),
        .R(1'b0));
  FDRE \gen_IF_DEPTH_FF.shift_reg_reg[0][27] 
       (.C(clk),
        .CE(E),
        .D(s_axis_tdata[7]),
        .Q(data_out[7]),
        .R(1'b0));
  FDRE \gen_IF_DEPTH_FF.shift_reg_reg[0][28] 
       (.C(clk),
        .CE(E),
        .D(s_axis_tdata[8]),
        .Q(data_out[8]),
        .R(1'b0));
  FDRE \gen_IF_DEPTH_FF.shift_reg_reg[0][29] 
       (.C(clk),
        .CE(E),
        .D(s_axis_tdata[9]),
        .Q(data_out[9]),
        .R(1'b0));
  FDRE \gen_IF_DEPTH_FF.shift_reg_reg[0][30] 
       (.C(clk),
        .CE(E),
        .D(s_axis_tdata[10]),
        .Q(data_out[10]),
        .R(1'b0));
  FDRE \gen_IF_DEPTH_FF.shift_reg_reg[0][31] 
       (.C(clk),
        .CE(E),
        .D(s_axis_tdata[11]),
        .Q(data_out[11]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    s_axis_tready_INST_0
       (.I0(s_axis_tvalid),
        .I1(trig),
        .I2(\gen_IF_DEPTH_FF.count_reg[0]_0 ),
        .O(E));
endmodule

(* ORIG_REF_NAME = "axis_to_bram_Kernel" *) 
module hw_svm_axis_to_bram_Kernel_0_0_axis_to_bram_Kernel
   (data_out,
    E,
    addr_ram,
    \gen_IF_DEPTH_FF.count_reg[0] ,
    s_axis_tdata,
    clk,
    trig,
    s_axis_tvalid);
  output [11:0]data_out;
  output [0:0]E;
  output [3:0]addr_ram;
  output \gen_IF_DEPTH_FF.count_reg[0] ;
  input [11:0]s_axis_tdata;
  input clk;
  input trig;
  input s_axis_tvalid;

  wire [0:0]E;
  wire [3:0]addr_ram;
  wire clk;
  wire [11:0]data_out;
  wire \gen_IF_DEPTH_FF.count_reg[0] ;
  wire [11:0]s_axis_tdata;
  wire s_axis_tvalid;
  wire trig;

  hw_svm_axis_to_bram_Kernel_0_0_AXIS_BRAM_mng MNG
       (.addr_ram(addr_ram),
        .clk(clk),
        .\count_addr_reg[3]_0 (\gen_IF_DEPTH_FF.count_reg[0] ),
        .trig(trig));
  hw_svm_axis_to_bram_Kernel_0_0_SIPO_shift_reg_w_full SIPO
       (.E(E),
        .clk(clk),
        .data_out(data_out),
        .\gen_IF_DEPTH_FF.count_reg[0]_0 (\gen_IF_DEPTH_FF.count_reg[0] ),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tvalid(s_axis_tvalid),
        .trig(trig));
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
