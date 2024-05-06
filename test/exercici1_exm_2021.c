#include "stdio.h"

void main()
{
    unsigned int a, b, c;
    a = 10, b = 10, c = 10;

    while ((c > a) && (c < b))
    {
        c = (c + 1) * (c - 1);
        if (c >= (a * b))
            break;
    }
    printf("c = %d\n", c);
}