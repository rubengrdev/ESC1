.include "macros.s"
.include "crt0.s"
.data

F:	.word 0xBE00	 ; 0xBE00 és la codificació de -1.0
G:	.word 0xC000	 ; 0xC000 és la codificació de -2.0
I:	.word 0

.text
main:
	MOVI R6, 0
	$MOVEI R1, F
	$PUSH R1
	$POPF F1
	$MOVEI R2, G
	$PUSH R2
	$POPF F2
	CMPLEF R3, F1, F2
	BZ R3, fi
	MOVI R6, 1
	$MOVEI R5, I
	ST 0(R5), R6
fi:
	HALT
