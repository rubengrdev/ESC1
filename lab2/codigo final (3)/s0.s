include "macros.s"
.include "crt0.s"

.data

parcial:    .word   0x4280 ; parcial = 5.0
laboratori: .word   0x4440 ; laboratori = 9.0
examen_f:   .word   0x4380 ; examen_f = 7.0
nota_acta:  .word   0x0000 ; nota_acta = 0.0

.text

main:
    $MOVEI R1, parcial
    LDF F1, 0(R1)           ; F1 = parcial
    $MOVEI R2, laboratori
    LDF F2, 0(R2)           ; F2 = laboratori
    $MOVEI R3, examen_f
    LDF F3, 0(R3)           ; F3 = examen_f
    $MOVEI R4, nota_acta
    LDF F4, 0(R4)           ; F4 = nota_acta
    MOVI R5, 0x66
    MOVHI R5, 0x3C
    $PUSH R5
    $POPF F5                ; F5 = 0.6
    MOVI R6, 0x33
    MOVHI R6, 0x39
    $PUSH R6
    $POPF F6                ; F6 = 0.2
    MULF F4, F5, F3
if_1:
    $CMPGTF R0, F3, F1      ; R0 = (examen_f > parcial)
    BZ R0, else_1
    MULF F0, F6, F3
    ADDF F4, F4, F0         ; F4 = nota_acta = nota_acta + 0.2*examen_f
    BNZ R0, if_2
else_1:
    MULF F0, F6, F1
    ADDF F4, F4, F0         ; F4 = nota_acta = nota_acta + 0.2*parcial
if_2:
    $CMPGTF R0, F3, F2      ; R0 = (examen_f > laboratori)
    BZ R0, else_2
    ADDF F7, F3, F7         ; R0 = 1  ->   F7 = tmp_nota = examen_f + 0 = examen_f
    BNZ R0, fi
else_2:
    ADDF F7, F2, F7         ; R0 = 1  ->   F7 = tmp_nota = laboratori + 0 = laboratori
fi:
    MULF F0, F6, F7
    ADDF F4, F4, F0         ; F4 = nota_acta = nota_acta + 0.2*tmp_nota
    HALT