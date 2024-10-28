    .data
        A:  .word -25  
    
    .text
        .globl _start
    
        _start:
            la t0, A       
            lw t1, 0(t0)   
            jal abs  
            sw t1, 0(t0)   
            li a7, 10      
            ecall          
    
        abs:
            bgez t1, end_abs  
            neg t1, t1        
        end_abs:
            jr ra             