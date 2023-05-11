-makelib ies_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/hw_svm/ip/hw_svm_processing_system7_0_0/hw_svm_processing_system7_0_0_sim_netlist.vhdl" \
-endlib
-makelib ies_lib/axi_lite_ipif_v3_0_4 \
  "../../../../HW_SVM.srcs/sources_1/bd/hw_svm/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../HW_SVM.srcs/sources_1/bd/hw_svm/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/interrupt_control_v3_1_4 \
  "../../../../HW_SVM.srcs/sources_1/bd/hw_svm/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/axi_gpio_v2_0_20 \
  "../../../../HW_SVM.srcs/sources_1/bd/hw_svm/ipshared/a7c9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/hw_svm/ip/hw_svm_axi_gpio_0_0/sim/hw_svm_axi_gpio_0_0.vhd" \
  "../../../bd/hw_svm/ip/hw_svm_xbar_0/hw_svm_xbar_0_sim_netlist.vhdl" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_13 \
  "../../../../HW_SVM.srcs/sources_1/bd/hw_svm/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
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
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

