#include <stdio.h>

int mat[3][4] = {{1, 2, 3, 4},
                 {5, 6, 7, 8},
                 {9, 10, -3, -2}};
int sump = 0;
void main()
{
    register int i = 0;
    for (i = 0; i < 3; i++)
    {
        sump += mat[i][0];
        sump += mat[i][2];
    }
    printf("sump = %d\n", sump);
}