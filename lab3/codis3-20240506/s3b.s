.include "macros.s"
.include "crt0.s"

.data
    vec: .word 1, 3, 5, 7, 9, 2, 4, 6, 8, 8
    max: .word 5
    min: .word 5
.text
    main:
        $MOVEI R1, 