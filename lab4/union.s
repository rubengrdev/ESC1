.include "macros.s"
.include "crt0.s"


.data
	n: .word 0
	x: .word 3
.text
    main:
    $MOVEI R1, n    ; R1 = dirección de n
    $MOVEI R2, x    ; R3 = dirección de x
    $PUSH R1, R2
    LD R1, 0(R2)
    $CALL R6, f0
    $POP R2, R1
    ST 0(R1), R0

    $MOVEI R1, n    ; R1 = dirección de n
    $MOVEI R2, x    ; R3 = dirección de x
	$PUSH R1, R2
    LD R1, 0(R1)
	$CALL R6, f1
	$POP R2, R1
	ST 0(R1), R0

    
    $PUSH R1, R2
	LD R1, 0(R1)
    LD R2, 0(R2)
	$CALL R6, f2
    $POP R2, R1
    ; por alguna razón R1 no conserva la dirección de n al hacer el POP
	ST 0(R1), R0
  
    HALT

;returns (x+5)*2  
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

