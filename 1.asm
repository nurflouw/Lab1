%include "io.inc"
; (a-b)/c
; 9 22 19
; 22 4 -11
section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ;write your code here
    MOV     AL, 0x9 ; 0x16
    MOV     BL, 0x16  ; 0x4
    MOV     CL, 0x13 ; 0xF5
    SUB     AL, BL
    
    
    CBW
    IDIV    CL
    
    PRINT_UDEC 1, AL
    PRINT_UDEC 1, AH
    ret