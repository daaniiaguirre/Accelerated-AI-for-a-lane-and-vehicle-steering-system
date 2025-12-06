# This script segment is generated automatically by AutoPilot

set id 53
set name cnn_predict_mac_muladd_5ns_5ns_5ns_10_4_1
set corename simcore_mac
set op mac
set stage_num 4
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 5
set in0_signed 0
set in1_width 5
set in1_signed 0
set in2_width 5
set in2_signed 0
set ce_width 1
set ce_signed 0
set out_width 10
set arg_lists {i0 {5 0 +} i1 {5 0 +} m {10 1 +} i2 {5 0 +} p {10 0 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {all} IMPL {dsp48} LATENCY 3 ALLOW_PRAGMA 1
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler cnn_predict_cnn_predict_Pipeline_VITIS_LOOP_121_11_VITIS_LOOP_122_12_VITIS_LOOP_123_13_cobkb BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler cnn_predict_cnn_predict_Pipeline_VITIS_LOOP_121_11_VITIS_LOOP_122_12_VITIS_LOOP_123_13_cocud BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 57 \
    name layer1_pool \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename layer1_pool \
    op interface \
    ports { layer1_pool_address0 { O 12 vector } layer1_pool_ce0 { O 1 bit } layer1_pool_q0 { I 32 vector } layer1_pool_address1 { O 12 vector } layer1_pool_ce1 { O 1 bit } layer1_pool_q1 { I 32 vector } layer1_pool_address2 { O 12 vector } layer1_pool_ce2 { O 1 bit } layer1_pool_q2 { I 32 vector } layer1_pool_address3 { O 12 vector } layer1_pool_ce3 { O 1 bit } layer1_pool_q3 { I 32 vector } layer1_pool_address4 { O 12 vector } layer1_pool_ce4 { O 1 bit } layer1_pool_q4 { I 32 vector } layer1_pool_address5 { O 12 vector } layer1_pool_ce5 { O 1 bit } layer1_pool_q5 { I 32 vector } layer1_pool_address6 { O 12 vector } layer1_pool_ce6 { O 1 bit } layer1_pool_q6 { I 32 vector } layer1_pool_address7 { O 12 vector } layer1_pool_ce7 { O 1 bit } layer1_pool_q7 { I 32 vector } layer1_pool_address8 { O 12 vector } layer1_pool_ce8 { O 1 bit } layer1_pool_q8 { I 32 vector } layer1_pool_address9 { O 12 vector } layer1_pool_ce9 { O 1 bit } layer1_pool_q9 { I 32 vector } layer1_pool_address10 { O 12 vector } layer1_pool_ce10 { O 1 bit } layer1_pool_q10 { I 32 vector } layer1_pool_address11 { O 12 vector } layer1_pool_ce11 { O 1 bit } layer1_pool_q11 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'layer1_pool'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 58 \
    name layer2_conv \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename layer2_conv \
    op interface \
    ports { layer2_conv_address0 { O 13 vector } layer2_conv_ce0 { O 1 bit } layer2_conv_we0 { O 1 bit } layer2_conv_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'layer2_conv'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName cnn_predict_flow_control_loop_pipe_sequential_init_U
set CompName cnn_predict_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix cnn_predict_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


