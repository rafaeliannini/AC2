.text
.globl _start
_start:
    # x = s1, y = s2, z = s3
    li s1, 0xFFFFFFFF
    li s2, 8192

    # z = x - 4y
    li t0, 4
    mul t1, t0, s2
    sub s3, s1, t1