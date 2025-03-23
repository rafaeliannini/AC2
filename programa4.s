.text
.globl _start
_start:
    # x = s1, y = s2
    li s1, 1

    # 5 * x
    li t0, 5
    mul t1, t0, s1

    # y = 5 * x + 15
    addi s2, t1, 15