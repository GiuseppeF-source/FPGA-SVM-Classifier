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
  "../../../bd/embedded_system/ip/embedded_system_axi_bram_ctrl_0_0/embedded_system_axi_bram_ctrl_0_0_sim_netlist.vhdl" \
  "../../../bd/embedded_system/ip/embedded_system_axi_bram_ctrl_0_1/embedded_system_axi_bram_ctrl_0_1_sim_netlist.vhdl" \
  "../../../bd/embedded_system/ip/embedded_system_axi_bram_ctrl_0_2/embedded_system_axi_bram_ctrl_0_2_sim_netlist.vhdl" \
  "../../../bd/embedded_system/ip/embedded_system_processing_system7_0_0/embedded_system_processing_system7_0_0_sim_netlist.vhdl" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../PYNQ_SVM_CLASSIFIER.srcs/sources_1/bd/embedded_system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_13 \
  "../../../../PYNQ_SVM_CLASSIFIER.srcs/sources_1/bd/embedded_system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/embedded_system/ip/embedded_system_rst_ps7_0_100M_0/sim/embedded_system_rst_ps7_0_100M_0.vhd" \
-endlib
-makelib ies_lib/axi_lite_ipif_v3_0_4 \
  "../../../../PYNQ_SVM_CLASSIFIER.srcs/sources_1/bd/embedded_system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/interrupt_control_v3_1_4 \
  "../../../../PYNQ_SVM_CLASSIFIER.srcs/sources_1/bd/embedded_system/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/axi_gpio_v2_0_20 \
  "../../../../PYNQ_SVM_CLASSIFIER.srcs/sources_1/bd/embedded_system/ipshared/a7c9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
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
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

