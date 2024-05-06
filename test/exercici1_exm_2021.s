.include "macros.s"
.include "crt0.s"
.data
    a: .word 10
    b: .word 10
    c: .word 10
    .text
    main:
    $MOVEI R1, a
    LD R1, 0(R1)
    $MOVEI R2, b
    LD R2, 0(R2)
    $MOVEI R3, c
    LD R3, 0(R3)
while:
    CMPLT R4, R1, R3    ; c > a
    BZ R4, fi_bucle     ; c !> a

    CMPLT R4, R2, R3    ; c < b 
    BZ R4, fi_bucle     ; c !> a

    ADDI R5, R3, 1

    SUB R4, R3, R6
    
    MUL R3, R5, R6
    
    MUL R5, R1, R2
    CMPLEU R4, R5, R3
    BZ R4, fi_bucle
    BZ R0, while
fi_bucle:
    HALT