    .data
array:  .word 10, 20, 30, 40    

    .text
    .globl swap

swap:
    slli t1, a1, 2           
    add t1, t1, a0           
    lw t0, 0(t1)             
    lw t2, 4(t1)             
    sw t2, 0(t1)             
    sw t0, 4(t1)             
    jr ra                    
