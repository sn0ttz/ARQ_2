.data
Vetor: .word 1, 3, 5, 7, 9, 11, 13, 0, 2, 4, 6, 8, 10, 12
Soma:  .word -1
Maior: .word -1

.text
.globl _start

_start:
    la t0, Vetor      
    li t1, 0          
    li t2, 0          
    li t3, -2147483648
    li t4, 14         

loop:
    beq t1, t4, end_loop 
    lw t5, 0(t0)         
    add t2, t2, t5       
    blt t3, t5, update_max 
    j next

update_max:
    mv t3, t5            

next:
    addi t0, t0, 4       
    addi t1, t1, 1       
    j loop

end_loop:
    la t0, Soma          
    sw t2, 0(t0)         
    la t0, Maior         
    sw t3, 0(t0)         
    li a7, 10            
    nop              