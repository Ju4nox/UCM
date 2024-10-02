; Calcule la potencia de un número 
; dado la base y su exponente. 
;
; 
 

org 100h

.DATA
     
.CODE
    mov ax, 5
    mov bx, 4  ; debe ser siempre -1 al numero base
    mov cx, 4  ; debe ser igual a bx
    
    fact:
        mul bx
        dec bx
        loop fact
        jmp final 
        
    final:    
ret




