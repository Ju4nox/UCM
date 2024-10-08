
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
    
; add your code here
.DATA
    base dw -2

.CODE
    mov ax,1
    mov bx,base
    mov cx,4
    
    cicloxcuatro:
    imul bx
    loop cicloxcuatro    ;ax = 16
    
    mov cx,ax       ;cx = 16
    mov ax,1
    
    imul bx
    imul bx
    imul bx
    mov bx,2
    imul bx
    
    sub cx,ax   ;cx = 32
    
    mov ax,1
    mov bx,base
    
    imul bx
    imul bx
    mov bx,3
    imul bx
    
    add cx,ax  ;cx = 48
    
    mov ax,8
    mov bx,base
    
    imul bx
    
    add cx,ax
    mov bx, 3
    sub cx,bx
    
    

ret




