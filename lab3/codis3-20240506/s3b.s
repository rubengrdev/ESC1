.include "macros.s"
.include "crt0.s"

.data
    vec: .word 1, 3, 5, 7, 9, 2, 4, 6, 8, 8
    max: .word 5
    min: .word 5
.text
    main:
        MOVI R1, 0        ; i = 0       
        $MOVEI R3, vec    ;direcció on incia el vector
    bucle:
        MOVI R2, 10    
        CMPLT R0, R1, R2
        BZ R0, fi
        MOVI R4, 2
        MUL R4, R1, R4
        ADD R2, R3, R4  ;posició vector + posicio i
        LD R5, 0(R2)
        $MOVEI R6, max
        LD R6, 0(R6)
        CMPLT R4, R6, R5    ; max < vec[i]?
        BZ R4, fi_if
        $MOVEI R6, max
        ST 0(R6), R5        ;max = vec[i];
    fi_if:
        $MOVEI R6, min
        LD R6, 0(R6)
        CMPLT R4, R5, R6    ; vec[i] < min
        BZ R4, fi_if2
        $MOVEI R6, min      ;tornem a carregar la direcció de min
        ST 0(R6), R5        ;min = vec[i];
    fi_if2:
        ADDI R1, R1, 1

        BNZ R0, bucle
    fi:
        HALT

