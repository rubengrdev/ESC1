#include <stdio.h>

float f = -1.0, g = -2.0;
int i = 0;
void main()
{
    if (f <= g) i = 1;
    printf("!!! -> i = %d\n", i);
}