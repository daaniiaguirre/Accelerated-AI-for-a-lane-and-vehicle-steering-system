// Prints all the .txt filenames inside FRAMES directory
// Run with: screen /dev/ttyUSB1 115200

#include "xil_printf.h"
#include "ff.h"

FATFS fs;
FRESULT res;

int main() {
    xil_printf("Starting SD reader app...\n");

    // Mount SD card
    res = f_mount(&fs, "0:/", 1);
    if (res != FR_OK) {
        xil_printf("ERROR: f_mount failed (FR = %d)\n", res);
        return -1;
    }

    // Open directory "FRAMES"
    DIR dir;
    FILINFO fno;

    xil_printf("Opening directory 'FRAMES'...\n");

    res = f_opendir(&dir, "0:/FRAMES");
    if (res != FR_OK) {
        xil_printf("ERROR: Failed to open directory 'FRAMES' (FR = %d)\n", res);
        return -1;
    }

    xil_printf("Listing 'FRAMES' directory:\n");

    unsigned int file_count = 0;

    while (1) {
        res = f_readdir(&dir, &fno);
        if (res != FR_OK) {
            xil_printf("ERROR: f_readdir failed (FR = %d)\n", res);
            break;
        }

        if (fno.fname[0] == 0) {
            // End of directory
            break;
        }

        if (fno.fattrib & AM_DIR) {
            // Directory entry
            xil_printf("[DIR]  %s\n", fno.fname);
        } else {
            // Regular file
            xil_printf("%s\n", fno.fname);
            file_count++;
        }
    }

    xil_printf("Total files in 'FRAMES': %u\n", file_count);

    f_closedir(&dir);

    return 0;
}

