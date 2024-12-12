#include <cs50.h>
#include <ctype.h>
#include <math.h>
#include <stdio.h>
#include <string.h>

int main(void)
{
    string sentence = get_string("Text: ");
    int length = strlen(sentence);
    int l = 0;
    int s = 0;
    int words = 1;
    for (int i = 0; i < length; i++)
    {
        if (sentence[i] == ' ')
        {
            words += 1;
        }
        else if (sentence[i] == '.' || sentence[i] == '!' || sentence[i] == '?')
        {
            s += 1;
        }
        else if ((sentence[i] <= 90 && sentence[i] >= 65) ||
                 (sentence[i] <= 122 && sentence[i] >= 97))
        {
            l += 1;
        }
    }
    float grade = 0.0588 * (l * 100.0 / words) - 0.296 * (s * 100.0 / words) - 15.8;
    int grade_int = round(grade);
    printf("%f\n", grade);
    if (grade < 1)
    {
        printf("Before Grade 1\n");
    }
    else if (grade > 16)
    {
        printf("Grade 16+\n");
    }
    else
    {
        printf("Grade %i\n", grade_int);
    }
}
