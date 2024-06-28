#include <stdio.h>

struct tt {
    float a;
    char b;
    int c;
};

void examen(struct tt p1[100], int p2){
    register int i;
    register struct tt *p;
    p = p1;
    for(i = 0; i < 100; i++){
        *p[i]->c = 0;
        p->c = 0;
        printf("%d\n", p->c);
        p++;
        printf("%d\n", p);
    }
   
}
void main(){
    struct tt p1[100];
    int p2;
    examen(p1, p2);
}