.include "macros.s"
.data
    A: .float 2.0
    B: .float 1.0
    C: .float 0.0
.text
main:
    $MOVEI R1, A
    LDF F1, 0(R1)
    $MOVEI R2, B
    LDF F2, 0(R2)
    $CMPLTF R0, F2, F1
    BZ R0, fi_if
if:
    ADDF F3, F1, F2
    $MOVEI R4, C
    $MOVEI R5, 0x4040
    $PUSH R5
    $POPF F4
    MULF F3, F3, F4
    STF 0(R4), F3
    BZ R0, if
fi_if:
    HALT
