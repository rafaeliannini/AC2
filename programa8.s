.text
.globl _start
_start:
    ori x8, x0, 0x01

    #transformando x8 em 0x0..0FF

    slli x8, x8, 1 
    ori x8, x8, 0x01 
    slli x8, x8, 2  
    ori x8, x8, 0x03  
    slli x8, x8, 4  
    ori x8, x8, 0x0F  

    #expandindo x8 para 0x0..0FFFF
    slli x8, x8, 8 
    ori x8, x8, 0xFF 

    #iniciando um novo registrador
    ori x9, x0, 0x01

    #transformando x9 em 0x0..0FF

    slli x9, x9, 1 
    ori x9, x9, 0x01 
    slli x9, x9, 2  
    ori x9, x9, 0x03  
    slli x9, x9, 4  
    ori x9, x9, 0x0F  

    #expandindo x9 para 0x0..0FFFF
    slli x9, x9, 8 
    ori x9, x9, 0xFF 

    #expandindo x8 para 0xFFFF
    slli x8, x8, 16 

    #juntando x8 0xFFFF com x9 0x0000FFFF para gerar x8 = 0xFFFFFFFF
    or x8, x8, x9