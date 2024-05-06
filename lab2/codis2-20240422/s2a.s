.include "macros.s"
.include "crt0.s"

.text
main:
	MOVI	R1, 3
	MOVI	R2, -4
	$PUSH	R1
	ADDI	R1, R2, 0
	$POP	R2
	HALT
