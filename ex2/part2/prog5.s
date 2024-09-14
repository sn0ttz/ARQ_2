li t0, 3
li t1, 15

mul x1, t0, t1 # x1 = 3 * 15

li t0, 4
li t1, 67

mul x2, t0, t1 # x2 = 4 * 67

add x2, x1, x2 # x2 = x1 + x0 


mul x2, x2, t0 # x2 = x2 * 4
nop
