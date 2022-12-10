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
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../TEST_CDMA.srcs/sources_1/bd/design_TEST_CDMA/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_vip_v1_1_4 -sv \
  "../../../../TEST_CDMA.srcs/sources_1/bd/design_TEST_CDMA/ipshared/98af/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib ies_lib/processing_system7_vip_v1_0_6 -sv \
  "../../../../TEST_CDMA.srcs/sources_1/bd/design_TEST_CDMA/ipshared/70cf/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_TEST_CDMA/ip/design_TEST_CDMA_processing_system7_0_1/sim/design_TEST_CDMA_processing_system7_0_1.v" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../TEST_CDMA.srcs/sources_1/bd/design_TEST_CDMA/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_13 \
  "../../../../TEST_CDMA.srcs/sources_1/bd/design_TEST_CDMA/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_TEST_CDMA/ip/design_TEST_CDMA_rst_ps7_0_100M_0/sim/design_TEST_CDMA_rst_ps7_0_100M_0.vhd" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_2 \
  "../../../../TEST_CDMA.srcs/sources_1/bd/design_TEST_CDMA/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_TEST_CDMA/ip/design_TEST_CDMA_axi_bram_ctrl_0_bram_1/sim/design_TEST_CDMA_axi_bram_ctrl_0_bram_1.v" \
-endlib
-makelib ies_lib/lib_pkg_v1_0_2 \
  "../../../../TEST_CDMA.srcs/sources_1/bd/design_TEST_CDMA/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_3 \
  "../../../../TEST_CDMA.srcs/sources_1/bd/design_TEST_CDMA/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_3 \
  "../../../../TEST_CDMA.srcs/sources_1/bd/design_TEST_CDMA/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_3 \
  "../../../../TEST_CDMA.srcs/sources_1/bd/design_TEST_CDMA/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/lib_fifo_v1_0_12 \
  "../../../../TEST_CDMA.srcs/sources_1/bd/design_TEST_CDMA/ipshared/544a/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/lib_srl_fifo_v1_0_2 \
  "../../../../TEST_CDMA.srcs/sources_1/bd/design_TEST_CDMA/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/axi_datamover_v5_1_20 \
  "../../../../TEST_CDMA.srcs/sources_1/bd/design_TEST_CDMA/ipshared/dfb3/hdl/axi_datamover_v5_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/axi_sg_v4_1_11 \
  "../../../../TEST_CDMA.srcs/sources_1/bd/design_TEST_CDMA/ipshared/efa7/hdl/axi_sg_v4_1_rfs.vhd" \
-endlib
-makelib ies_lib/axi_dma_v7_1_19 \
  "../../../../TEST_CDMA.srcs/sources_1/bd/design_TEST_CDMA/ipshared/09b0/hdl/axi_dma_v7_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_TEST_CDMA/ip/design_TEST_CDMA_axi_dma_0_0/sim/design_TEST_CDMA_axi_dma_0_0.vhd" \
  "../../../bd/design_TEST_CDMA/sim/design_TEST_CDMA.vhd" \
  "../../../bd/design_TEST_CDMA/ip/design_TEST_CDMA_axis_to_bram_PCV_0_0/sim/design_TEST_CDMA_axis_to_bram_PCV_0_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_TEST_CDMA/ip/design_TEST_CDMA_axi_smc_0/bd_0/sim/bd_b9dd.v" \
