
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

    mov ax,3723
    mov bx,3600
    mov cx, 60
    
    
    div bx
    mov ax,dx
    xor dx,dx
    div cx
    
ret




