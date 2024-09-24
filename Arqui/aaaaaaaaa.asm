
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

    mov ah,19 
    mov al,4
    mov bh,2
    mov bl,2  
  
    
    sub ah,al
    add bh,bl
    mov al,ah ;por que el multi tiene restriccion
    mul bh

ret




