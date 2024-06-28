.include "macros.s"

;DigitsDNI = 0xXXXX DigitsDNI = 0x1897
DigitsDNI = 0x1897
.data
t1: .byte 0
    .balign 2
    .word 0
.text
main:
MOVI R1, 4
$MOVEI R2, t1
STB 0(R2), R1
MOVI R1, 7
LD R3, 2(R2)
ADD R3, R3, R1
ST 2(R2), R3

HALT
