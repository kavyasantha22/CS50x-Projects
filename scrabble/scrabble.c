#include <cs50.h>
#include <ctype.h>
#include <stdio.h>
#include <string.h>

int value_counter(char word[], int length, int value[]);

int main(void)
{
    int scrabble_value[] = {1, 3, 3, 2,  1, 4, 2, 4, 1, 8, 5, 1, 3,
                            1, 1, 3, 10, 1, 1, 1, 1, 4, 4, 8, 4, 10};
    string word1 = get_string("Player 1: ");
    string word2 = get_string("Player 2: ");
    int length_word[] = {strlen(word1), strlen(word2)};
    int points_word[] = {value_counter(word1, length_word[0], scrabble_value),
                         value_counter(word2, length_word[1], scrabble_value)};
    if (points_word[0] > points_word[1])
    {
        printf("Player 1 wins!\n");
        return 0;
    }
    else if (points_word[0] < points_word[1])
    {
        printf("Player 2 wins!\n");
        return 0;
    }
    else
    {
        printf("Tie!\n");
        return 0;
    }
}

int value_counter(char word[], int length, int value[])
{
    int points = 0;
    for (int i = 0; i < length; i++)
    {

        int num_char = word[i];
        if ((num_char < 65) || (num_char > 122) || ((num_char > 90) && (num_char < 97)))
        {
            points += 0;
            continue;
        }
        if ((num_char >= 65) && (num_char <= 90))
        {
            num_char = num_char + 32;
        }
        // printf("%i\n", value[num_char]);
        // printf("%c\n", value[num_char]);
        // printf("%i\n", value[num_char-97]);
        points += value[num_char - 97];
    }
    return points;
}
