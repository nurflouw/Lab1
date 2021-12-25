%include "io.inc"
; (a-b)/c
; 9 22 19
; 22 4 -11
section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ;write your code here
    xor eax, eax
    
       
    FLD DWORD [a]
    FLD DWORD [b]
    FSUB
    
    FLD DWORD [c]
   
    FDIV
    
    FST DWORD [r]
    
    ret
    
    
section .data

a: DD 0x41100000; 0x41b00000
b: DD 0x41b00000; 0x40800000
c: DD 0x41980000; 0xc1300000
r: DD 0x00000000