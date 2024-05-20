#include <stdio.h>

void main()
{
    int a = 3;
    int b = 5;
    int *puntoA = &a;
    int *puntoB = &b;

    printf("\nBefore:\na = %d, b = %d\n", a, b);
    printf("puntoA = %p, puntoB = %p\n", puntoA, puntoB);
    // aquí comienzan los apartados
    puntoA += 2;
    *puntoA -= 2;
    *puntoA = 33;
    printf("\nAfter\na = %d, b = %d\n", a, b);
    printf("puntoA = %p, puntoB = %p\n", puntoA, puntoB);
}