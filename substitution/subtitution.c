#include <cs50.h>
#include <ctype.h>
#include <stdio.h>
#include <string.h>

int checker(char a, char s[]);

int main(int argc, string argv[])
{
    if (argc == 2)
    {

        cipher  = tolower(argv[1])
        int length = strlen(argv[1]);
        for (int i=0; i<length; i++)
        {
            
        }
        char alphabet[26] = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};
        char alpha[26] = {"/"};
        for (int i=0; i<length; i++)
        {
            if (checker(chiper[i], alpha) == 0)
            {
                alpha[i] = chiper[i];
            }

        }
        if (length == 26) && (checker("/", alpha) == 0)
        {
            string x = get_string("plaintext: ")
            length_x = strlen(x)
            for (int i = 0; i < lenght_x; i++)
            {

            }
        }
        else
        {
            printf("Invalid cipher\n");
        }
    }
    else
    {
        return 1
    }

}

int checker(char a, char s[])
{
    int length = strlen(s);
    for (int i=0; i< length; i++)
    {
        if (s[i] == a)
        {
            return 1;
        }
    }
    return 0;
}
