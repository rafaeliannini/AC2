.text
.globl _start
_start:
    # s1 = x, s2 = y, s3 = z
    li s1, 3
    li s2, 4
    
    # 15 - x
    li t0, 15
    sub t1, t0, s1

    # 67 - y
    li t0, 67
    sub t2, t0, s2

    # z = (15-x) + (67-y) + 4
    add t3, t1, t2
    addi s3, t3, 4