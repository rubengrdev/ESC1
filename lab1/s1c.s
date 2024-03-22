.include "macros.s"
.include "crt0.s"

.data
    a: .word 3
    b: .word 0
    c: .word 5
    d: .word 6
    e: .word 2
    x: .word 0
.text
main:
    $MOVEI R1, a
    LD R1, 0(R1)
    $MOVEI R2, b
    LD R2, 0(R2)
    
    $MOVEI R3, c
    LD R3, 0(R3)
    $MOVEI R4, d
    LD R4, 0(R4)
    $MOVEI R5, e    
    LD R5, 0(R5)
    $MOVEI R6, x

    CMPEQ R0, R1, R2    ;if (a == b)
    BZ R0, else

    MUL R4, R4, R5  ;(d*e)
    MOVI R0, 2
    ADD R1, R1, R0   ;(a+2)
    SUB R1, R4, R1  ;(d*e) - (a+2)

    ;guardar en x el valor de las operaciones
    ST 0(R6), R1    ; x = (d*e) - (a+2) 
    BZ R0, fi
else:
    MUL R4, R4, R5  ;(d*e)
    MOVI R0, 2
    ADD R0, R1, R0   ;(a+2)
    SUB R0, R4, R0  ;(d*e) - (a+2)
    ADD R4, R0, R3  ;((d*e) - (a+2)) + c

    SUB R2, R2, R1  ; (b-a)

    ;ahora solo queda dividir numerador y denominador, tal que R4 / R2
    DIV R4, R4, R2  ;(R4/R2)
    ST 0(R6), R4    ;(d*e -(a+2)+c)/(b-a)
    BZ R0, fi
fi: 
    HALT



