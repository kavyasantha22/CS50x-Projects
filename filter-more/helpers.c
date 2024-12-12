#include "helpers.h"
#include <math.h>

// Convert image to grayscale
void grayscale(int height, int width, RGBTRIPLE image[height][width])
{
    for (int i = 0; i < height; i++)
    {
        for (int j = 0; j < width; j++)
        {
            int average =
                round((image[i][j].rgbtBlue + image[i][j].rgbtGreen + image[i][j].rgbtRed) / 3.0);
            image[i][j].rgbtBlue = (BYTE) average;
            image[i][j].rgbtGreen = (BYTE) average;
            image[i][j].rgbtRed = (BYTE) average;
        }
    }
    return;
}

// Reflect image horizontally
void reflect(int height, int width, RGBTRIPLE image[height][width])
{
    for (int i = 0; i < height; i++)
    {
        for (int j = 0; j < floor(width / 2.0); j++)
        {
            RGBTRIPLE temp = image[i][j];
            image[i][j] = image[i][width - 1 - j];
            image[i][width - 1 - j] = temp;
        }
    }
    return;
}

// Blur image
void blur(int height, int width, RGBTRIPLE image[height][width])
{
    RGBTRIPLE temp[height][width];
    for (int i = 0; i < height; i++)
    {
        for (int j = 0; j < width; j++)
        {
            int totalRed = 0, totalGreen = 0, totalBlue = 0;
            int count = 0;
            for (int di = -1; di <= 1; di++)
            {
                for (int dj = -1; dj <= 1; dj++)
                {
                    int ni = i + di;
                    int nj = j + dj;
                    if (ni >= 0 && ni < height && nj >= 0 && nj < width)
                    {
                        totalRed += image[ni][nj].rgbtRed;
                        totalGreen += image[ni][nj].rgbtGreen;
                        totalBlue += image[ni][nj].rgbtBlue;
                        count++;
                    }
                }
            }
            temp[i][j].rgbtRed = round((float) totalRed / count);
            temp[i][j].rgbtGreen = round((float) totalGreen / count);
            temp[i][j].rgbtBlue = round((float) totalBlue / count);
        }
    }
    for (int i = 0; i < height; i++)
    {
        for (int j = 0; j < width; j++)
        {
            image[i][j] = temp[i][j];
        }
    }
    return;
}

// Detect edges
void edges(int height, int width, RGBTRIPLE image[height][width])
{
    RGBTRIPLE temp[height][width];
    int gX[][3] = {{-1, 0, 1}, {-2, 0, 2}, {-1, 0, 1}};
    int gY[][3] = {{-1, -2, -1}, {0, 0, 0}, {1, 2, 1}};
    for (int i = 0; i < height; i++)
    {
        for (int j = 0; j < width; j++)
        {
            int totalRedX = 0, totalGreenX = 0, totalBlueX = 0;
            int totalRedY = 0, totalGreenY = 0, totalBlueY = 0;
            for (int di = 0; di <= 2; di++)
            {
                for (int dj = 0; dj <= 2; dj++)
                {
                    int ni = i - 1 + di;
                    int nj = j - 1 + dj;
                    if (ni >= 0 && ni < height && nj >= 0 && nj < width)
                    {
                        totalRedX += image[ni][nj].rgbtRed * gX[di][dj];
                        totalGreenX += image[ni][nj].rgbtGreen * gX[di][dj];
                        totalBlueX += image[ni][nj].rgbtBlue * gX[di][dj];
                        totalRedY += image[ni][nj].rgbtRed * gY[di][dj];
                        totalGreenY += image[ni][nj].rgbtGreen * gY[di][dj];
                        totalBlueY += image[ni][nj].rgbtBlue * gY[di][dj];
                    }
                }
            }
            temp[i][j].rgbtRed =
                fmin(round(sqrt(totalRedX * totalRedX + totalRedY * totalRedY)), 255);
            temp[i][j].rgbtGreen =
                fmin(round(sqrt(totalGreenX * totalGreenX + totalGreenY * totalGreenY)), 255);
            temp[i][j].rgbtBlue =
                fmin(round(sqrt(totalBlueX * totalBlueX + totalBlueY * totalBlueY)), 255);
        }
    }
    for (int i = 0; i < height; i++)
    {
        for (int j = 0; j < width; j++)
        {
            image[i][j] = temp[i][j];
        }
    }
    return;
}
