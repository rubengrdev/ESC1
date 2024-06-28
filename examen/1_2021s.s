.include "macros.s"

;DigitsDNI = 0xXXXX DigitsDNI = 0x1897
DigitsDNI = 0x1897
.data
test: .word 0x3F66
a: .word 0x4321
b: .word 0x8765
c: .byte 'x'
.balign 2

.text
main: 
$MOVEI R0, test
LDF F0, 0(R0)
$MOVEI R1, DigitsDNI    ;R1 = 0x1897
$MOVEI R2, 0x0001       ; R2 = 0x0001
$MOVEI R6, a            ; R6 = 0x0000
LD R3, 0(R6)            ; R3 = 0x4321
LD R4, 2(R6)            ;R4 = 0x8765
LDB R5, 4(R6)           ;R5 = 0x0078
AND R0, R1, R2          ;R0 = 0
if: $CMPEQ R0, R0, R6   ; R0 = 0
BZ R0, else     
STB 0(R6), R5           
ST 2(R6), R1
ST 4(R6), R3
BNZ R0, fin
else: ST 0(R6), R1      ;MEM@[0x0000] = 0x1897
STB 2(R6), R5           ;MEM@[0x0002] =0x0078
ST 4(R6), R4            ;MEM@[0x0004] = 0x8765
fin: HALT
