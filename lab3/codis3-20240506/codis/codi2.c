
#include <stdio.h>

int mat[3][4] = {{1, 2, 3, 4},
                 {5, 6, 7, 8},
                 {9, 10, -3, -2}};
int max = 0;

void main()
{
    register int i, j = 0;
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 4; j++)
        {
            if (mat[i][j] > max)
                max = mat[i][j];
        }
    }
    printf("max = %d\n", max);
}