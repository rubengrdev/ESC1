#include <stdio.h>

#define N 4
#define M 6
int matriz[N][M];

void main()
{
    register int i;
    register int *punto;

    punto = &matriz[0][0];
    printf("\npunto: %p", (void *)punto);

    for (i = 0; i < N; i++)
    {
        *punto = i;
        punto = punto + M + 1;
        printf("\n*punto: %d", *punto);
        printf("\npunto = punto + M + 1: %p", (void *)punto);
        printf("\ni: %d", i);
    }
    printf("\n\n");
    for (i = 0; i < N; i++)
    {
        for(int k = 0; k < M; k++)
        {
            printf("[%d]",matriz[i][k]);
            
        }
        printf("\n");
    }
    
}
