# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: /home/dani/Desktop/SDU_Master/EmbeddedSystems/final_assignment/vitis_ide/read_sd_system/_ide/scripts/systemdebugger_read_sd_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source /home/dani/Desktop/SDU_Master/EmbeddedSystems/final_assignment/vitis_ide/read_sd_system/_ide/scripts/systemdebugger_read_sd_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
source /home/dani/Xilinx/Vitis/2022.2/scripts/vitis/util/zynqmp_utils.tcl
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Avnet USB-to-JTAG/UART Pod V1 1234-oj1A" && level==0 && jtag_device_ctx=="jsn-USB-to-JTAG/UART Pod V1-1234-oj1A-14710093-0"}
fpga -file /home/dani/Desktop/SDU_Master/EmbeddedSystems/final_assignment/vitis_ide/read_sd/_ide/bitstream/final_bitstream.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw /home/dani/Desktop/SDU_Master/EmbeddedSystems/final_assignment/vitis_ide/cnn_project/export/cnn_project/hw/final_bitstream.xsa -mem-ranges [list {0x80000000 0xbfffffff} {0x400000000 0x5ffffffff} {0x1000000000 0x7fffffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
set mode [expr [mrd -value 0xFF5E0200] & 0xf]
targets -set -nocase -filter {name =~ "*A53*#0"}
rst -processor
dow /home/dani/Desktop/SDU_Master/EmbeddedSystems/final_assignment/vitis_ide/cnn_project/export/cnn_project/sw/cnn_project/boot/fsbl.elf
set bp_34_41_fsbl_bp [bpadd -addr &XFsbl_Exit]
con -block -timeout 60
bpremove $bp_34_41_fsbl_bp
targets -set -nocase -filter {name =~ "*A53*#0"}
rst -processor
dow /home/dani/Desktop/SDU_Master/EmbeddedSystems/final_assignment/vitis_ide/read_sd/Debug/read_sd.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A53*#0"}
con
