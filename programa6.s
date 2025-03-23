.text
.globl _start
_start:
    # x = s1, y = s2, z = s3
    li s1, 1
    sll s1, s1, 20

    li s2, 1
    sll s2, s2, 12

    add s3, s1, s2
    
    #NAO FUNCIONA, MUDAR DPS