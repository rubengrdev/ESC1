.include "macros.s"
.include "crt0.s"


.data
    dada: .word 3  ; dada = 3
    pdada: .word dada
.text
    main:
    
  $MOVEI R1, pdada
  LD R2, 0(R1)  ;&dada
  LD R3, 0(R2)  ;*dada
  ADDI R3, R3, 1
  ST 0(R2), R3
  HALT

  

