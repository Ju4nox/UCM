
; genere aleatoriamente 20 numeros primos o narcisos
; entre el 0 y el 99

org 100h

.DATA
    
    lista db 20 dup(?)    
    numero dw 0
    contador db 1    
    
.CODE

    lea si, lista
    jmp inicio
    inicio:
        mov ax, 0
        mov dx, 0
        mov ah, 2Ch
        int 21h
        mov dh, 0
        mov numero, dx
        jmp primercheck


    primercheck:
        mov ax, numero
        mov ah, 0
        cmp al, 1
        je noprimo
    
        cmp ax, 2
        je esprimo
        mov bx, 2
        jmp primo
    
    primo:
        mov dx, 0
        div bx
        cmp dx, 0
        je noprimo
        
        inc bx
        cmp bx, numero
        je esprimo
        mov ax, numero
        mov ah, 0
        jmp primo
        
                       
    
    esprimo:
        mov [si], bx
        inc si
        inc contador
        cmp contador, 21
        je final
        mov bx, 0
        jmp inicio
            
    noprimo:
        jmp inicio
            
    
    
    final:
    hlt
ret




