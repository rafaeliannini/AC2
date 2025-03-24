.text
.globl _start
_start:

    #x8 = 0x10000000
    li x8, 1
    slli, x8, x8, 28

    #x8 = 0x12000000

    li x9, 2
    slli, x9, x9, 24
    or x8, x9, x8

    #x8 = 0x12300000

    li x9, 3
    slli, x9, x9, 20
    or x8, x9, x8

    #x8 = 0x12340000

    li x9, 4
    slli, x9, x9, 16
    or x8, x9, x8

    #x8 = 0x12345000

    li x9, 5
    slli, x9, x9, 12
    or x8, x9, x8

    #x8 = 0x12345600

    li x9, 6
    slli, x9, x9, 8
    or x8, x9, x8

    #x8 = 0x12345670

    li x9, 7
    slli, x9, x9, 4
    or x8, x9, x8    

    #x8 = 0x12345678
    li x9, 8
    or x8, x9, x8

    #continuação do programa

    #x9 = 0x12

    srli x9, x8, 24

    #x10 = 0x34

    srli x10, x8, 16
    andi x10, x10, 0xFF

    #x11 = 0x56
    srli x11, x8, 8    
    andi x11, x11, 0xFF  

    #x12 = 0x78
    andi x12, x8, 0xFF