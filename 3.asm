%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ;write your code here
    XOR     EAX, EAX
    XOR     EBX, EBX
    XOR     ECX, ECX
    
    MOV     AX, 0x5
    MOV     BX, 0x3
    MOV     CX, 0x2
    
    CMP     AX, BX
    JNL     l1
    CMP     AX, CX
    JNL     l2
    MOV     DX, AX
    JMP     quit
    
l1:
    CMP     BX, CX
    JNL     l2
    MOV     DX, BX
    JMP     quit

l2:
    MOV     DX,CX
    
quit:          
    ret