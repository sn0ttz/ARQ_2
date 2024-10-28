    .data
x:  .word 3               
y:  .space 4              

    .text
    .globl _start

_start:

    la t0, x              
    lw t1, 0(t0)          


    andi t2, t1, 1        # t2 = t1 & 1 
    beq t2, x_par, even_case 

odd_case:
    # y = x^5 - x^3 + 1
    mul t3, t1, t1        # t3 = x^2
    mul t3, t3, t1        # t3 = x^3
    mul t4, t3, t1        # t4 = x^4
    mul t4, t4, t1        # t4 = x^5
    addi t5, t3, -1       # t5 = -x^3
    add t6, t4, t5        # t6 = x^5 - x^3
    addi t6, t6, 1        # t6 = x^5 - x^3 + 1
    j write_result

even_case:
    mul t3, t1, t1        # t3 = x^2
    mul t4, t3, t1        # t4 = x^3
    mul t5, t3, t3        # t5 = x^4
    slli t6, t3, 1        # t6 = 2 * x^2
    add t7, t5, t4        # t7 = x^4 + x^3
    sub t6, t7, t6        # t6 = x^4 + x^3 - 2 * x^2

write_result:
    la t0, y              
    sw t6, 0(t0)          
    li a7, 10
    nop
