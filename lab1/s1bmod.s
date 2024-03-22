.include "macros.s"
.include "crt0.s"

	.data
A1:	.word	1234
A2:	.word	-512
M:	.word	0
D:	.word	0
		
	.text
main:
	$MOVEI	R1, A1
	LD	R1, 0(R1)
	$MOVEI	R2, A2
	LD	R2, 0(R2)
	MUL	R3, R1, R2
	DIV	R4, R1, R2
	$MOVEI	R5, M
	ST	0(R5), R3
	$MOVEI	R5, D
	ST	0(R5), R4
	HALT

