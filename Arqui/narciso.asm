
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.DATA
    numero dw 1634
; add your code here

.CODE
     mov ax, numero
     mov cx, 1000
     div cx
     
     mov cx,ax            ;cx = 1
     
     mov ax,dx            ;ax = 634
     mov bx,100
     div bx
ret