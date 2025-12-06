#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/dani/Xilinx/Vitis/2022.2/bin:/home/dani/Xilinx/Vivado/2022.2/ids_lite/ISE/bin/lin64:/home/dani/Xilinx/Vivado/2022.2/bin
else
  PATH=/home/dani/Xilinx/Vitis/2022.2/bin:/home/dani/Xilinx/Vivado/2022.2/ids_lite/ISE/bin/lin64:/home/dani/Xilinx/Vivado/2022.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/dani/Desktop/SDU_Master/EmbeddedSystems/final_assignment/vivado_final/cnn_project/cnn_project.runs/design_1_cnn_predict_0_1_synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log design_1_cnn_predict_0_1.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source design_1_cnn_predict_0_1.tcl
