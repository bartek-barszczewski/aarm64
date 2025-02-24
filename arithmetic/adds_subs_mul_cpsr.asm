; GNU AARM46
; sudo as prog.asm -o prog.o
; sudo ld prog.o -o prog
; gdb -q ./prog
;
.section .text
.global _start

_start:

xadd:
        mov                     w0, #0x7fffffff
        mov                     w1, #0x1
        adds            w0, w0, w1
        bl                      xzero
        b                       xsub

xsub:
        mov                     x0, #0
        mov                     x1, #1
        subs            x0, x0, x1
        bl                      xzero
        b                       xmul

xmul:
        mov                     x0, #0x8000000000000000
        mov                     x1, #-0x3
        mul                     x0, x1, x0
        b                       exit

xzero:
        mov                     x0, #0
        mov                     x1, x0
        ret

exit:
        mov                     x0, #1337
        mov                     x8, #93
        svc                     #0
