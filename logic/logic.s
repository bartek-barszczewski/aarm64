// sudo as name.s -o name.o -g
// sudo ld name.o -o name
// sudo gdb -q ./name

.section .text

.global _start
_start:

op_and:
    mov     x0, #0xff
    mov     x1, #0x2
    and     x2, x0, x1

op_or:
    mov     x0, #0xff
    mov     x1, #0x2
    orr     x2, x0, x1

op_eor:
    mov     x0, #0xff
    mov     x1, #0x2
    eor     x2, x0, x1

op_not:
    mov     x0, #0xAA
    mvn     x0, x0
    and     x0, x0, 0x00000000000000FF

exit:
    mov     x0, #1337
    mov     x8, #93
    svc     #0
