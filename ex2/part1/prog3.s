addi s0, x0, 3 # x = 4
addi s1, x0, 4 # y = 5

addi t2, x0, 15 # 15

sub t0, t2, s0 # 15 - x

addi t2, x0, 67 # 67

sub t1, t2, s1 # 67 - y
add t0, t0, t1 # (15 - x) + (67 - y)
addi s2, t0, 4 # (15 - x) + (67 - y) + 4
nop 

