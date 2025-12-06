#include <hls_math.h>
#include "weights.h" // Generated from the cnn.py

// --- DIMENSIONS (Must match cnn.py) ---
#define IMG_H 64
#define IMG_W 64
#define CHANNELS 1

// Layer 1: Conv2D(4, 3x3) -> MaxPool(2x2)
// Input: 64x64 -> Conv (Valid): 62x62 -> Pool: 31x31
#define L1_CONV_SIZE 62
#define L1_POOL_SIZE 31
#define L1_FILTERS 4

// Layer 2: Conv2D(8, 3x3) -> MaxPool(2x2)
// Input: 31x31 -> Conv (Valid): 29x29 -> Pool: 14x14
#define L2_CONV_SIZE 29
#define L2_POOL_SIZE 14
#define L2_FILTERS 8

// Flatten: 14 * 14 * 8 = 1568
#define FLAT_SIZE (L2_POOL_SIZE * L2_POOL_SIZE * L2_FILTERS)
#define DENSE_SIZE 16

float img_read[IMG_H*IMG_W];

// --- HELPER FUNCTIONS ---
float relu(float x) {
    return (x > 0.0f) ? x : 0.0f;
}

float sigmoid(float x) {
    // 1 / (1 + exp(-x))
    return 1.0f / (1.0f + hls::exp(-x)); 
}

void memcpy(float *dest, float *src, int size){
	for(int i = 0; i < size; ++i){
	    #pragma HLS UNROLL factor=16
	    dest[i] = src[i];
	}
}

// --- MAIN ACCELERATOR FUNCTION ---
// We use 'float *img_in' mapped to AXI Master to read from DDR Memory
void cnn_predict(float *img_in, float *steering_out) {
    
    // Define Interfaces for Ultra96 (Zynq MPSoC)
    // m_axi: Allows FPGA to read/write RAM directly
    // s_axilite: Control registers (Start, Stop, Return Value)
	#pragma HLS RESOURCE variable=img_read core=RAM_2P_BRAM
    #pragma HLS INTERFACE m_axi depth=4096 port=img_in offset=slave bundle=gmem
    #pragma HLS INTERFACE s_axilite port=steering_out
    #pragma HLS INTERFACE s_axilite port=return

	memcpy(img_read, img_in, IMG_H*IMG_W);


    // --- BUFFERS (BRAM) ---
    // We define these locally so they synthesize into FPGA block RAM
    float layer1_conv[L1_CONV_SIZE][L1_CONV_SIZE][L1_FILTERS];
    float layer1_pool[L1_POOL_SIZE][L1_POOL_SIZE][L1_FILTERS];
    
    float layer2_conv[L2_CONV_SIZE][L2_CONV_SIZE][L2_FILTERS];
    float layer2_pool[L2_POOL_SIZE][L2_POOL_SIZE][L2_FILTERS];
    
    float flat[FLAT_SIZE];
    float dense[DENSE_SIZE];

    // ===========================
    // LAYER 1: CONV + RELU
    // ===========================
    
    for(int f=0; f<L1_FILTERS; f++) {
        for(int r=0; r<L1_CONV_SIZE; r++) {
            for(int c=0; c<L1_CONV_SIZE; c++) {
                
                float sum = conv1_b[f]; // Start with bias
                
                // 3x3 Kernel Loop
                for(int kr=0; kr<3; kr++) {
                    for(int kc=0; kc<3; kc++) {
                        // Weight Indexing: [row][col][input_ch][output_ch]
                        // Input ch is 1.
                        int w_idx = (kr * 3 * 1 * L1_FILTERS) + (kc * 1 * L1_FILTERS) + f;
                        
                        // Input Indexing: 64x64 flattened
                        int img_idx = ((r+kr) * IMG_W) + (c+kc);
                        
                        sum += img_read[img_idx] * conv1_w[w_idx];
                    }
                }
                layer1_conv[r][c][f] = relu(sum);
            }
        }
    }

    // ===========================
    // LAYER 1: MAX POOLING (2x2)
    // ===========================
    for(int f=0; f<L1_FILTERS; f++) {
        for(int r=0; r<L1_POOL_SIZE; r++) {
            for(int c=0; c<L1_POOL_SIZE; c++) {
                float max_val = -1e9f; // Small number
                for(int pr=0; pr<2; pr++) {
                    for(int pc=0; pc<2; pc++) {
                        float val = layer1_conv[r*2+pr][c*2+pc][f];
                        if(val > max_val) max_val = val;
                    }
                }
                layer1_pool[r][c][f] = max_val;
            }
        }
    }

    // ===========================
    // LAYER 2: CONV + RELU
    // ===========================
    for(int f=0; f<L2_FILTERS; f++) {
        for(int r=0; r<L2_CONV_SIZE; r++) {
            for(int c=0; c<L2_CONV_SIZE; c++) {
                float sum = conv2_b[f];
                
                for(int kr=0; kr<3; kr++) {
                    for(int kc=0; kc<3; kc++) {
                        // Previous layer (Pool1) has L1_FILTERS depth
                        for(int d=0; d<L1_FILTERS; d++) {
                             // Weight: [kr][kc][in_depth][out_depth]
                             int w_idx = (kr*3*L1_FILTERS*L2_FILTERS) + 
                                         (kc*L1_FILTERS*L2_FILTERS) + 
                                         (d*L2_FILTERS) + f;
                             
                             sum += layer1_pool[r+kr][c+kc][d] * conv2_w[w_idx];
                        }
                    }
                }
                layer2_conv[r][c][f] = relu(sum);
            }
        }
    }

    // ===========================
    // LAYER 2: MAX POOLING (2x2)
    // ===========================
    for(int f=0; f<L2_FILTERS; f++) {
        for(int r=0; r<L2_POOL_SIZE; r++) {
            for(int c=0; c<L2_POOL_SIZE; c++) {
                float max_val = -1e9f;
                for(int pr=0; pr<2; pr++) {
                    for(int pc=0; pc<2; pc++) {
                        float val = layer2_conv[r*2+pr][c*2+pc][f];
                        if(val > max_val) max_val = val;
                    }
                }
                layer2_pool[r][c][f] = max_val;
            }
        }
    }

    // ===========================
    // FLATTEN
    // ===========================
    int idx = 0;
    // Keras flattens Row -> Col -> Depth
    for(int r=0; r<L2_POOL_SIZE; r++) {
        for(int c=0; c<L2_POOL_SIZE; c++) {
            for(int f=0; f<L2_FILTERS; f++) {
                flat[idx++] = layer2_pool[r][c][f];
            }
        }
    }

    // ===========================
    // DENSE 1
    // ===========================
    for(int i=0; i<DENSE_SIZE; i++) {
        float sum = dense1_b[i];
        for(int j=0; j<FLAT_SIZE; j++) {
            // Weights: [input][output]
            int w_idx = j * DENSE_SIZE + i;
            sum += flat[j] * dense1_w[w_idx];
        }
        dense[i] = relu(sum);
    }

    // ===========================
    // OUTPUT NODE (Sigmoid)
    // ===========================
    float final_sum = output_b[0];
    for(int j=0; j<DENSE_SIZE; j++) {
        int w_idx = j * 1 + 0;
        final_sum += dense[j] * output_w[w_idx];
    }
    
    *steering_out = sigmoid(final_sum);
}
