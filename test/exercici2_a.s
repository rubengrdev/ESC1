.include "macros.s"
.include "crt0.s"
.data
    v: .word 0x000C
.text
    main:
    MOVI R1, 0
    MOVI R2, 5
for:
    CMPLT R3, R1, R2
    BZ R3, fi
    MOVI R4, 3
    $MOVEI R5, v
    LD R6, 0(R5)
    DIV R6, R6, R4
    ST 0(R5), R6
    ADDI R1, R1, 1
    BNZ R3, for
fi:
    HALT
