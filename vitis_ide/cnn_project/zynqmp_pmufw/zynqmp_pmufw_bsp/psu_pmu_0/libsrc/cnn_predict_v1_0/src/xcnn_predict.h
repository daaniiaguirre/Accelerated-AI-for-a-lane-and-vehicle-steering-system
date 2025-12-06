// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XCNN_PREDICT_H
#define XCNN_PREDICT_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xcnn_predict_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
} XCnn_predict_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XCnn_predict;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XCnn_predict_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XCnn_predict_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XCnn_predict_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XCnn_predict_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XCnn_predict_Initialize(XCnn_predict *InstancePtr, u16 DeviceId);
XCnn_predict_Config* XCnn_predict_LookupConfig(u16 DeviceId);
int XCnn_predict_CfgInitialize(XCnn_predict *InstancePtr, XCnn_predict_Config *ConfigPtr);
#else
int XCnn_predict_Initialize(XCnn_predict *InstancePtr, const char* InstanceName);
int XCnn_predict_Release(XCnn_predict *InstancePtr);
#endif

void XCnn_predict_Start(XCnn_predict *InstancePtr);
u32 XCnn_predict_IsDone(XCnn_predict *InstancePtr);
u32 XCnn_predict_IsIdle(XCnn_predict *InstancePtr);
u32 XCnn_predict_IsReady(XCnn_predict *InstancePtr);
void XCnn_predict_EnableAutoRestart(XCnn_predict *InstancePtr);
void XCnn_predict_DisableAutoRestart(XCnn_predict *InstancePtr);

void XCnn_predict_Set_img_in(XCnn_predict *InstancePtr, u64 Data);
u64 XCnn_predict_Get_img_in(XCnn_predict *InstancePtr);
u32 XCnn_predict_Get_steering_out(XCnn_predict *InstancePtr);
u32 XCnn_predict_Get_steering_out_vld(XCnn_predict *InstancePtr);

void XCnn_predict_InterruptGlobalEnable(XCnn_predict *InstancePtr);
void XCnn_predict_InterruptGlobalDisable(XCnn_predict *InstancePtr);
void XCnn_predict_InterruptEnable(XCnn_predict *InstancePtr, u32 Mask);
void XCnn_predict_InterruptDisable(XCnn_predict *InstancePtr, u32 Mask);
void XCnn_predict_InterruptClear(XCnn_predict *InstancePtr, u32 Mask);
u32 XCnn_predict_InterruptGetEnabled(XCnn_predict *InstancePtr);
u32 XCnn_predict_InterruptGetStatus(XCnn_predict *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
