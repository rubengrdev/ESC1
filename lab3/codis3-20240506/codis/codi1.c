#include <stdio.h>

int mat[3][4] = {{1, 2, 3, 4},
                 {5, 6, 7, 8},
                 {9, 10, -3, -2}};
int sumi = 0;
void main()
{
    register int i = 0;
    for (i = 0; i < 3; i++)
    {
        sumi += mat[i][1];
        sumi += mat[i][3];
    }
    printf("sumi = %d\n", sumi);
}