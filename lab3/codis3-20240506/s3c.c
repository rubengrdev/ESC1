#include <stdio.h>

char str1[] = "patateta";
char str2[] = "patatona";
int num = 0;
void main()
{
    register int i = 0;
    while ((str1[i] != 0) && (str2[i] != 0))
    {
        if (str1[i] == str2[i])
            num++;
        i++;
         printf("\n%d\n", num);
    }
   
}
    