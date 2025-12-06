set moduleName cnn_predict_Pipeline_VITIS_LOOP_167_22_VITIS_LOOP_168_23_VITIS_LOOP_169_24
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
set C_modelName {cnn_predict_Pipeline_VITIS_LOOP_167_22_VITIS_LOOP_168_23_VITIS_LOOP_169_24}
set C_modelType { void 0 }
set C_modelArgList {
	{ layer2_pool float 32 regular {array 1568 { 1 3 } 1 1 }  }
	{ flat float 32 regular {array 1568 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "layer2_pool", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "flat", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ layer2_pool_address0 sc_out sc_lv 11 signal 0 } 
	{ layer2_pool_ce0 sc_out sc_logic 1 signal 0 } 
	{ layer2_pool_q0 sc_in sc_lv 32 signal 0 } 
	{ flat_address0 sc_out sc_lv 11 signal 1 } 
	{ flat_ce0 sc_out sc_logic 1 signal 1 } 
	{ flat_we0 sc_out sc_logic 1 signal 1 } 
	{ flat_d0 sc_out sc_lv 32 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "layer2_pool_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "layer2_pool", "role": "address0" }} , 
 	{ "name": "layer2_pool_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer2_pool", "role": "ce0" }} , 
 	{ "name": "layer2_pool_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer2_pool", "role": "q0" }} , 
 	{ "name": "flat_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "flat", "role": "address0" }} , 
 	{ "name": "flat_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flat", "role": "ce0" }} , 
 	{ "name": "flat_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flat", "role": "we0" }} , 
 	{ "name": "flat_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "flat", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "cnn_predict_Pipeline_VITIS_LOOP_167_22_VITIS_LOOP_168_23_VITIS_LOOP_169_24",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1570", "EstimateLatencyMax" : "1570",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "layer2_pool", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "flat", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_167_22_VITIS_LOOP_168_23_VITIS_LOOP_169_24", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	cnn_predict_Pipeline_VITIS_LOOP_167_22_VITIS_LOOP_168_23_VITIS_LOOP_169_24 {
		layer2_pool {Type I LastRead 0 FirstWrite -1}
		flat {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1570", "Max" : "1570"}
	, {"Name" : "Interval", "Min" : "1570", "Max" : "1570"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	layer2_pool { ap_memory {  { layer2_pool_address0 mem_address 1 11 }  { layer2_pool_ce0 mem_ce 1 1 }  { layer2_pool_q0 in_data 0 32 } } }
	flat { ap_memory {  { flat_address0 mem_address 1 11 }  { flat_ce0 mem_ce 1 1 }  { flat_we0 mem_we 1 1 }  { flat_d0 mem_din 1 32 } } }
}
