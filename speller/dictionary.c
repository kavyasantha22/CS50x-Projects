// Implements a dictionary's functionality

#include "dictionary.h"
#include <ctype.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Represents a node in a hash table
typedef struct node
{
    char word[LENGTH + 2];
    struct node *next;
} node;

// Declare functions
bool input(int index, char *buffer);
void freenode(node *y);
bool searchnode(node *x, const char *word);

// TODO: Choose number of buckets in hash table
const unsigned int N = 75000;

// Hash table
node *table[N];
int hash_size = 0;

bool loaded = false;
// Returns true if word is in dictionary, else false
bool check(const char *word)
{
    char copy[LENGTH + 2];
    strcpy(copy, word);
    for (int i = 0; copy[i]; i++)
    {
        copy[i] = tolower((unsigned char) copy[i]);
    }
    int index = hash((const char *) copy);
    if (searchnode(table[index], copy))
    {
        return true;
    }
    return false;
}

// Hashes word to a number
unsigned int hash(const char *word) //djb2 hash function
{
    unsigned long hash = 5381;
    int c;

    while ((c = *word++))
    {
        hash = ((hash << 5) + hash) + c; // hash * 33 + c
    }

    return hash % N;
}

// Loads dictionary into memory, returning true if successful, else false
bool load(const char *dictionary)
{
    FILE *dict = fopen(dictionary, "r");
    if (dict == NULL)
    {
        return false;
    }
    char buffer[LENGTH + 2];
    while (fgets(buffer, sizeof(buffer), dict))
    {
        buffer[strcspn(buffer, "\n")] = '\0';
        for (int i = 0; buffer[i]; i++)
        {
            buffer[i] = tolower((unsigned char) buffer[i]);
        }
        int index = hash(buffer);
        if (input(index, buffer) == false)
        {
            return false;
        }
        hash_size++;
    }
    fclose(dict);
    loaded = true;
    return true;
}

// Returns number of words in dictionary if loaded, else 0 if not yet loaded
unsigned int size(void)
{
    if (loaded)
    {
        return hash_size;
    }
    return 0;
}

// Unloads dictionary from memory, returning true if successful, else false
bool unload(void)
{
    for (int i = 0; i < N; i++)
    {
        freenode(table[i]);
    }
    return true;
}

void freenode(node *y)
{
    if (y == NULL)
    {
        return;
    }
    else
    {
        freenode(y->next);
        free(y);
    }
}

bool input(int index, char *buffer)
{
    node *new_node = malloc(sizeof(node));
    if (new_node == NULL)
    {
        return false;
    }
    strcpy(new_node->word, buffer);
    new_node->next = table[index];
    table[index] = new_node;
    return true;
}

bool searchnode(node *x, const char *word)
{
    if (x == NULL)
    {
        return false;
    }
    else if (strcmp(x->word, word) == 0)
    {
        return true;
    }
    else
    {
        return searchnode(x->next, word);
    }
}
