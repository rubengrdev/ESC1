.include "macros.s"
.include "crt0.s"

.data
    a: .word 3
    b: .word 5
    puntoA: .word a
    puntoB: .word b
.text
    main:
    $MOVEI R1, a
    $MOVEI R2, b
    $MOVEI R3, puntoA
    $MOVEI R4, puntoB
    ;carregar valor de puntoB
    LD R5, 0(R4)
    LD R5, 0(R5)
    ADDI R6, R5, 3
    ST 0(R2), R6
    HALT

