; Calcule la potencia de un número 
; dado la base y su exponente. 
;
; 
 

org 100h

.DATA
     
.CODE
    mov ax, 5
    mov bx, 5
    mov cx, 2 ; cx es el exponente -1
    
    
    poten:
        mul bx
        loop poten
        jmp final
         
    
    final:
ret




