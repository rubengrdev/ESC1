.include "macros.s"
.include "crt0.s"

.data
    N: .word 4
    M: .word 6
    matriz: .fill 4*6, 2, 0
    punto: .word matriz
.text
    main:
    ;N y M
    $MOVEI R0, N
    LD R0, 0(R0)
    $MOVEI R1, M
    LD R1, 0(R1)

    $MOVEI R2, matriz
    $MOVEI R3, punto
    ST 0(R3), R2

    MOVI R4, 0  ;r4 = i

bucle:
    CMPLT R5, R4, R0
    BZ R5, fi
    
    ;LD R6, 0(R3)
    ST 0(R3), R4

    ; Incrementar punto
    ;multiplicar m*2  m*1
    ADD R6, R6, R1  
    ADDI R6, R6, 2  
    ST 0(R3), R6   


    ADDI R4, R4, 1
    BNZ R5, bucle
fi:
    HALT

