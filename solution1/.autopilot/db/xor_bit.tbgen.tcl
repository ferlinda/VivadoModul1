set C_TypeInfoList {{ 
"xor_bit" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"in1": [[],"0"] }, {"in2": [[],"0"] }, {"out": [[],{ "pointer": "0"}] }],[],""], 
"0": [ "uint4", {"typedef": [[[], {"scalar": "uint4"}],""]}]
}}
set moduleName xor_bit
set isCombinational 1
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {xor_bit}
set C_modelType { void 0 }
set C_modelArgList {
	{ in1 uint 4 regular  }
	{ in2 uint 4 regular  }
	{ out_r int 4 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in1", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "in1","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "in2", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "in2","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "out_r", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "out","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 8
set portList { 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in1 sc_in sc_lv 4 signal 0 } 
	{ in2 sc_in sc_lv 4 signal 1 } 
	{ out_r sc_out sc_lv 4 signal 2 } 
	{ out_r_ap_vld sc_out sc_logic 1 outvld 2 } 
}
set NewPortList {[ 
	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in1", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in1", "role": "default" }} , 
 	{ "name": "in2", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in2", "role": "default" }} , 
 	{ "name": "out_r", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_r", "role": "default" }} , 
 	{ "name": "out_r_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_r", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "xor_bit",
		"VariableLatency" : "0",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "1",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "in1", "Type" : "None", "Direction" : "I"},
		{"Name" : "in2", "Type" : "None", "Direction" : "I"},
		{"Name" : "out_r", "Type" : "Vld", "Direction" : "O"}]}]}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set Spec2ImplPortList { 
	in1 { ap_none {  { in1 in_data 0 4 } } }
	in2 { ap_none {  { in2 in_data 0 4 } } }
	out_r { ap_vld {  { out_r out_data 1 4 }  { out_r_ap_vld out_vld 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
