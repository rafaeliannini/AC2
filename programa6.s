.text
.globl _start
_start:
    # x = s1, y = s2, z = s3
    li s1, 1
    slli s2, s1, 20

    li s3, 1
    slli s4, s3, 12

    add s5, s4, s2    