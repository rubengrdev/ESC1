.include "macros.s"
N = 0x43A6
.data
    ;N: .float 7.3
    a: .float 5.0
    b: .float 1.0
    res: .float 0.0
.text
main:
   $MOVEI R1, a
   LDF F1, 0(R1)
   $MOVEI R2, b
   LDF F2, 0(R2)
   $MOVEI R3, 0x43A6
   $PUSH R3
   $POPF F3
   $CMPGEF R0, F1, F3
   BZ R0, fi_if
   MULF F4, F2, F3
   ADDF F1, F1, F4
   $MOVEI R5, res
   STF 0(R5), F1
fi_if:
    HALT
