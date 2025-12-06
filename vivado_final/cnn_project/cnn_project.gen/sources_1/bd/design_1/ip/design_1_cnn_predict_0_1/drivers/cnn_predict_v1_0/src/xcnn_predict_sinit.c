// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xcnn_predict.h"

extern XCnn_predict_Config XCnn_predict_ConfigTable[];

XCnn_predict_Config *XCnn_predict_LookupConfig(u16 DeviceId) {
	XCnn_predict_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XCNN_PREDICT_NUM_INSTANCES; Index++) {
		if (XCnn_predict_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XCnn_predict_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XCnn_predict_Initialize(XCnn_predict *InstancePtr, u16 DeviceId) {
	XCnn_predict_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XCnn_predict_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XCnn_predict_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

