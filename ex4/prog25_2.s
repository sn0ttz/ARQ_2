#com convenções de chamada
    .data
array:  .word 10, 20, 30, 40    

    .text
    .globl swap

swap:
    addi sp, sp, -16           
    sw ra, 12(sp)              
    sw s0, 8(sp)               
    sw s1, 4(sp)               

    mv s0, a0                  
    mv s1, a1                  

    slli t1, s1, 2             
    add t1, t1, s0             
    lw t0, 0(t1)               
    lw t2, 4(t1)               
    sw t2, 0(t1)               
    sw t0, 4(t1)               

    lw s1, 4(sp)               
    lw s0, 8(sp)               
    lw ra, 12(sp)              
    addi sp, sp, 16            

    jr ra                      
