.include "macros.s"
.include "crt0.s"
.data

parcial:	.word 0x4280	 ; codificació de 5.0
laboratori:	.word 0x4440	 ; codificació de 9.0
examen_f:	.word 0x4380		 ; codificació de 7.0
nota_acta: .word 0x0000		; codificació de 0.0
.text
main:
	$MOVEI R1, 0		; register float tmp_nota
	$PUSH R1
	$POPF F1
	$MOVEI R2, nota_acta	;agafa direcció de nota_acta
	LDF F2, 0(R2)	
	$MOVEI R3, 0x3F99		;0x3F99 = 0.6
	$PUSH R3
	$POPF F3
	$MOVEI R4, examen_f
	LDF F4, 0(R4)
	MULF F3, F3, F4			;nota_acta = 0.6 * examen_f;

	$MOVEI R5, parcial
	LDF F5, 0(R5)
	CMPLEF R3, F5, F4	;	if (examen_f > parcial)
	BNZ R3, else

	$MOVEI R6, 0x3E66		;0x3E66 = 0.2 en coma flotant
	$PUSH R6
	$POPF F6
	MULF F4, F6, F4		; 0.2 * examen_f;
	ADDF F3, F3, F4		; nota_acta += 0.2 * examen_f;

else:
	MULF F5, F6, F5		; 0.2 * parcial;
	ADDF F3, F3, F5		; nota_acta += 0.2 * examen_f;


	$MOVEI R3, laboratori
	LDF F5, 0(R3)
	CMPLEF R3, F5, F4	;	if (examen_f > laboratori)
	BNZ R3, else2
	ADDF F1, F1, F4			;para hacer  tmp_nota = laboratori; hago una suma de variable = 0, variable += resultado
else2:
	ADDF F1, F1, F5		;para hacer  tmp_nota = laboratori; hago una suma de variable = 0, variable += resultado
	MULF F6, F6, F1
	ADDF F3, F3, F6
	HALT

