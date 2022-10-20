vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/interrupt_control_v3_1_4
vlib modelsim_lib/msim/axi_gpio_v2_0_20

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_4 modelsim_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_20 modelsim_lib/msim/axi_gpio_v2_0_20

vlog -work xilinx_vip -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../PYNQ_SVM_CLASSIFIER.srcs/sources_1/bd/embedded_system/ipshared/ec67/hdl" "+incdir+../../../../PYNQ_SVM_CLASSIFIER.srcs/sources_1/bd/embedded_system/ipshared/70cf/hdl" "+incdir+../../../../PYNQ_SVM_CLASSIFIER.srcs/sources_1/bd/embedded_system/ip/embedded_system_processing_system7_0_0" "+incdir+../../../../PYNQ_SVM_CLASSIFIER.srcs/sources_1/bd/embedded_system/ipshared/979d/hdl/verilog" "+incdir+../../../../PYNQ_SVM_CLASSIFIER.srcs/sources_1/bd/embedded_system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../PYNQ_SVM_CLASSIFIER.srcs/sources_1/bd/embedded_system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../PYNQ_SVM_CLASSIFIER.srcs/sources_1/bd/embedded_system/ipshared/122e/hdl/verilog" "+incdir+../../../../PYNQ_SVM_CLASSIFIER.srcs/sources_1/bd/embedded_system/ipshared/7d3c/hdl/verilog" "+incdir+../../../../PYNQ_SVM_CLASSIFIER.srcs/sources_1/bd/embedded_system/ipshared/c45e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/embedded_system/ip/embedded_system_axi_bram_ctrl_0_0/embedded_system_axi_bram_ctrl_0_0_sim_netlist.vhdl" \
"../../../bd/embedded_system/ip/embedded_system_axi_bram_ctrl_0_1/embedded_system_axi_bram_ctrl_0_1_sim_netlist.vhdl" \
"../../../bd/embedded_system/ip/embedded_system_axi_bram_ctrl_0_2/embedded_system_axi_bram_ctrl_0_2_sim_netlist.vhdl" \
"../../../bd/embedded_system/ip/embedded_system_processing_system7_0_0/embedded_system_processing_system7_0_0_sim_netlist.vhdl" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../PYNQ_SVM_CLASSIFIER.srcs/sources_1/bd/embedded_system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../PYNQ_SVM_CLASSIFIER.srcs/sources_1/bd/embedded_system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/embedded_system/ip/embedded_system_rst_ps7_0_100M_0/sim/embedded_system_rst_ps7_0_100M_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../PYNQ_SVM_CLASSIFIER.srcs/sources_1/bd/embedded_system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -64 -93 \
"../../../../PYNQ_SVM_CLASSIFIER.srcs/sources_1/bd/embedded_system/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_20 -64 -93 \
"../../../../PYNQ_SVM_CLASSIFIER.srcs/sources_1/bd/embedded_system/ipshared/a7c9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/embedded_system/ip/embedded_system_axi_gpio_0_0/sim/embedded_system_axi_gpio_0_0.vhd" \
"../../../bd/embedded_system/ip/embedded_system_axi_dma_0_1/embedded_system_axi_dma_0_1_sim_netlist.vhdl" \
"c:/Users/yoxo/Desktop/Giuseppe/Unical/CdL_LM_Tesi/Classifier_HW/PYNQ_SVM_CLASSIFIER/PYNQ_SVM_CLASSIFIER.srcs/sources_1/bd/embedded_system/ip/embedded_system_axi_smc_3/embedded_system_axi_smc_3_sim_netlist.vhdl" \
"c:/Users/yoxo/Desktop/Giuseppe/Unical/CdL_LM_Tesi/Classifier_HW/PYNQ_SVM_CLASSIFIER/PYNQ_SVM_CLASSIFIER.srcs/sources_1/bd/embedded_system/ip/embedded_system_xbar_0/embedded_system_xbar_0_sim_netlist.vhdl" \
"c:/Users/yoxo/Desktop/Giuseppe/Unical/CdL_LM_Tesi/Classifier_HW/PYNQ_SVM_CLASSIFIER/PYNQ_SVM_CLASSIFIER.srcs/sources_1/bd/embedded_system/ip/embedded_system_system_ila_0_0/embedded_system_system_ila_0_0_sim_netlist.vhdl" \
"../../../bd/embedded_system/ip/embedded_system_PL_CLASSIFIER_w_VOTI_0_0/sim/embedded_system_PL_CLASSIFIER_w_VOTI_0_0.vhd" \
"c:/Users/yoxo/Desktop/Giuseppe/Unical/CdL_LM_Tesi/Classifier_HW/PYNQ_SVM_CLASSIFIER/PYNQ_SVM_CLASSIFIER.srcs/sources_1/bd/embedded_system/ip/embedded_system_auto_pc_2/embedded_system_auto_pc_2_sim_netlist.vhdl" \
"c:/Users/yoxo/Desktop/Giuseppe/Unical/CdL_LM_Tesi/Classifier_HW/PYNQ_SVM_CLASSIFIER/PYNQ_SVM_CLASSIFIER.srcs/sources_1/bd/embedded_system/ip/embedded_system_auto_us_0/embedded_system_auto_us_0_sim_netlist.vhdl" \
"c:/Users/yoxo/Desktop/Giuseppe/Unical/CdL_LM_Tesi/Classifier_HW/PYNQ_SVM_CLASSIFIER/PYNQ_SVM_CLASSIFIER.srcs/sources_1/bd/embedded_system/ip/embedded_system_auto_ds_0/embedded_system_auto_ds_0_sim_netlist.vhdl" \
"c:/Users/yoxo/Desktop/Giuseppe/Unical/CdL_LM_Tesi/Classifier_HW/PYNQ_SVM_CLASSIFIER/PYNQ_SVM_CLASSIFIER.srcs/sources_1/bd/embedded_system/ip/embedded_system_auto_pc_0/embedded_system_auto_pc_0_sim_netlist.vhdl" \
"c:/Users/yoxo/Desktop/Giuseppe/Unical/CdL_LM_Tesi/Classifier_HW/PYNQ_SVM_CLASSIFIER/PYNQ_SVM_CLASSIFIER.srcs/sources_1/bd/embedded_system/ip/embedded_system_auto_ds_1/embedded_system_auto_ds_1_sim_netlist.vhdl" \
"c:/Users/yoxo/Desktop/Giuseppe/Unical/CdL_LM_Tesi/Classifier_HW/PYNQ_SVM_CLASSIFIER/PYNQ_SVM_CLASSIFIER.srcs/sources_1/bd/embedded_system/ip/embedded_system_auto_pc_1/embedded_system_auto_pc_1_sim_netlist.vhdl" \
"c:/Users/yoxo/Desktop/Giuseppe/Unical/CdL_LM_Tesi/Classifier_HW/PYNQ_SVM_CLASSIFIER/PYNQ_SVM_CLASSIFIER.srcs/sources_1/bd/embedded_system/ip/embedded_system_auto_ds_2/embedded_system_auto_ds_2_sim_netlist.vhdl" \
"c:/Users/yoxo/Desktop/Giuseppe/Unical/CdL_LM_Tesi/Classifier_HW/PYNQ_SVM_CLASSIFIER/PYNQ_SVM_CLASSIFIER.srcs/sources_1/bd/embedded_system/ip/embedded_system_auto_ds_3/embedded_system_auto_ds_3_sim_netlist.vhdl" \
"../../../bd/embedded_system/sim/embedded_system.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

