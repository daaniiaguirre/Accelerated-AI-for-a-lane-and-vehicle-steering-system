set SynModuleInfo {
  {SRCNAME cnn_predict_Pipeline_VITIS_LOOP_38_1 MODELNAME cnn_predict_Pipeline_VITIS_LOOP_38_1 RTLNAME cnn_predict_cnn_predict_Pipeline_VITIS_LOOP_38_1
    SUBMODULES {
      {MODELNAME cnn_predict_flow_control_loop_pipe_sequential_init RTLNAME cnn_predict_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME cnn_predict_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME cnn_predict_Pipeline_VITIS_LOOP_77_2_VITIS_LOOP_78_3 MODELNAME cnn_predict_Pipeline_VITIS_LOOP_77_2_VITIS_LOOP_78_3 RTLNAME cnn_predict_cnn_predict_Pipeline_VITIS_LOOP_77_2_VITIS_LOOP_78_3}
  {SRCNAME cnn_predict_Pipeline_VITIS_LOOP_103_6_VITIS_LOOP_104_7_VITIS_LOOP_105_8 MODELNAME cnn_predict_Pipeline_VITIS_LOOP_103_6_VITIS_LOOP_104_7_VITIS_LOOP_105_8 RTLNAME cnn_predict_cnn_predict_Pipeline_VITIS_LOOP_103_6_VITIS_LOOP_104_7_VITIS_LOOP_105_8}
  {SRCNAME cnn_predict_Pipeline_VITIS_LOOP_121_11_VITIS_LOOP_122_12_VITIS_LOOP_123_13 MODELNAME cnn_predict_Pipeline_VITIS_LOOP_121_11_VITIS_LOOP_122_12_VITIS_LOOP_123_13 RTLNAME cnn_predict_cnn_predict_Pipeline_VITIS_LOOP_121_11_VITIS_LOOP_122_12_VITIS_LOOP_123_13
    SUBMODULES {
      {MODELNAME cnn_predict_mac_muladd_5ns_5ns_5ns_10_4_1 RTLNAME cnn_predict_mac_muladd_5ns_5ns_5ns_10_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME cnn_predict_cnn_predict_Pipeline_VITIS_LOOP_121_11_VITIS_LOOP_122_12_VITIS_LOOP_123_13_cobkb RTLNAME cnn_predict_cnn_predict_Pipeline_VITIS_LOOP_121_11_VITIS_LOOP_122_12_VITIS_LOOP_123_13_cobkb BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_predict_cnn_predict_Pipeline_VITIS_LOOP_121_11_VITIS_LOOP_122_12_VITIS_LOOP_123_13_cocud RTLNAME cnn_predict_cnn_predict_Pipeline_VITIS_LOOP_121_11_VITIS_LOOP_122_12_VITIS_LOOP_123_13_cocud BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME cnn_predict_Pipeline_VITIS_LOOP_147_17_VITIS_LOOP_148_18_VITIS_LOOP_149_19 MODELNAME cnn_predict_Pipeline_VITIS_LOOP_147_17_VITIS_LOOP_148_18_VITIS_LOOP_149_19 RTLNAME cnn_predict_cnn_predict_Pipeline_VITIS_LOOP_147_17_VITIS_LOOP_148_18_VITIS_LOOP_149_19
    SUBMODULES {
      {MODELNAME cnn_predict_mul_5ns_6ns_10_1_1 RTLNAME cnn_predict_mul_5ns_6ns_10_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME cnn_predict_Pipeline_VITIS_LOOP_167_22_VITIS_LOOP_168_23_VITIS_LOOP_169_24 MODELNAME cnn_predict_Pipeline_VITIS_LOOP_167_22_VITIS_LOOP_168_23_VITIS_LOOP_169_24 RTLNAME cnn_predict_cnn_predict_Pipeline_VITIS_LOOP_167_22_VITIS_LOOP_168_23_VITIS_LOOP_169_24}
  {SRCNAME cnn_predict_Pipeline_VITIS_LOOP_180_26 MODELNAME cnn_predict_Pipeline_VITIS_LOOP_180_26 RTLNAME cnn_predict_cnn_predict_Pipeline_VITIS_LOOP_180_26
    SUBMODULES {
      {MODELNAME cnn_predict_cnn_predict_Pipeline_VITIS_LOOP_180_26_dense1_w_ROM_AUTO_1R RTLNAME cnn_predict_cnn_predict_Pipeline_VITIS_LOOP_180_26_dense1_w_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME cnn_predict_Pipeline_VITIS_LOOP_192_27 MODELNAME cnn_predict_Pipeline_VITIS_LOOP_192_27 RTLNAME cnn_predict_cnn_predict_Pipeline_VITIS_LOOP_192_27
    SUBMODULES {
      {MODELNAME cnn_predict_cnn_predict_Pipeline_VITIS_LOOP_192_27_output_w_ROM_AUTO_1R RTLNAME cnn_predict_cnn_predict_Pipeline_VITIS_LOOP_192_27_output_w_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME cnn_predict MODELNAME cnn_predict RTLNAME cnn_predict IS_TOP 1
    SUBMODULES {
      {MODELNAME cnn_predict_fadd_32ns_32ns_32_5_full_dsp_1 RTLNAME cnn_predict_fadd_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME cnn_predict_fdiv_32ns_32ns_32_10_no_dsp_1 RTLNAME cnn_predict_fdiv_32ns_32ns_32_10_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 9 ALLOW_PRAGMA 1}
      {MODELNAME cnn_predict_fexp_32ns_32ns_32_8_full_dsp_1 RTLNAME cnn_predict_fexp_32ns_32ns_32_8_full_dsp_1 BINDTYPE op TYPE fexp IMPL fulldsp LATENCY 7 ALLOW_PRAGMA 1}
      {MODELNAME cnn_predict_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME cnn_predict_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME cnn_predict_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME cnn_predict_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME cnn_predict_img_read_RAM_2P_BRAM_1R1W RTLNAME cnn_predict_img_read_RAM_2P_BRAM_1R1W BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_predict_conv1_w_ROM_AUTO_1R RTLNAME cnn_predict_conv1_w_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_predict_dense1_b_ROM_AUTO_1R RTLNAME cnn_predict_dense1_b_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_predict_layer1_conv_RAM_1WNR_AUTO_1R1W RTLNAME cnn_predict_layer1_conv_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_predict_layer1_pool_RAM_1WNR_AUTO_1R1W RTLNAME cnn_predict_layer1_pool_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_predict_layer2_conv_RAM_1WNR_AUTO_1R1W RTLNAME cnn_predict_layer2_conv_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_predict_layer2_pool_RAM_AUTO_1R1W RTLNAME cnn_predict_layer2_pool_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_predict_dense_RAM_AUTO_1R1W RTLNAME cnn_predict_dense_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_predict_gmem_m_axi RTLNAME cnn_predict_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME cnn_predict_control_s_axi RTLNAME cnn_predict_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
