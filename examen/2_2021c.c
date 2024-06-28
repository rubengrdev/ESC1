#include <stdio.h>



void main(){
    float N = 7.3;
    float a = 5.0;
    float b = 1.0;
    float res = 0.0;
    //cambiar el signo de la expresión
    if(a >= N){
        res = a + b*N;
    }
    printf("res = %f\n", res);
}