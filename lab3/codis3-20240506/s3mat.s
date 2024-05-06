.include "macros.s"
.include "crt0.s"

NF = 3
NC = 4

.data
mat1:	.word 1, 2, 3, 4
	.word 5, 6, 7, 8
	.word 9, 10, 11, 12
mat2:	.fill NC*NF, 2, 0

.text
main:	$MOVEI R1, 0	; R1 serà i
	$MOVEI R2, NF
	BZ R1, end1

for1:	$MOVEI R3, 0	; R3 serà j
	$MOVEI R4, NC
	BZ R3, end2

for2:	MUL R5, R1, R4
	ADD R5, R5, R3
	ADD R5, R5, R5
	$MOVEI R6, mat1
	ADD R5, R5, R6
	LD R7, 0(R5)
	MUL R5, R3, R2
	ADD R5, R5, R1
	ADD R5, R5, R5
	$MOVEI R6, mat2
	ADD R5, R5, R6
	ST 0(R5), R7

	ADDI R3, R3, 1
end2:	$CMPLT R5, R3, R4
	BNZ R5, for2

	ADDI R1, R1, 1
end1:	$CMPLT R5, R1, R2
	BNZ R5, for1

	HALT
