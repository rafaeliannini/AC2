.text
.globl _start
_start:
    # x = s1, y = s2
    li s1, 1 # x = 1

    # y = 5 - x + 15
    li t0, 5
    sub t1, t0, s1
    addi s2, t1, 15