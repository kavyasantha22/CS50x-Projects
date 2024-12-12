#include <cs50.h>
#include <ctype.h>
#include <stdio.h>
#include <string.h>

int checker(int a, int s[], int length);

int main(int argc, string argv[])

{
    if (argc != 2)
    {
        printf("Invalid input\n");
        return 1;
    }
    string plain = argv[1];
    int length = strlen(plain);
    int alphabet[26] = {97,  98,  99,  100, 101, 102, 103, 104, 105, 106, 107, 108, 109,
                        110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122};
    int cipher[length];
    // check length
    if (length != 26)
    {
        printf("Cipher's length is not 26\n");
        return 1;
    }
    for (int i = 0; i < length; i++)
    {
        if (!isalpha(plain[i]))
        {
            printf("There are characters outside alphabets.\n");
            return 1;
        }
        // convert to number
        int x = plain[i];
        // convert all to lowercase
        if ((x >= 65) && (x <= 90))
        {
            x = x + 32;
        }
        // check if letter appear more than once
        if (checker(x, cipher, length) != -1)
        {
            printf("Some letters appear more than once");
            return 1;
        }
        cipher[i] = x;
    }
    string plain_text = get_string("plaintext: ");
    int length_text = strlen(plain_text);
    int cipher_text[length_text];
    int cap[length_text];
    printf("ciphertext: ");
    for (int j = 0; j < length_text; j++)
    {
        int int_plain = plain_text[j];
        /*if ((int) plain_text[j]-48 >= 0 && (int) plain_text[j]-48 <= 9)
        {
            printf("%i", plain_text[j]-48);
        }
        else if (plain_text[j])*/
        if ((int_plain < 65) || (int_plain > 122))
        {
            printf("%c", plain_text[j]);
        }
        else if ((int_plain >= 65) && (int_plain <= 90))
        {
            int_plain = int_plain + 32;
            int index = checker(int_plain, alphabet, length);
            int cipher_cap = cipher[index] - 32;
            printf("%c", cipher_cap);
        }
        else
        {
            int index = checker(int_plain, alphabet, length);
            printf("%c", cipher[index]);
        }
    }
    printf("\n");
}

int checker(int a, int s[], int length)
{
    for (int i = 0; i < length; i++)
    {
        if (s[i] == a)
        {
            return i;
        }
    }
    return -1;
}
