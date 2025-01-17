vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/interrupt_control_v3_1_4
vlib questa_lib/msim/axi_gpio_v2_0_20
vlib questa_lib/msim/proc_sys_reset_v5_0_13

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 questa_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_20 questa_lib/msim/axi_gpio_v2_0_20
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13

vlog -work xilinx_vip -64 -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib -64 -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../HW_SVM.srcs/sources_1/bd/hw_svm/ipshared/ec67/hdl" "+incdir+../../../../HW_SVM.srcs/sources_1/bd/hw_svm/ipshared/70cf/hdl" "+incdir+../../../../HW_SVM.srcs/sources_1/bd/hw_svm/ip/hw_svm_processing_system7_0_0" "+incdir+../../../../HW_SVM.srcs/sources_1/bd/hw_svm/ipshared/979d/hdl/verilog" "+incdir+../../../../HW_SVM.srcs/sources_1/bd/hw_svm/ipshared/b2d0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/hw_svm/ip/hw_svm_processing_system7_0_0/hw_svm_processing_system7_0_0_sim_netlist.vhdl" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../HW_SVM.srcs/sources_1/bd/hw_svm/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../HW_SVM.srcs/sources_1/bd/hw_svm/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -64 -93 \
"../../../../HW_SVM.srcs/sources_1/bd/hw_svm/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_20 -64 -93 \
"../../../../HW_SVM.srcs/sources_1/bd/hw_svm/ipshared/a7c9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/hw_svm/ip/hw_svm_axi_gpio_0_0/sim/hw_svm_axi_gpio_0_0.vhd" \
"../../../bd/hw_svm/ip/hw_svm_xbar_0/hw_svm_xbar_0_sim_netlist.vhdl" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../HW_SVM.srcs/sources_1/bd/hw_svm/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/hw_svm/ip/hw_svm_rst_ps7_0_30M_0/sim/hw_svm_rst_ps7_0_30M_0.vhd" \
"c:/work/Master_Degree_Thesis/HW_SVM/HW_SVM.srcs/sources_1/bd/hw_svm/ip/hw_svm_axi_dma_0_0/hw_svm_axi_dma_0_0_sim_netlist.vhdl" \
"c:/work/Master_Degree_Thesis/HW_SVM/HW_SVM.srcs/sources_1/bd/hw_svm/ip/hw_svm_axi_smc_0/hw_svm_axi_smc_0_sim_netlist.vhdl" \
"c:/work/Master_Degree_Thesis/HW_SVM/HW_SVM.srcs/sources_1/bd/hw_svm/ip/hw_svm_axi_dma_1_0/hw_svm_axi_dma_1_0_sim_netlist.vhdl" \
"c:/work/Master_Degree_Thesis/HW_SVM/HW_SVM.srcs/sources_1/bd/hw_svm/ip/hw_svm_axi_dma_1_1/hw_svm_axi_dma_1_1_sim_netlist.vhdl" \
"c:/work/Master_Degree_Thesis/HW_SVM/HW_SVM.srcs/sources_1/bd/hw_svm/ip/hw_svm_axi_dma_2_0/hw_svm_axi_dma_2_0_sim_netlist.vhdl" \
"../../../bd/hw_svm/ip/hw_svm_axis_to_bram_PCV_0_0/sim/hw_svm_axis_to_bram_PCV_0_0.vhd" \
"../../../bd/hw_svm/ip/hw_svm_axis_to_bram_Kernel_0_0/sim/hw_svm_axis_to_bram_Kernel_0_0.vhd" \
"../../../bd/hw_svm/ip/hw_svm_axis_to_bram_Bias_0_0/sim/hw_svm_axis_to_bram_Bias_0_0.vhd" \
"../../../bd/hw_svm/ip/hw_svm_PL_CLASSIFIER_w_VOTI_0_0/sim/hw_svm_PL_CLASSIFIER_w_VOTI_0_0.vhd" \
"../../../bd/hw_svm/ip/hw_svm_auto_pc_0/hw_svm_auto_pc_0_sim_netlist.vhdl" \
"../../../bd/hw_svm/sim/hw_svm.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

