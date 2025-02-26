.section .text
.global _start

_start:
        ldr             x0, =list           // wczytanie 1 adresu z pod etykiety list
        ldr             x1, [x0]            // odczytanie 1 warto┼Ťci z pod adresu listy =list
        ldr             x3, =end_list       // odczytanie tego co jest zaraz za list czyli ostatni bajt za ostatnim elementem list

loop:
        ldr             x1, [x0, #8]!       // preinkrementacja inkrementujemy o 8bajtow
        cmp             x0, x3              // porownujemy adresy
        beq             exit
        b               loop

exit:
        mov             x0, #0
        mov             x8, #93
        svc             #0

.section .data
list:
        .xword  1,2,3,4,5,6,7,8,10,20,30,40
end_list: