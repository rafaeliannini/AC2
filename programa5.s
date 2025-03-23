.text
.globl _start
_start:
    # x = s1, y = s2, z = s3
    li s1, 3
    li s2, 4

    # 15 * x
    li t0, 15
    mul t1, t0, s1

    # 67 * y
    li t0, 67
    mul t2, t0, s2

    # z = (15*x) + (67*y) * 4
    add t3, t1, t2
    li t0, 4
    mul s3, t3, t0

    li a7, 10