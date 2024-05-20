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

    ;puntoA += 2
    ADDI R3, R3, 2
    ST 0(R3), R3

    LD R4, 0(R3)
    MOVI R5, 2
    SUB R4, R4, R5  ;puntoA -=2
    ST 0(R3), R4

    LD R3, 0(R3)
    MOVI R5, 33
    ST 0(R3), R5
    HALT

