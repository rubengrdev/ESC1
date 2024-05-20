.include "macros.s"
.include "crt0.s"


.data
	n: .word 0
	x: .word 3
.text
    main:
    $MOVEI R3, n
	LD R2, 0(R3)
	$MOVEI R5, x
	LD R1, 0(R5)
	$PUSH R1, R2, R3
	$CALL R6, f0
	ST 0(R3), R1
    $POP R3, R2, R1

	$MOVEI R3, n
	LD R2, 0(R3)
	$MOVEI R5, x
	LD R1, 0(R5)
	$PUSH R1, R2
	$CALL R6, f1
	$POP R2, R1
	ST 0(R1), R0
    
    $MOVEI R3, n
	LD R2, 0(R3)
	$MOVEI R5, x
	LD R1, 0(R5)
	$PUSH R1, R2
	$CALL R6, f2
	$POP R2, R1
	ST 0(R1), R0
  

    HALT
f1:
    MOVI R3, 4
    MOVI R4, 2
    SUB R2, R2, R3
    DIV R2, R2, R4
    JMP R6

f0:
    MOVI R4, 5
    ADD R1, R1, R4
    ADD R1, R1, R1
    JMP R6


f2:
	ADDI R2,  R2, 4
	SUB R0, R2, R1
	JMP R6       ; retorna a subrutina

