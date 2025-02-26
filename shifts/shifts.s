// sudo as name.s -o name.o -g
// sudo ld name.o -o name
// sudo gdb -q ./name

.section .text
.global _start

_start:
        mov             x0, #2
        lsl             x0,x0, #1
        lsl             x0,x0, #1
        lsl             x0,x0, #1

        mov             x0, #3
        lsl             x0,x0, #1
        lsl             x0,x0, #1
        lsl             x0,x0, #1

        mov             x0, #10
        ror             x0,x0, #2

        mov             x0, #10
        ror             x0,x0, #1

        mov             x0, 10
        lsr             x0,x0, #1
        lsr             x0,x0, #1
        lsr             x0,x0, #1

        mov             x0, 20
        lsr             x0,x0, #1
        lsr             x0,x0, #1
        lsr             x0,x0, #1

exit:
        mov             x0, #1337
        mov             x8, #93
        svc             #0
