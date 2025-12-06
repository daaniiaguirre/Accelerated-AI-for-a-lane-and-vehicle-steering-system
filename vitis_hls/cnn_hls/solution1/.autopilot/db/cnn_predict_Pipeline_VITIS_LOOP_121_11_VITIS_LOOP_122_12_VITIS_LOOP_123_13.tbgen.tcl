set moduleName cnn_predict_Pipeline_VITIS_LOOP_121_11_VITIS_LOOP_122_12_VITIS_LOOP_123_13
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {cnn_predict_Pipeline_VITIS_LOOP_121_11_VITIS_LOOP_122_12_VITIS_LOOP_123_13}
set C_modelType { void 0 }
set C_modelArgList {
	{ layer1_pool float 32 regular {array 3844 { 1 1 1 1 1 1 1 1 1 1 1 1 3 3 3 3 3 } 1 1 }  }
	{ layer2_conv float 32 regular {array 6728 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "layer1_pool", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "layer2_conv", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 69
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ layer1_pool_address0 sc_out sc_lv 12 signal 0 } 
	{ layer1_pool_ce0 sc_out sc_logic 1 signal 0 } 
	{ layer1_pool_q0 sc_in sc_lv 32 signal 0 } 
	{ layer1_pool_address1 sc_out sc_lv 12 signal 0 } 
	{ layer1_pool_ce1 sc_out sc_logic 1 signal 0 } 
	{ layer1_pool_q1 sc_in sc_lv 32 signal 0 } 
	{ layer1_pool_address2 sc_out sc_lv 12 signal 0 } 
	{ layer1_pool_ce2 sc_out sc_logic 1 signal 0 } 
	{ layer1_pool_q2 sc_in sc_lv 32 signal 0 } 
	{ layer1_pool_address3 sc_out sc_lv 12 signal 0 } 
	{ layer1_pool_ce3 sc_out sc_logic 1 signal 0 } 
	{ layer1_pool_q3 sc_in sc_lv 32 signal 0 } 
	{ layer1_pool_address4 sc_out sc_lv 12 signal 0 } 
	{ layer1_pool_ce4 sc_out sc_logic 1 signal 0 } 
	{ layer1_pool_q4 sc_in sc_lv 32 signal 0 } 
	{ layer1_pool_address5 sc_out sc_lv 12 signal 0 } 
	{ layer1_pool_ce5 sc_out sc_logic 1 signal 0 } 
	{ layer1_pool_q5 sc_in sc_lv 32 signal 0 } 
	{ layer1_pool_address6 sc_out sc_lv 12 signal 0 } 
	{ layer1_pool_ce6 sc_out sc_logic 1 signal 0 } 
	{ layer1_pool_q6 sc_in sc_lv 32 signal 0 } 
	{ layer1_pool_address7 sc_out sc_lv 12 signal 0 } 
	{ layer1_pool_ce7 sc_out sc_logic 1 signal 0 } 
	{ layer1_pool_q7 sc_in sc_lv 32 signal 0 } 
	{ layer1_pool_address8 sc_out sc_lv 12 signal 0 } 
	{ layer1_pool_ce8 sc_out sc_logic 1 signal 0 } 
	{ layer1_pool_q8 sc_in sc_lv 32 signal 0 } 
	{ layer1_pool_address9 sc_out sc_lv 12 signal 0 } 
	{ layer1_pool_ce9 sc_out sc_logic 1 signal 0 } 
	{ layer1_pool_q9 sc_in sc_lv 32 signal 0 } 
	{ layer1_pool_address10 sc_out sc_lv 12 signal 0 } 
	{ layer1_pool_ce10 sc_out sc_logic 1 signal 0 } 
	{ layer1_pool_q10 sc_in sc_lv 32 signal 0 } 
	{ layer1_pool_address11 sc_out sc_lv 12 signal 0 } 
	{ layer1_pool_ce11 sc_out sc_logic 1 signal 0 } 
	{ layer1_pool_q11 sc_in sc_lv 32 signal 0 } 
	{ layer2_conv_address0 sc_out sc_lv 13 signal 1 } 
	{ layer2_conv_ce0 sc_out sc_logic 1 signal 1 } 
	{ layer2_conv_we0 sc_out sc_logic 1 signal 1 } 
	{ layer2_conv_d0 sc_out sc_lv 32 signal 1 } 
	{ grp_fu_414_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_414_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_414_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_414_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_414_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_853_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_853_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_853_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_853_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_853_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_857_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_857_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_857_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_857_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_861_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_861_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_861_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_861_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_865_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_865_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_865_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_865_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_865_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "layer1_pool_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "layer1_pool", "role": "address0" }} , 
 	{ "name": "layer1_pool_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer1_pool", "role": "ce0" }} , 
 	{ "name": "layer1_pool_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer1_pool", "role": "q0" }} , 
 	{ "name": "layer1_pool_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "layer1_pool", "role": "address1" }} , 
 	{ "name": "layer1_pool_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer1_pool", "role": "ce1" }} , 
 	{ "name": "layer1_pool_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer1_pool", "role": "q1" }} , 
 	{ "name": "layer1_pool_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "layer1_pool", "role": "address2" }} , 
 	{ "name": "layer1_pool_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer1_pool", "role": "ce2" }} , 
 	{ "name": "layer1_pool_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer1_pool", "role": "q2" }} , 
 	{ "name": "layer1_pool_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "layer1_pool", "role": "address3" }} , 
 	{ "name": "layer1_pool_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer1_pool", "role": "ce3" }} , 
 	{ "name": "layer1_pool_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer1_pool", "role": "q3" }} , 
 	{ "name": "layer1_pool_address4", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "layer1_pool", "role": "address4" }} , 
 	{ "name": "layer1_pool_ce4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer1_pool", "role": "ce4" }} , 
 	{ "name": "layer1_pool_q4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer1_pool", "role": "q4" }} , 
 	{ "name": "layer1_pool_address5", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "layer1_pool", "role": "address5" }} , 
 	{ "name": "layer1_pool_ce5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer1_pool", "role": "ce5" }} , 
 	{ "name": "layer1_pool_q5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer1_pool", "role": "q5" }} , 
 	{ "name": "layer1_pool_address6", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "layer1_pool", "role": "address6" }} , 
 	{ "name": "layer1_pool_ce6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer1_pool", "role": "ce6" }} , 
 	{ "name": "layer1_pool_q6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer1_pool", "role": "q6" }} , 
 	{ "name": "layer1_pool_address7", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "layer1_pool", "role": "address7" }} , 
 	{ "name": "layer1_pool_ce7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer1_pool", "role": "ce7" }} , 
 	{ "name": "layer1_pool_q7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer1_pool", "role": "q7" }} , 
 	{ "name": "layer1_pool_address8", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "layer1_pool", "role": "address8" }} , 
 	{ "name": "layer1_pool_ce8", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer1_pool", "role": "ce8" }} , 
 	{ "name": "layer1_pool_q8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer1_pool", "role": "q8" }} , 
 	{ "name": "layer1_pool_address9", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "layer1_pool", "role": "address9" }} , 
 	{ "name": "layer1_pool_ce9", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer1_pool", "role": "ce9" }} , 
 	{ "name": "layer1_pool_q9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer1_pool", "role": "q9" }} , 
 	{ "name": "layer1_pool_address10", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "layer1_pool", "role": "address10" }} , 
 	{ "name": "layer1_pool_ce10", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer1_pool", "role": "ce10" }} , 
 	{ "name": "layer1_pool_q10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer1_pool", "role": "q10" }} , 
 	{ "name": "layer1_pool_address11", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "layer1_pool", "role": "address11" }} , 
 	{ "name": "layer1_pool_ce11", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer1_pool", "role": "ce11" }} , 
 	{ "name": "layer1_pool_q11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer1_pool", "role": "q11" }} , 
 	{ "name": "layer2_conv_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "layer2_conv", "role": "address0" }} , 
 	{ "name": "layer2_conv_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer2_conv", "role": "ce0" }} , 
 	{ "name": "layer2_conv_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer2_conv", "role": "we0" }} , 
 	{ "name": "layer2_conv_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer2_conv", "role": "d0" }} , 
 	{ "name": "grp_fu_414_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_414_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_414_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_414_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_414_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_414_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_414_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_414_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_414_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_414_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_853_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_853_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_853_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_853_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_853_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_853_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_853_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_853_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_853_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_853_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_857_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_857_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_857_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_857_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_857_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_857_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_857_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_857_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_861_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_861_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_861_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_861_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_861_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_861_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_861_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_861_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_865_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_865_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_865_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_865_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_865_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_865_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_865_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_865_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_865_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_865_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24"],
		"CDFG" : "cnn_predict_Pipeline_VITIS_LOOP_121_11_VITIS_LOOP_122_12_VITIS_LOOP_123_13",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "20369", "EstimateLatencyMax" : "20369",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "layer1_pool", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_conv", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "conv2_b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_w", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_121_11_VITIS_LOOP_122_12_VITIS_LOOP_123_13", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter62", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter62", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_b_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_w_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U30", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U31", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U32", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U33", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U34", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U35", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U36", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U37", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U38", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U39", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U42", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U43", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U44", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U45", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U46", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U47", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U48", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U49", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U50", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U51", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_5ns_5ns_5ns_10_4_1_U53", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	cnn_predict_Pipeline_VITIS_LOOP_121_11_VITIS_LOOP_122_12_VITIS_LOOP_123_13 {
		layer1_pool {Type I LastRead 4 FirstWrite -1}
		layer2_conv {Type O LastRead -1 FirstWrite 187}
		conv2_b {Type I LastRead -1 FirstWrite -1}
		conv2_w {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "20369", "Max" : "20369"}
	, {"Name" : "Interval", "Min" : "20369", "Max" : "20369"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	layer1_pool { ap_memory {  { layer1_pool_address0 mem_address 1 12 }  { layer1_pool_ce0 mem_ce 1 1 }  { layer1_pool_q0 in_data 0 32 }  { layer1_pool_address1 MemPortADDR2 1 12 }  { layer1_pool_ce1 MemPortCE2 1 1 }  { layer1_pool_q1 in_data 0 32 }  { layer1_pool_address2 MemPortADDR2 1 12 }  { layer1_pool_ce2 MemPortCE2 1 1 }  { layer1_pool_q2 in_data 0 32 }  { layer1_pool_address3 MemPortADDR2 1 12 }  { layer1_pool_ce3 MemPortCE2 1 1 }  { layer1_pool_q3 in_data 0 32 }  { layer1_pool_address4 MemPortADDR2 1 12 }  { layer1_pool_ce4 MemPortCE2 1 1 }  { layer1_pool_q4 in_data 0 32 }  { layer1_pool_address5 MemPortADDR2 1 12 }  { layer1_pool_ce5 MemPortCE2 1 1 }  { layer1_pool_q5 in_data 0 32 }  { layer1_pool_address6 MemPortADDR2 1 12 }  { layer1_pool_ce6 MemPortCE2 1 1 }  { layer1_pool_q6 in_data 0 32 }  { layer1_pool_address7 MemPortADDR2 1 12 }  { layer1_pool_ce7 MemPortCE2 1 1 }  { layer1_pool_q7 in_data 0 32 }  { layer1_pool_address8 MemPortADDR2 1 12 }  { layer1_pool_ce8 MemPortCE2 1 1 }  { layer1_pool_q8 in_data 0 32 }  { layer1_pool_address9 MemPortADDR2 1 12 }  { layer1_pool_ce9 MemPortCE2 1 1 }  { layer1_pool_q9 in_data 0 32 }  { layer1_pool_address10 MemPortADDR2 1 12 }  { layer1_pool_ce10 MemPortCE2 1 1 }  { layer1_pool_q10 in_data 0 32 }  { layer1_pool_address11 MemPortADDR2 1 12 }  { layer1_pool_ce11 MemPortCE2 1 1 }  { layer1_pool_q11 in_data 0 32 } } }
	layer2_conv { ap_memory {  { layer2_conv_address0 mem_address 1 13 }  { layer2_conv_ce0 mem_ce 1 1 }  { layer2_conv_we0 mem_we 1 1 }  { layer2_conv_d0 mem_din 1 32 } } }
}
