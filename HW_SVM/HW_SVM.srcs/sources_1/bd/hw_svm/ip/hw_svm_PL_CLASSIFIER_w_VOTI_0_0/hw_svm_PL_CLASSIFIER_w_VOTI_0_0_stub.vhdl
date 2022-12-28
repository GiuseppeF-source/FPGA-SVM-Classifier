-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Wed Dec 28 19:19:36 2022
-- Host        : peppe-pc running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/work/Master_Degree_Thesis/HW_SVM/HW_SVM.srcs/sources_1/bd/hw_svm/ip/hw_svm_PL_CLASSIFIER_w_VOTI_0_0/hw_svm_PL_CLASSIFIER_w_VOTI_0_0_stub.vhdl
-- Design      : hw_svm_PL_CLASSIFIER_w_VOTI_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity hw_svm_PL_CLASSIFIER_w_VOTI_0_0 is
  Port ( 
    start : in STD_LOGIC;
    classification : in STD_LOGIC;
    axi_resetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    bram_addr_Pre_Comp_Vect : in STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_wrdata_Pre_Comp_Vect : in STD_LOGIC_VECTOR ( 407 downto 0 );
    bram_en_Pre_Comp_Vect : in STD_LOGIC;
    bram_we_Pre_Comp_Vect : in STD_LOGIC;
    bram_addr_Kernel_Scale : in STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_wrdata_Kernel_Scale : in STD_LOGIC_VECTOR ( 11 downto 0 );
    bram_en_Kernel_Scale : in STD_LOGIC;
    bram_we_Kernel_Scale : in STD_LOGIC;
    bram_addr_Bias : in STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_wrdata_Bias : in STD_LOGIC_VECTOR ( 6 downto 0 );
    bram_en_Bias : in STD_LOGIC;
    bram_we_Bias : in STD_LOGIC;
    trig_axis_to_BRAM_PCV : out STD_LOGIC;
    trig_axis_to_BRAM_Kernel_Scale : out STD_LOGIC;
    trig_axis_to_BRAM_Bias : out STD_LOGIC
  );

end hw_svm_PL_CLASSIFIER_w_VOTI_0_0;

architecture stub of hw_svm_PL_CLASSIFIER_w_VOTI_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "start,classification,axi_resetn,s_axis_aclk,s_axis_tready,s_axis_tvalid,s_axis_tdata[31:0],m_axis_tdata[31:0],m_axis_tvalid,m_axis_tready,bram_addr_Pre_Comp_Vect[3:0],bram_wrdata_Pre_Comp_Vect[407:0],bram_en_Pre_Comp_Vect,bram_we_Pre_Comp_Vect,bram_addr_Kernel_Scale[3:0],bram_wrdata_Kernel_Scale[11:0],bram_en_Kernel_Scale,bram_we_Kernel_Scale,bram_addr_Bias[3:0],bram_wrdata_Bias[6:0],bram_en_Bias,bram_we_Bias,trig_axis_to_BRAM_PCV,trig_axis_to_BRAM_Kernel_Scale,trig_axis_to_BRAM_Bias";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "PL_CLASSIFIER_w_VOTING,Vivado 2018.3";
begin
end;
