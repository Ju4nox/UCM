; genera 10 numeros aleatorios
; debera contar la cantidad de pares e impares

 

org 100h

.DATA
    num dw 0
    pares dw 0
    impares dw 0
     
     
.CODE
    mov cx, 9 
    mov bx, 2
    principal:
        jmp comprobar
        jmp final
        
    comprobar:
        mov ah, 2CH
        int 21h
        mov num, dx
        mov dx, 0
        mov ax, num 
        div bx
        test dx, dx
        jnz sumarimpar
        jz sumarpar
        loop comprobar
                
    sumarpar:
        inc pares 
    sumarimpar:
        inc impares
        
    final:
ret




