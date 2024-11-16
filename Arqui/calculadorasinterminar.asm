; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.data
    var1 dw ?                                                ;calculadora de 4 operaciones
    var2 dw ?                                                ;creacion de los valores y cadenas
    ing dw 10,13,"Ingrese un numero: $"
    resulta dw 10,13,"El resultado es: $"
    menu dw "Bienvenido al menu $"
    opcionsuma dw 10, 13, "1) Suma $"
    opcionresta dw 10, 13, "2) Resta $"
    opcionmul dw 10, 13, "3)Mul $"
    opciondiv dw 10, 13, "4) Division $"
    salida dw 10, 13, "5) Salir $"
    opcion dw 10, 13, "Ingrese una opcion: $"
    opsel dw ?                                                ;numeros que van a ser 2 en este caso
.code

    mov ax, @data
    mov ds, ax
    ;muestra en pantalla "Bienvenido al Menu"
    mov dx, offset menu
    mov ah, 9h
    int 21h 
    ;muestra la opcion suma
    mov dx, offset opcionsuma
    mov ah, 9h
    int 21h
    ;muestra la opcion resta
    mov dx, offset opcionresta
    mov ah, 9h
    int 21h
    ;muestra la opcion mul
    mov dx, offset opcionmul
    mov ah, 9h
    int 21h
    ;muestra la opcion div
    mov dx, offset opciondiv
    mov ah, 9h
    int 21h
    ;muestra la opcion salida
    mov dx, offset salida
    mov ah, 9h
    int 21h
    ;muestra para seleccionar una opcion
    mov dx, offset opcion
    mov ah, 9h
    int 21h                                       ;preguntar siempre y cuando llegue a una etiqueta
    mov cx,1
    men:
        inc cx
        ;lee el input
        mov ah,01
        int 21h
        ;almacena
        mov bl, al
        sub bl, 30h
        ;comparar bx con las opciones y hacer saltos
        cmp bl,1
        je sumar
        cmp bl,2
        je restar
        cmp bl,5
        je terminar
    loop men
    
    sumar:
        ;muestra para seleccionar un numero
        mov dx, offset ing
        mov ah, 9h
        int 21h
        ;lee el input
        mov ah,01
        int 21h
        ;almacenar el numero leido
        mov bl, al
        sub bl, 30h
        mov var1, bx
        ;muestra para seleccionar un numero
        mov dx, offset ing
        mov ah, 9h
        int 21h
        ;lee el input
        mov ah,01
        int 21h
        ;almacenar el numero leido
        mov dl, al
        sub dl, 30h
        mov var2, dx
        ;sumarlos
        add bl,dl
        ;muestra en pantalla "El resultado es:"
        mov dx, offset resulta
        mov ah, 9h
        int 21h
        ;resultado queda en bx y lo muestra
        mov dx,bx
        add dx,48
        mov ah,2
        int 21h 
        mov cx,1
        cmp dx,10
        jge muestra
        
        
        
     restar:;muestra para seleccionar un numero
        mov dx, offset ing
        mov ah, 9h
        int 21h
        ;lee el input
        mov ah,01
        int 21h
        ;almacenar el numero leido
        mov bl, al
        sub bl, 30h
        mov var1, bx
        ;muestra para seleccionar un numero
        mov dx, offset ing
        mov ah, 9h
        int 21h
        ;lee el input
        mov ah,01
        int 21h
        ;almacenar el numero leido
        mov dl, al
        sub dl, 30h
        mov var2, dx
        ;restarlos
        sub bl,dl
        ;muestra para seleccionar una opcion
        mov dx, offset resulta
        mov ah, 9h
        int 21h
        ;resultado queda en bx y lo muestra
        mov dx,bx
        add dx,48
        mov ah,2
        int 21h
        
        
        muestra:
            ;resultado queda en bx y lo muestra
            int 21h
            loop muestra
        
        add cx,1    
        opciones:
            inc cx 
            ;muestra para seleccionar una opcion
            mov dx, offset opcion
            mov ah, 9h
            int 21h
            ;lee el input
            mov ah,01
            int 21h
            ;almacena
            mov bl, al
            sub bl, 30h
            cmp bl,1
            je sumar
            cmp bl,2
            je restar
            cmp bl,5
            je terminar
            loop opciones
            
        
        
        
    terminar:
        hlt        



;arregla el error que no muestra en pantalla cuando el numero tiene dos digitos
;dependiendo de como lo arregles puedes crear otra etiqueta que muestre los dos digitos en pantalla y que pregunte si vuelve a las opciones o no
;caso contrario es que se quede en la misma etiqueta y ahi pregunte si vuelve o no a las opciones


