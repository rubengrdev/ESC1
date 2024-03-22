.include "macros.s"
.include "crt0.s"

	.data
A1:	.long	3
A2:	.long	-2
R:	.long	0

	.text
main:
	$MOVEI	R5, A1
	$MOVEI	R6, A2
	LD	R1, 0(R5)	
	LD	R2, 0(R6)
	SUB	R0, R1, R2			; restem els bits baixos
	CMPLTU	R3, R1, R2			; calculem el borrow
	LD	R1, 2(R5)
	LD	R2, 2(R6)
	SUB	R4, R1, R2			; restem els bits alts
	SUB	R4, R4, R3			; restem el borrow
	$MOVEI	R5, R
	ST	0(R5), R0			; guardem la part baixa
	ST	2(R5), R4			; guardem la part alta
	HALT

