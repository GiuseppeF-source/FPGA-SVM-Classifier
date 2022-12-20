-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Dec 20 21:22:38 2022
-- Host        : peppe-pc running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/work/Master_Degree_Thesis/HW_SVM/HW_SVM.srcs/sources_1/bd/hw_svm/ip/hw_svm_axis_to_bram_PCV_0_0/hw_svm_axis_to_bram_PCV_0_0_stub.vhdl
-- Design      : hw_svm_axis_to_bram_PCV_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity hw_svm_axis_to_bram_PCV_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    trig : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    addr_ram : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 407 downto 0 );
    en_ram : out STD_LOGIC;
    we_ram : out STD_LOGIC
  );

end hw_svm_axis_to_bram_PCV_0_0;

architecture stub of hw_svm_axis_to_bram_PCV_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,trig,s_axis_tready,s_axis_tvalid,s_axis_tdata[31:0],addr_ram[3:0],data_out[407:0],en_ram,we_ram";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "axis_to_bram_PCV,Vivado 2018.3";
begin
end;
