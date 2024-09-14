li x8, 0x12345678    

li t0, 24 
srl x9, x8, t0   
andi x9, x9, 0xFF     

li t0, 16
srl x10, x8, t0 
andi x10, x10, 0xFF

li t0, 8
srl x11, x8, t0     
andi x11, x11, 0xFF   

andi x12, x8, 0xFF    
nop