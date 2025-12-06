# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/dani/Desktop/SDU_Master/EmbeddedSystems/final_assignment/vitis_ide/cnn_project/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/dani/Desktop/SDU_Master/EmbeddedSystems/final_assignment/vitis_ide/cnn_project/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {cnn_project}\
-hw {/home/dani/Desktop/SDU_Master/EmbeddedSystems/final_assignment/vivado_final/cnn_project/final_bitstream.xsa}\
-proc {psu_cortexa53_0} -os {standalone} -arch {64-bit} -fsbl-target {psu_cortexa53_0} -out {/home/dani/Desktop/SDU_Master/EmbeddedSystems/final_assignment/vitis_ide}

platform write
platform generate -domains 
platform active {cnn_project}
domain active {zynqmp_fsbl}
bsp reload
bsp reload
platform generate
domain active {standalone_domain}
bsp reload
bsp setlib -name xilffs -ver 4.8
bsp write
bsp reload
catch {bsp regenerate}
platform clean
platform generate
bsp reload
bsp reload
bsp config stdin "psu_uart_1"
bsp config stdout "psu_uart_1"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_domain 
bsp write
bsp reload
bsp write
platform generate -domains 
platform clean
platform generate
platform clean
platform generate
bsp config enable_multi_partition "false"
bsp config fs_interface "1"
bsp reload
bsp reload
bsp config read_only "false"
bsp config use_strfunc "1"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_domain 
platform active {cnn_project}
bsp reload
bsp reload
domain active {zynqmp_pmufw}
bsp reload
bsp reload
domain active {zynqmp_fsbl}
bsp reload
bsp reload
platform generate
platform generate