-endlib
-makelib ies_lib/xlconstant_v1_1_5 \
  "../../../../TEST_CDMA.srcs/sources_1/bd/design_TEST_CDMA/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_TEST_CDMA/ip/design_TEST_CDMA_axi_smc_0/bd_0/ip/ip_0/sim/bd_b9dd_one_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_TEST_CDMA/ip/design_TEST_CDMA_axi_smc_0/bd_0/ip/ip_1/sim/bd_b9dd_psr_aclk_0.vhd" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../TEST_CDMA.srcs/sources_1/bd/design_TEST_CDMA/ipshared/979d/hdl/sc_util_v1_0_vl_rfs.sv" \
  "../../../../TEST_CDMA.srcs/sources_1/bd/design_TEST_CDMA/ipshared/f85e/hdl/sc_mmu_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/design_TEST_CDMA/ip/design_TEST_CDMA_axi_smc_0/bd_0/ip/ip_2/sim/bd_b9dd_s00mmu_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../TEST_CDMA.srcs/sources_1/bd/design_TEST_CDMA/ipshared/ca72/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/design_TEST_CDMA/ip/design_TEST_CDMA_axi_smc_0/bd_0/ip/ip_3/sim/bd_b9dd_s00tr_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../TEST_CDMA.srcs/sources_1/bd/design_TEST_CDMA/ipshared/9ade/hdl/sc_si_converter_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/design_TEST_CDMA/ip/design_TEST_CDMA_axi_smc_0/bd_0/ip/ip_4/sim/bd_b9dd_s00sic_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../TEST_CDMA.srcs/sources_1/bd/design_TEST_CDMA/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/design_TEST_CDMA/ip/design_TEST_CDMA_axi_smc_0/bd_0/ip/ip_5/sim/bd_b9dd_s00a2s_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../TEST_CDMA.srcs/sources_1/bd/design_TEST_CDMA/ipshared/b2d0/hdl/sc_node_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/design_TEST_CDMA/ip/design_TEST_CDMA_axi_smc_0/bd_0/ip/ip_6/sim/bd_b9dd_sarn_0.sv" \
  "../../../bd/design_TEST_CDMA/ip/design_TEST_CDMA_axi_smc_0/bd_0/ip/ip_7/sim/bd_b9dd_srn_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../TEST_CDMA.srcs/sources_1/bd/design_TEST_CDMA/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/design_TEST_CDMA/ip/design_TEST_CDMA_axi_smc_0/bd_0/ip/ip_8/sim/bd_b9dd_m00s2a_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../TEST_CDMA.srcs/sources_1/bd/design_TEST_CDMA/ipshared/b387/hdl/sc_exit_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/design_TEST_CDMA/ip/design_TEST_CDMA_axi_smc_0/bd_0/ip/ip_9/sim/bd_b9dd_m00e_0.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_TEST_CDMA/ip/design_TEST_CDMA_axi_smc_0/sim/design_TEST_CDMA_axi_smc_0.vhd" \
-endlib
-makelib ies_lib/generic_baseblocks_v2_1_0 \
  "../../../../TEST_CDMA.srcs/sources_1/bd/design_TEST_CDMA/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_register_slice_v2_1_18 \
  "../../../../TEST_CDMA.srcs/sources_1/bd/design_TEST_CDMA/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_data_fifo_v2_1_17 \
  "../../../../TEST_CDMA.srcs/sources_1/bd/design_TEST_CDMA/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_crossbar_v2_1_19 \
  "../../../../TEST_CDMA.srcs/sources_1/bd/design_TEST_CDMA/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_TEST_CDMA/ip/design_TEST_CDMA_xbar_0/sim/design_TEST_CDMA_xbar_0.v" \
-endlib
-makelib ies_lib/axi_protocol_converter_v2_1_18 \
  "../../../../TEST_CDMA.srcs/sources_1/bd/design_TEST_CDMA/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_TEST_CDMA/ip/design_TEST_CDMA_auto_pc_0/sim/design_TEST_CDMA_auto_pc_0.v" \
-endlib
-makelib ies_lib/axi_lite_ipif_v3_0_4 \
  "../../../../TEST_CDMA.srcs/sources_1/bd/design_TEST_CDMA/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/interrupt_control_v3_1_4 \
  "../../../../TEST_CDMA.srcs/sources_1/bd/design_TEST_CDMA/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/axi_gpio_v2_0_20 \
  "../../../../TEST_CDMA.srcs/sources_1/bd/design_TEST_CDMA/ipshared/a7c9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_TEST_CDMA/ip/design_TEST_CDMA_axi_gpio_0_0/sim/design_TEST_CDMA_axi_gpio_0_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

