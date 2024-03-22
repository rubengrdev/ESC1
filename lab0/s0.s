.include "macros.s"

N = 10

.data

RES:	.word  0
V:	.word	-1, -2, -3, -4, -5, -6, -7, -8, -9, -10

.text
main:

main:
	MOVI	R0, 0			; Posem R0 a 0 (no sempre ha de valer 0)
	MOVI	R1, 0			; Posem R1 a 0 (comptador del bucle)
	MOVI	R2, N*2			; Límit del comptatge
	MOVI	R3, 0			; Suma parcial
	$MOVEI	R4, V			; Adreça inicial de V
bucle:	
	CMPLT	R5, R1, R2
	BZ	R5, fibucle		; Després de 10 voltes acaba
	ADD	R6, R4, R1
	LD	R5, 0(R6)		; Llegim un element
	ADD	R3, R3, R5		; Acumulem
	ADDI	R1, R1, 2		; Ara cada element ocupa 2 bytes !
	BZ	R0, bucle
fibucle:
	$MOVEI	R4, RES			; adreça de RES
	ST	0(R4), R3
	HALT

