-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sat Dec  3 19:56:24 2022
-- Host        : peppe-pc running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/yoxo/OneDrive/Documenti/work_dir/Master_Degree_Thesis/Progetti_prova/TEST_CDMA/TEST_CDMA.srcs/sources_1/bd/design_TEST_CDMA/ip/design_TEST_CDMA_axi_bram_ctrl_0_bram_1/design_TEST_CDMA_axi_bram_ctrl_0_bram_1_stub.vhdl
-- Design      : design_TEST_CDMA_axi_bram_ctrl_0_bram_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_TEST_CDMA_axi_bram_ctrl_0_bram_1 is
  Port ( 
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 407 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 407 downto 0 )
  );

end design_TEST_CDMA_axi_bram_ctrl_0_bram_1;

architecture stub of design_TEST_CDMA_axi_bram_ctrl_0_bram_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clka,ena,wea[0:0],addra[3:0],dina[407:0],douta[407:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "blk_mem_gen_v8_4_2,Vivado 2018.3";
begin
end;
