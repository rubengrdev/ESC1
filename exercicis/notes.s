.include "macros.s"
.include "crt0.s"

.data
    laboratori: .float 0
    nota_acta: .float 0
    examen_f: .float 0
    parcial: .float 0
    examen: .float 0
.text
main:
    $MOVEI R1, 0
    $MOVEI R2, 0

    ;   store laboratori

    $PUSH R1
    $POPF F1
    $MOVEI R3, 0x4440
    $PUSH R3
    $POPF F2
    $MOVEI R0, laboratori
    STF 0(R0), F2
    $MOVEI R3, 0x3A66   ;   0.6 en hexadecimal 0 011110
    $PUSH R3
    $POPF F0
    $MOVEI R3, examen_f
    LDF F4, 0(R3)
    MULF F3, F0, F4
    $MOVEI R3, nota_acta
    STF 0(R3), F3
    $MOVEI R3, parcial
    LDF F5, 0(R3)
    $CMPGTF R1, F4, F5

