addi s1, x0, 2 # a = 2
addi s2, x0, 3 # b = 3
addi s3, x0, 4 # c = 4
addi s4, x0, 5 # d = 5

add t0, s1, s2 # t0 = a + b
add t1, s3, s4 # t1 = c + d
sub s5, t0, t1 # x = t0 - t1

sub t0, s1, s2 # t0 = a - b
add s6, t0, s5 # y = t0 + x 

sub s2, s6, s5 # b = y - x