set moduleName cnn_predict_Pipeline_VITIS_LOOP_180_26
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
set C_modelName {cnn_predict_Pipeline_VITIS_LOOP_180_26}
set C_modelType { void 0 }
set C_modelArgList {
	{ sum_1 float 32 regular  }
	{ dense float 32 regular {array 16 { 0 3 } 0 1 }  }
	{ zext_ln178 int 4 regular  }
	{ zext_ln178_1 int 4 regular  }
	{ flat float 32 regular {array 1568 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sum_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dense", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "zext_ln178", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln178_1", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "flat", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sum_1 sc_in sc_lv 32 signal 0 } 
	{ dense_address0 sc_out sc_lv 4 signal 1 } 
	{ dense_ce0 sc_out sc_logic 1 signal 1 } 
	{ dense_we0 sc_out sc_logic 1 signal 1 } 
	{ dense_d0 sc_out sc_lv 32 signal 1 } 
	{ zext_ln178 sc_in sc_lv 4 signal 2 } 
	{ zext_ln178_1 sc_in sc_lv 4 signal 3 } 
	{ flat_address0 sc_out sc_lv 11 signal 4 } 
	{ flat_ce0 sc_out sc_logic 1 signal 4 } 
	{ flat_q0 sc_in sc_lv 32 signal 4 } 
	{ grp_fu_414_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_414_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_414_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_414_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_414_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_857_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_857_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_857_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_857_p_ce sc_out sc_logic 1 signal -1 } 
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
 	{ "name": "sum_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_1", "role": "default" }} , 
 	{ "name": "dense_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "dense", "role": "address0" }} , 
 	{ "name": "dense_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dense", "role": "ce0" }} , 
 	{ "name": "dense_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dense", "role": "we0" }} , 
 	{ "name": "dense_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dense", "role": "d0" }} , 
 	{ "name": "zext_ln178", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "zext_ln178", "role": "default" }} , 
 	{ "name": "zext_ln178_1", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "zext_ln178_1", "role": "default" }} , 
 	{ "name": "flat_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "flat", "role": "address0" }} , 
 	{ "name": "flat_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flat", "role": "ce0" }} , 
 	{ "name": "flat_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "flat", "role": "q0" }} , 
 	{ "name": "grp_fu_414_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_414_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_414_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_414_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_414_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_414_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_414_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_414_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_414_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_414_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_857_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_857_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_857_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_857_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_857_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_857_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_857_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_857_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_865_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_865_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_865_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_865_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_865_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_865_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_865_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_865_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_865_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_865_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "cnn_predict_Pipeline_VITIS_LOOP_180_26",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6281", "EstimateLatencyMax" : "6281",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sum_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "zext_ln178", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln178_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "flat", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense1_w", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_180_26", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage3", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage3_subdone", "QuitState" : "ap_ST_fsm_pp0_stage3", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage3_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dense1_w_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	cnn_predict_Pipeline_VITIS_LOOP_180_26 {
		sum_1 {Type I LastRead 0 FirstWrite -1}
		dense {Type O LastRead -1 FirstWrite 11}
		zext_ln178 {Type I LastRead 0 FirstWrite -1}
		zext_ln178_1 {Type I LastRead 0 FirstWrite -1}
		flat {Type I LastRead 0 FirstWrite -1}
		dense1_w {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6281", "Max" : "6281"}
	, {"Name" : "Interval", "Min" : "6281", "Max" : "6281"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sum_1 { ap_none {  { sum_1 in_data 0 32 } } }
	dense { ap_memory {  { dense_address0 mem_address 1 4 }  { dense_ce0 mem_ce 1 1 }  { dense_we0 mem_we 1 1 }  { dense_d0 mem_din 1 32 } } }
	zext_ln178 { ap_none {  { zext_ln178 in_data 0 4 } } }
	zext_ln178_1 { ap_none {  { zext_ln178_1 in_data 0 4 } } }
	flat { ap_memory {  { flat_address0 mem_address 1 11 }  { flat_ce0 mem_ce 1 1 }  { flat_q0 in_data 0 32 } } }
}
