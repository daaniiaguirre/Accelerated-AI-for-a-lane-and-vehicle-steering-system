set moduleName cnn_predict_Pipeline_VITIS_LOOP_77_2_VITIS_LOOP_78_3
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
set C_modelName {cnn_predict_Pipeline_VITIS_LOOP_77_2_VITIS_LOOP_78_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ zext_ln76 int 2 regular  }
	{ layer1_conv float 32 regular {array 15376 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ conv1_w_load float 32 regular  }
	{ sum float 32 regular  }
	{ conv1_w_load_1 float 32 regular  }
	{ conv1_w_load_2 float 32 regular  }
	{ conv1_w_load_3 float 32 regular  }
	{ conv1_w_load_4 float 32 regular  }
	{ conv1_w_load_5 float 32 regular  }
	{ conv1_w_load_6 float 32 regular  }
	{ conv1_w_load_7 float 32 regular  }
	{ conv1_w_load_8 float 32 regular  }
	{ img_read float 32 regular {array 4096 { 1 1 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln76", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "layer1_conv", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv1_w_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sum", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_w_load_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_w_load_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_w_load_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_w_load_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_w_load_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_w_load_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_w_load_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv1_w_load_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "img_read", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 50
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ zext_ln76 sc_in sc_lv 2 signal 0 } 
	{ layer1_conv_address0 sc_out sc_lv 14 signal 1 } 
	{ layer1_conv_ce0 sc_out sc_logic 1 signal 1 } 
	{ layer1_conv_we0 sc_out sc_logic 1 signal 1 } 
	{ layer1_conv_d0 sc_out sc_lv 32 signal 1 } 
	{ conv1_w_load sc_in sc_lv 32 signal 2 } 
	{ sum sc_in sc_lv 32 signal 3 } 
	{ conv1_w_load_1 sc_in sc_lv 32 signal 4 } 
	{ conv1_w_load_2 sc_in sc_lv 32 signal 5 } 
	{ conv1_w_load_3 sc_in sc_lv 32 signal 6 } 
	{ conv1_w_load_4 sc_in sc_lv 32 signal 7 } 
	{ conv1_w_load_5 sc_in sc_lv 32 signal 8 } 
	{ conv1_w_load_6 sc_in sc_lv 32 signal 9 } 
	{ conv1_w_load_7 sc_in sc_lv 32 signal 10 } 
	{ conv1_w_load_8 sc_in sc_lv 32 signal 11 } 
	{ img_read_address0 sc_out sc_lv 12 signal 12 } 
	{ img_read_ce0 sc_out sc_logic 1 signal 12 } 
	{ img_read_q0 sc_in sc_lv 32 signal 12 } 
	{ img_read_address1 sc_out sc_lv 12 signal 12 } 
	{ img_read_ce1 sc_out sc_logic 1 signal 12 } 
	{ img_read_q1 sc_in sc_lv 32 signal 12 } 
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
 	{ "name": "zext_ln76", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "zext_ln76", "role": "default" }} , 
 	{ "name": "layer1_conv_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "layer1_conv", "role": "address0" }} , 
 	{ "name": "layer1_conv_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer1_conv", "role": "ce0" }} , 
 	{ "name": "layer1_conv_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer1_conv", "role": "we0" }} , 
 	{ "name": "layer1_conv_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer1_conv", "role": "d0" }} , 
 	{ "name": "conv1_w_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv1_w_load", "role": "default" }} , 
 	{ "name": "sum", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum", "role": "default" }} , 
 	{ "name": "conv1_w_load_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv1_w_load_1", "role": "default" }} , 
 	{ "name": "conv1_w_load_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv1_w_load_2", "role": "default" }} , 
 	{ "name": "conv1_w_load_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv1_w_load_3", "role": "default" }} , 
 	{ "name": "conv1_w_load_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv1_w_load_4", "role": "default" }} , 
 	{ "name": "conv1_w_load_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv1_w_load_5", "role": "default" }} , 
 	{ "name": "conv1_w_load_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv1_w_load_6", "role": "default" }} , 
 	{ "name": "conv1_w_load_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv1_w_load_7", "role": "default" }} , 
 	{ "name": "conv1_w_load_8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv1_w_load_8", "role": "default" }} , 
 	{ "name": "img_read_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "img_read", "role": "address0" }} , 
 	{ "name": "img_read_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_read", "role": "ce0" }} , 
 	{ "name": "img_read_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "img_read", "role": "q0" }} , 
 	{ "name": "img_read_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "img_read", "role": "address1" }} , 
 	{ "name": "img_read_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_read", "role": "ce1" }} , 
 	{ "name": "img_read_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "img_read", "role": "q1" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "cnn_predict_Pipeline_VITIS_LOOP_77_2_VITIS_LOOP_78_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19272", "EstimateLatencyMax" : "19272",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln76", "Type" : "None", "Direction" : "I"},
			{"Name" : "layer1_conv", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "conv1_w_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "sum", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv1_w_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv1_w_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv1_w_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv1_w_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv1_w_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv1_w_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv1_w_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv1_w_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_read", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_77_2_VITIS_LOOP_78_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter11", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter11", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	cnn_predict_Pipeline_VITIS_LOOP_77_2_VITIS_LOOP_78_3 {
		zext_ln76 {Type I LastRead 0 FirstWrite -1}
		layer1_conv {Type O LastRead -1 FirstWrite 55}
		conv1_w_load {Type I LastRead 0 FirstWrite -1}
		sum {Type I LastRead 0 FirstWrite -1}
		conv1_w_load_1 {Type I LastRead 0 FirstWrite -1}
		conv1_w_load_2 {Type I LastRead 0 FirstWrite -1}
		conv1_w_load_3 {Type I LastRead 0 FirstWrite -1}
		conv1_w_load_4 {Type I LastRead 0 FirstWrite -1}
		conv1_w_load_5 {Type I LastRead 0 FirstWrite -1}
		conv1_w_load_6 {Type I LastRead 0 FirstWrite -1}
		conv1_w_load_7 {Type I LastRead 0 FirstWrite -1}
		conv1_w_load_8 {Type I LastRead 0 FirstWrite -1}
		img_read {Type I LastRead 5 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "19272", "Max" : "19272"}
	, {"Name" : "Interval", "Min" : "19272", "Max" : "19272"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln76 { ap_none {  { zext_ln76 in_data 0 2 } } }
	layer1_conv { ap_memory {  { layer1_conv_address0 mem_address 1 14 }  { layer1_conv_ce0 mem_ce 1 1 }  { layer1_conv_we0 mem_we 1 1 }  { layer1_conv_d0 mem_din 1 32 } } }
	conv1_w_load { ap_none {  { conv1_w_load in_data 0 32 } } }
	sum { ap_none {  { sum in_data 0 32 } } }
	conv1_w_load_1 { ap_none {  { conv1_w_load_1 in_data 0 32 } } }
	conv1_w_load_2 { ap_none {  { conv1_w_load_2 in_data 0 32 } } }
	conv1_w_load_3 { ap_none {  { conv1_w_load_3 in_data 0 32 } } }
	conv1_w_load_4 { ap_none {  { conv1_w_load_4 in_data 0 32 } } }
	conv1_w_load_5 { ap_none {  { conv1_w_load_5 in_data 0 32 } } }
	conv1_w_load_6 { ap_none {  { conv1_w_load_6 in_data 0 32 } } }
	conv1_w_load_7 { ap_none {  { conv1_w_load_7 in_data 0 32 } } }
	conv1_w_load_8 { ap_none {  { conv1_w_load_8 in_data 0 32 } } }
	img_read { ap_memory {  { img_read_address0 mem_address 1 12 }  { img_read_ce0 mem_ce 1 1 }  { img_read_q0 in_data 0 32 }  { img_read_address1 MemPortADDR2 1 12 }  { img_read_ce1 MemPortCE2 1 1 }  { img_read_q1 in_data 0 32 } } }
}
