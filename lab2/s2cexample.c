#include <stdio.h>

float parcial = 5.0;
float laboratori = 9.0;
float examen_f = 7.0;
float nota_acta = 0.0;
void main(){
    register float tmp_nota;
    nota_acta = 0.6 * examen_f;
    if (examen_f > parcial)
        nota_acta += 0.2 * examen_f;
    else
        nota_acta += 0.2 * parcial;
    if (examen_f > laboratori)
        tmp_nota = examen_f;
    else
        tmp_nota = laboratori;
    nota_acta += 0.2 * tmp_nota;
    printf("\nNota acta: %f\n", nota_acta);
    printf("\ntmp_nota: %f\n", tmp_nota);
}