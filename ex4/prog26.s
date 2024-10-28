    .data
array:  .word 10, 20, 5, 30, 25   

    .text
    .globl maximo

maximo:
    beq a1, x0, end_maximo        

    lw t0, 0(a0)                  
    addi t1, a0, 4                
    addi t2, x0, 1                

loop:
    bge t2, a1, end_maximo        

    lw t3, 0(t1)                  
    blt t3, t0, skip              

    mv t0, t3                     

skip:
    addi t1, t1, 4                
    addi t2, t2, 1                
    j loop                        

end_maximo:
    mv a0, t0                     
    jr ra         
    nop                
