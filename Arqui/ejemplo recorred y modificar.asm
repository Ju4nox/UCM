
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.DATA


    lista dw 10 dup(?)
    acumulador db 1 
    
    
.CODE
    lea si, lista
    
    mov cx, 7
    mov ah, 2ch
    int 21h
    jmp recorrermodif
    
    
    recorrermodif:
        mov [si], dl
        inc si
        inc si
        inc acumulador
        cmp acumulador, 11
        je final
        jmp recorrermodif
    
    final:
        hlt
ret




