
; programa que almacene en un arreglo el lanzamiento  
; aleatorio de 10 dados de 6 caras. despues almacena
; en una variable el numero que salio menos

org 100h

.DATA
    dados db 10 DUP(0) 
    

.CODE
    
    lea si, dados
    mov cx, 10
    jmp recorrer
    
    iteradado:
        mov ah, 2Ch
        int 21h
        mov [si], ah
        
        
    
    recorrer:
        mov al, [si]  
        jmp iteradado
        inc si 
        loop recorrer
        jmp final
        

    final:
ret




