#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
    if (argc != 2)
    {
        return 1;
    }
    FILE *input = fopen(argv[1], "rb");
    char filename[10];
    typedef uint8_t BYTE;
    BYTE *buffer = malloc(512 * sizeof(BYTE));
    int count = 0;
    FILE *output = fopen("000.jpg", "wb");
    while (fread(buffer, sizeof(BYTE), 512, input) == 512){
        if (buffer[0] == 0xff && buffer[1] == 0xd8 && buffer[2] == 0xff &&
            ((buffer[3] & 0xf0) == 0xe0)){
            fclose(output);
            sprintf(filename, "%03d.jpg", count);
            output = fopen(filename, "wb");
            fwrite(buffer, sizeof(BYTE), 512, output);
            count++;
        }
        else fwrite(buffer, sizeof(BYTE), 512, output);
    }
    fclose(input);
    fclose(output);
    free(buffer);
}
