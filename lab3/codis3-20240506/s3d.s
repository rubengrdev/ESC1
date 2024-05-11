.include "macros.s"
.include "crt0.s"

.data
    mat: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -3, -2 
    max: .word 0                                     

.text
    main:
        MOVI R1, 0        ; i = 0
    for_a:
        MOVI R0, 1
        MOVI R4, 3        ; R4 = 3 (NF)
        $CMPLT R0, R1, R4 ; i < 3
        BZ R0, fi_for_a
        
        MOVI R2, 0        ; j = 0
    for_b:
        MOVI R4, 4        ; R4 = 4  (NC)
        $CMPLT R4, R2, R4 ; j < 4
        BZ R4, fi_for_b
        
        MOVI R5, 4        ; R5 = 4
        MOVI R6, 2        ; offset bytes (.word 2 bytes)
        MUL R3, R1, R5    ; R3 = i * 2 
        ADD R3, R3, R2    ; R3 = i * 2 + j 
        MUL R3, R3, R6    ; R3 = (i * 2 + j) * 2 (offset de bytes)
        $MOVEI R5, mat
        ADD R5, R5, R3    
        LD R6, 0(R5)      ; Carrega mat[i][j] en R6
        
        $MOVEI R3, max
        LD R3, 0(R3)      ; Carrega el valor de max en R3
        $CMPGT R5, R6, R3 ; Compara mat[i][j] > max
        BZ R5, fi_if
        $MOVEI R3, max
        ST 0(R3), R6      ; Store max = mat[i][j]
        
    fi_if:
        ADDI R2, R2, 1    ; j++
        BNZ R0, for_b
        
    fi_for_b:
        ADDI R1, R1, 1    ; i++
        BNZ R0, for_a

    fi_for_a:
        HALT         

