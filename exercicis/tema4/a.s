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
    ST 0(R3), R4    ;puntoA = puntoB
    MOVI R5, 7
    ST 0(R3), R5
    HALT

