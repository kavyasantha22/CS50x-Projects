#include <stdio.h>

int main(void)
{
    FILE *fileread;
    fileread = fopen("original.txt", "r");
    FILE *filewrite;
    filewrite = fopen("copy.txt", "a");
    char ch;
    while((ch = fgetc(fileread)) != EOF)
    {
        fputc(ch, filewrite);
    }
}
