#include <cs50.h>
#include <stdio.h>
#include <math.h>
#include <string.h>
#include <ctype.h>

int main(void) {
    FILE *dict = fopen("large", "r");
    if (dict == NULL) {
        printf("Failed to open file.\n");
        return 1;
    }
    int max = 0;
    int X = 46;
    char buffer[X];
    while (fgets(buffer, sizeof(buffer), dict)) {
        int temp = 0;
        for (int i = 0; buffer[i] && i < X; i++) {
            buffer[i] = tolower((unsigned char)buffer[i]);
            temp += buffer[i];
        }

        if (temp > max) {
            max = temp;
        }
    }
    fclose(dict);
    printf("%i\n", max);
    return 0;
}
