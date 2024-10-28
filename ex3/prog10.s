.data
n:      .word 9     
result: .word 0       

.text
.globl _start
_start:
    la a0, n           
    lw a0, 0(a0)       

    jal ra, fibonacci

    la t0, result     
    sw a0, 0(t0)       

    li a7, 93          
    ecall

fibonacci:
    li t0, 0         
    beq a0, t0, ret_zero  

    li t0, 1           
    beq a0, t0, ret_one   

    addi sp, sp, -4    
    sw ra, 0(sp)       

    addi a0, a0, -1   
    jal ra, fibonacci  
    mv t1, a0          

    addi a0, a0, -1   
    jal ra, fibonacci  
    add t1, t1, a0     

    lw ra, 0(sp)      
    addi sp, sp, 4     

    mv a0, t1          
    jr ra            

ret_zero:
    li a0, 0          
    jr ra              

ret_one:
    li a0, 1           
    jr ra             