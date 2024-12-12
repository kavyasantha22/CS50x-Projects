#include <cs50.h>
#include <stdio.h>

int main(void)
{
    int n = 0;
    while (n <= 0)
    {
        n = get_int("Input integer: ");
    }
    for (int x = 0; x < n; x++)
    {
        for (int k = 0; k < n - x - 1; k++)
        {
            printf(" ");
        }
        for (int l = 0; l < x + 1; l++)
        {
            printf("#");
        }

        printf("  ");

        for (int j = 0; j < x + 1; j++)
        {
            printf("#");
        }

        printf("\n");
    }
}
