.global _start

.section .text

_start:

    li a0, 1
    la a1, helloworld
    li a2, 12
    li a7, 64
    ecall
    
exit:
    li a0, 0
    li a7, 93
    ecall

.section .data
helloworld: .ascii "Hello World\n"
