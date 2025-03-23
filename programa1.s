.text
.globl _start
_start:
    #a = s1, b = s2, c = s3, d = s4, x = s5, y = s6
    li s1, 2
    li s2, 3
    li s3, 4
    li s4, 5

    # x = (a+b) - (c+d)
    add t0, s1, s2
    add t1, s3, s4
    sub s5, t0, t1

    # y = a - b + x
    sub t0, s1, s2
    add s6, t0, s5

    # b = x - y
    sub s2, s5, s6