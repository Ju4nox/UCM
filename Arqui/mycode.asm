
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
    
; add your code here
.DATA
    base dw 3

.CODE
    mov ax,1
    mov bx,base
    mov cx,4
    
    cicloxcuatro:
        mul bx
        loop cicloxcuatro
        
    mov cx,2
    mul cx       ;ax = 162  = (2x^4)
    
    mov cx,ax        ;dx recibe valor de ax dx = 162
    mov ax,1         ;ax = 1
             
    mul bx
    mul bx
    mul bx
        
        
    mov bx,5
    mul bx           ;ax = 135 = (5x^3)
    
    add ax,cx        ;ax = 297
    
    mov cx,ax        ;cx = 297
    mov ax,1
    mov bx,base
    
    mul bx
    mul bx
    
    mov bx,2
    mul bx            ;ax = 18
    
    sub cx,ax         ;297-18 = 279
    
    mov ax,1
    mov bx,base
    
    mul bx
    mul bx            ;ax = 9
    
    add cx,ax
    mov bx, 6
    add cx,bx

ret




