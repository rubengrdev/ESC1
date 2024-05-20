.include "macros.s"
.include "crt0.s"


.data
	n: .word 7
	x: .word 3
.text
	main:
	$MOVEI R1, n
	LD R2, 0(R1)
	$MOVEI R3, x
	LD R3, 0(R3)
	$PUSH R1, R2
	$CALL R6, f2
	$POP R2, R1
	ST 0(R1), R0
    HALT
f2:
	ADDI R2,  R2, 4
	SUB R0, R2, R3
	JMP R6       ; retorna a subrutina
