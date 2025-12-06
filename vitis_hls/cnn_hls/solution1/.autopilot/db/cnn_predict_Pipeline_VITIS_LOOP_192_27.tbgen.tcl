set moduleName cnn_predict_Pipeline_VITIS_LOOP_192_27
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
set C_modelName {cnn_predict_Pipeline_VITIS_LOOP_192_27}
set C_modelType { void 0 }
set C_modelArgList {
	{ dense float 32 regular {array 16 { 1 3 } 1 1 }  }
	{ final_sum_out float 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "dense", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "final_sum_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ dense_address0 sc_out sc_lv 4 signal 0 } 
	{ dense_ce0 sc_out sc_logic 1 signal 0 } 
	{ dense_q0 sc_in sc_lv 32 signal 0 } 
	{ final_sum_out sc_out sc_lv 32 signal 1 } 
	{ final_sum_out_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ grp_fu_414_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_414_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_414_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_414_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_414_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_857_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_857_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_857_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_857_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "dense_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "dense", "role": "address0" }} , 
 	{ "name": "dense_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dense", "role": "ce0" }} , 
 	{ "name": "dense_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dense", "role": "q0" }} , 
 	{ "name": "final_sum_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "final_sum_out", "role": "default" }} , 
 	{ "name": "final_sum_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "final_sum_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_414_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_414_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_414_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_414_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_414_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_414_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_414_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_414_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_414_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_414_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_857_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_857_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_857_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_857_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_857_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_857_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_857_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_857_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "cnn_predict_Pipeline_VITIS_LOOP_192_27",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "71", "EstimateLatencyMax" : "71",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "dense", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "final_sum_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_w", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_192_27", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_w_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	cnn_predict_Pipeline_VITIS_LOOP_192_27 {
		dense {Type I LastRead 0 FirstWrite -1}
		final_sum_out {Type O LastRead -1 FirstWrite 5}
		output_w {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "71", "Max" : "71"}
	, {"Name" : "Interval", "Min" : "71", "Max" : "71"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	dense { ap_memory {  { dense_address0 mem_address 1 4 }  { dense_ce0 mem_ce 1 1 }  { dense_q0 in_data 0 32 } } }
	final_sum_out { ap_vld {  { final_sum_out out_data 1 32 }  { final_sum_out_ap_vld out_vld 1 1 } } }
}
