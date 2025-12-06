#include <stdio.h>
#include <stdlib.h>

#define IMG_SIZE 64

// Declaration of your hardware function
void cnn_predict(float *img_in, float *steering_out);

// Helper to read the text file
int read_image(const char *filename, float *buffer) {
    FILE *fp = fopen(filename, "r");
    if (!fp) {
        printf("ERROR: Could not open file %s\n", filename);
        printf("Make sure the file is in the 'Test Bench' section or the 'csim/build' folder.\n");
        return 0;
    }

    for(int i = 0; i < IMG_SIZE * IMG_SIZE; i++) {
        if (fscanf(fp, "%f", &buffer[i]) != 1) {
            printf("Error reading pixel %d\n", i);
            fclose(fp);
            return 0;
        }
    }
    fclose(fp);
    return 1;
}

int main() {
    float img_buffer[IMG_SIZE * IMG_SIZE];
    float prediction = 0.0f;
    
    // The file you added to Vitis HLS
    const char *filename = "image_1.txt";

    printf("--- STARTING SINGLE IMAGE TEST ---\n");

    // 1. Load the image
    if (!read_image(filename, img_buffer)) {
        return -1; // Exit if file not found
    }

    // 2. Run the CNN
    cnn_predict(img_buffer, &prediction);

    // 3. Print Result
    printf("\nSUCCESS!\n");
    printf("Input File: %s\n", filename);
    printf("Predicted Steering: %.4f\n", prediction);

    // 4. Interpretation
    if (prediction < 0.45)      printf("Action: TURN LEFT\n");
    else if (prediction > 0.55) printf("Action: TURN RIGHT\n");
    else                        printf("Action: GO STRAIGHT\n");

    printf("----------------------------------\n");
    
    return 0;
}
