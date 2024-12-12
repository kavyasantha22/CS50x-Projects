#include <cs50.h>
#include <math.h>
#include <stdio.h>

int main(void)
{
    long x = get_long("Input Card Number: ");
    int length = (int) log10(x) + 1;
    int sum = 0;
    for (int i = 0; i < length; i++)
    {
        if (i % 2 == 0)
        {
            long digit1 = x / ((long) pow(10, i)) % 10;
            printf("%li\n", digit1);
            sum += digit1 % 10;
        }
        else
        {
            long digit2 = 2 * (x / (long) pow(10, i) % 10);
            printf("%li\n", digit2);
            sum += digit2 / 10 + digit2 % 10;
        }
    }
    printf("%i\n", sum);
    if (sum % 10 == 0)
    {
        long startDigits = x / (long) pow(10, length - 2);
        if (length == 15 && (startDigits == 34 || startDigits == 37))
        {
            printf("AMEX\n");
        }
        else if (length == 16 && (startDigits >= 51 && startDigits <= 55))
        {
            printf("MASTERCARD\n");
        }
        else if ((length == 13 || length == 16) && (x / (long) pow(10, length - 1) == 4))
        {
            printf("VISA\n");
        }
        else
        {
            printf("INVALID\n");
        }
    }
    else
    {
        printf("INVALID\n");
    }
}
