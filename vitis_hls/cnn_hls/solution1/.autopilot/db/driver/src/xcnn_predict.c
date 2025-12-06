// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xcnn_predict.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XCnn_predict_CfgInitialize(XCnn_predict *InstancePtr, XCnn_predict_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XCnn_predict_Start(XCnn_predict *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_predict_ReadReg(InstancePtr->Control_BaseAddress, XCNN_PREDICT_CONTROL_ADDR_AP_CTRL) & 0x80;
    XCnn_predict_WriteReg(InstancePtr->Control_BaseAddress, XCNN_PREDICT_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XCnn_predict_IsDone(XCnn_predict *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_predict_ReadReg(InstancePtr->Control_BaseAddress, XCNN_PREDICT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XCnn_predict_IsIdle(XCnn_predict *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_predict_ReadReg(InstancePtr->Control_BaseAddress, XCNN_PREDICT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XCnn_predict_IsReady(XCnn_predict *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_predict_ReadReg(InstancePtr->Control_BaseAddress, XCNN_PREDICT_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XCnn_predict_EnableAutoRestart(XCnn_predict *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_predict_WriteReg(InstancePtr->Control_BaseAddress, XCNN_PREDICT_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XCnn_predict_DisableAutoRestart(XCnn_predict *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_predict_WriteReg(InstancePtr->Control_BaseAddress, XCNN_PREDICT_CONTROL_ADDR_AP_CTRL, 0);
}

void XCnn_predict_Set_img_in(XCnn_predict *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_predict_WriteReg(InstancePtr->Control_BaseAddress, XCNN_PREDICT_CONTROL_ADDR_IMG_IN_DATA, (u32)(Data));
    XCnn_predict_WriteReg(InstancePtr->Control_BaseAddress, XCNN_PREDICT_CONTROL_ADDR_IMG_IN_DATA + 4, (u32)(Data >> 32));
}

u64 XCnn_predict_Get_img_in(XCnn_predict *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_predict_ReadReg(InstancePtr->Control_BaseAddress, XCNN_PREDICT_CONTROL_ADDR_IMG_IN_DATA);
    Data += (u64)XCnn_predict_ReadReg(InstancePtr->Control_BaseAddress, XCNN_PREDICT_CONTROL_ADDR_IMG_IN_DATA + 4) << 32;
    return Data;
}

u32 XCnn_predict_Get_steering_out(XCnn_predict *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_predict_ReadReg(InstancePtr->Control_BaseAddress, XCNN_PREDICT_CONTROL_ADDR_STEERING_OUT_DATA);
    return Data;
}

u32 XCnn_predict_Get_steering_out_vld(XCnn_predict *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_predict_ReadReg(InstancePtr->Control_BaseAddress, XCNN_PREDICT_CONTROL_ADDR_STEERING_OUT_CTRL);
    return Data & 0x1;
}

void XCnn_predict_InterruptGlobalEnable(XCnn_predict *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_predict_WriteReg(InstancePtr->Control_BaseAddress, XCNN_PREDICT_CONTROL_ADDR_GIE, 1);
}

void XCnn_predict_InterruptGlobalDisable(XCnn_predict *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_predict_WriteReg(InstancePtr->Control_BaseAddress, XCNN_PREDICT_CONTROL_ADDR_GIE, 0);
}

void XCnn_predict_InterruptEnable(XCnn_predict *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCnn_predict_ReadReg(InstancePtr->Control_BaseAddress, XCNN_PREDICT_CONTROL_ADDR_IER);
    XCnn_predict_WriteReg(InstancePtr->Control_BaseAddress, XCNN_PREDICT_CONTROL_ADDR_IER, Register | Mask);
}

void XCnn_predict_InterruptDisable(XCnn_predict *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCnn_predict_ReadReg(InstancePtr->Control_BaseAddress, XCNN_PREDICT_CONTROL_ADDR_IER);
    XCnn_predict_WriteReg(InstancePtr->Control_BaseAddress, XCNN_PREDICT_CONTROL_ADDR_IER, Register & (~Mask));
}

void XCnn_predict_InterruptClear(XCnn_predict *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_predict_WriteReg(InstancePtr->Control_BaseAddress, XCNN_PREDICT_CONTROL_ADDR_ISR, Mask);
}

u32 XCnn_predict_InterruptGetEnabled(XCnn_predict *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCnn_predict_ReadReg(InstancePtr->Control_BaseAddress, XCNN_PREDICT_CONTROL_ADDR_IER);
}

u32 XCnn_predict_InterruptGetStatus(XCnn_predict *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCnn_predict_ReadReg(InstancePtr->Control_BaseAddress, XCNN_PREDICT_CONTROL_ADDR_ISR);
}

