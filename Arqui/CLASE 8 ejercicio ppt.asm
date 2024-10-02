; Genera un programa en ensamblador 8086, 
; que realice la sustraccion de un
; numero hasta que CX sea igual a cero.
 

org 100h

.DATA
     
      
         
.CODE     
    mov ax, 20
    mov bx, 4
    mov cx, 10
    
    rsta:
        sub ax, bx
        loop rsta
        jmp final 
        
    final: 
ret




