; GNU AARM46
; sudo as prog.asm -o prog.o
; sudo ld prog.o -o prog
; gdb -q ./prog
;
.section .text
.global _start
_start:

xadd:
        mov             x0, #1
        mov             x1, #2
        add             x2, x0, x1
        bl              xzero
        b               xsub

xsub:
        mov             x0, #10
        mov             x1, #9
        sub             x2, x1, x0
        bl              xzero
        b               xmul

xmul:
        mov             x0, #10
        mov             x1, #10
        mul             x2, x0, x1
        bl              xzero
        b               exit

xzero:
        mov             x0, #0
        mov             x1, #0
        ret

exit:
        mov             x0, #1377
        mov             x8, #93
        svc             #0