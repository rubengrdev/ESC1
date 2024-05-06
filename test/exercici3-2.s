.include "macros.s"
.include "crt0.s"

.text 
main:
$movei r1, seguir
ld r2, -8(r1)
st -4(r1), r2
movi r1, 0
bnz r1, seguir
addi r1, r1, 1
addi r1, r1, 1
addi r1, r1, 1
seguir:
addi r1, r1, 1
addi r1, r1, 1
addi r1, r1, 1
HALT
