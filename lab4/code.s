.include "macros.s"
.include "crt0.s"
.data
	n: .word
	x: .word 3
.text
main:
	$MOVEI R1, n
	LD R2, 0(R1)
	$MOVEI R2, x
	$PUSH R1
	$PUSH R2
	LD R1, 0(R2)
	$CALL R6, f0	; f0(x)
	$POP R2
	$POP R1
	ST 0(R1), R0	; n = f0(x)
	
	LD R1, 0(R1)
	$PUSH R1
	$PUSH R2
	$CALL R6, f1	; f1(n)
	$POP R2
	$POP R1
	ST 0(R1), R0	; n = f1(n)
	

	$PUSH R1
	$PUSH R2
	LD R1, 0(R1)
	LD R2, 0(R2)
	$CALL R6, f2	; f2(n, x)
	$POP R2
	$POP R1
	ST 0(R1), R0
	
	HALT
	
f0:
	ADDI R0, R1, 5 
	ADD R0, R0, R0
	JMP R6
	
f1:
	MOVI R3, 4
	MOVI R4, 2
	SUB R0, R1, R3
	DIV R0, R0, R4
	JMP R6
	
f2:
	ADDI R0, R1, 4
	SUB R0, R0, R2
	JMP R6
	

	
	
	
	
