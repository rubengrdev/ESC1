.include "macros.s"
.include "crt0.s"

.data
    str1: .byte 'p','a','t','a','t','e','t','a'
    str2: .byte 'p','a','t','a','t','o','n','a'
    num: .word 0

.text
main:
    MOVI R1, 0  ; representa i = 0
bucle:
    $MOVEI R2, str1
    ADD R2, R2, R1  ;direcció str1[i]
    MOVI R4, 0
    LDB R5, 0(R2)
    $CMPNE R0, R5, R4
    BZ R0, fi_bucle
    $MOVEI R2, str2
    ADD R2, R1, R2
    LDB R6, 0(R2)
    MOVI R3, 0      ; pot ser aixó sobra
    $CMPNE R0, R6, R4
    BZ R0, fi_bucle
    $CMPEQ R3, R5, R6
    BZ R3, fi_if
    $MOVEI R3, num
    LD R4, 0(R3)
    ADDI R4, R4, 1
    ST 0(R3), R4
fi_if:
    ADDI R1, R1, 1
    BNZ R0, bucle
fi_bucle:
    HALT
