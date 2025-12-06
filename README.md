# Autonomous Racing Lane Detection on MPSoC

This repository contains the complete source code and hardware design for a high-performance digital system capable of detecting racing lanes from a live camera feed. The system is deployed on a **Zynq UltraScale+ MPSoC**, utilizing a hardware-software co-design approach where a Convolutional Neural Network (CNN) is accelerated on the FPGA to guide the vehicle's steering.

## Project Structure

The repository is organized into six main directories, representing the workflow from model training to hardware deployment and host-side integration.

### 📂 `cnn/` (Model Training & Export)
Contains the Python scripts for designing, training, and exporting the neural network.
* **`cnn.py`**: The main Python script using TensorFlow/Keras to train the CNN. It includes the preprocessing logic and the custom function to export trained weights into a C header file.
* **`weights.h`**: The generated C header file containing the trained weights and biases, ready for inclusion in the HLS project.
* **`training_performance.jpg`**: Visualizations of the model's loss and accuracy during training.

### 📂 `dataset/`
* Contains the training data sorted into labeled folders (e.g., `0.1` for left turns, `0.5` for straight, `0.9` for right turns) used by `cnn.py`.

### 📂 `vitis_hls/` (Hardware Acceleration)
Contains the High-Level Synthesis (HLS) project used to synthesize the C++ CNN model into RTL hardware logic.
* **`cnn.cpp`**: The source code defining the hardware accelerator. It manually implements convolution, max pooling, and dense layers using optimization pragmas (pipelining, unrolling).
* **`cnn_tb.cpp`**: The testbench used to verify the C++ logic before synthesis.

### 📂 `vivado_final/` (System Integration)
Contains the **Xilinx Vivado** project files.
* This project handles the Block Design, connecting the HLS-generated CNN IP Core to the Zynq Processing System (PS) via AXI Interconnects.

### 📂 `vitis_ide/` (Embedded Software)
Contains the embedded C application code running on the ARM Cortex-A53 processor (Zynq PS) via the **Vitis IDE**.
* **`images_uart_main.c`**: The source code for application that receives image frames via UART from a PC, runs the accelerator, and prints the steering prediction.
* **`read_sd_main.c`**: The source code for the Validation test. It reads pre-processed image text files from an SD card to verify the accelerator's accuracy and measure execution latency.

### 📂 `ros2_ws/` (Host-Side Processing)
Contains the ROS2 workspace executed on the host laptop to facilitate live streaming.
* **`img_to_uart`**: A custom ROS2 node that subscribes to the USB camera publisher. It handles image preprocessing (resizing, grayscale conversion, normalization) to match the CNN input requirements and streams the data to the MPSoC board via a serial (UART) connection.

---

## System Overview

1.  **AI Model:** A lightweight CNN trained to regress steering angles from 64x64 grayscale images.
2.  **FPGA Acceleration:** The computationally intensive convolution layers are offloaded to the Programmable Logic (PL).
3.  **Host Integration:** A ROS2-based pipeline captures and streams live camera data to the board.
4.  **Validation:** The system is verified using both live UART streaming and static SD card data to ensure domain adaptation and timing constraints are met.

## Tools Used
* **Python 3** (TensorFlow/Keras, OpenCV)
* **Xilinx Vitis HLS** (2023.2 or compatible)
* **Xilinx Vivado** (Block Design & Bitstream Generation)
* **Xilinx Vitis IDE** (Embedded C Application)
* **ROS2** (Host-side camera drivers and UART bridge)