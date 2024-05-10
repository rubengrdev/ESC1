#include <stdio.h>

int vec[10] = {1, 3, 5, 7, 9, 2, 4, 6, 8, 8};
int max = 5, min = 5;
void main()
{
    register int i;
    for (i = 0; i < 10; i++)
    {
        if (vec[i] > max)
            max = vec[i];
        if (vec[i] < min)
            min = vec[i];
        printf("\n%d %d\n", max, min);
    }
}