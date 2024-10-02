;Lea en 8086 un numero natural entre 0 y 65535
;genere las macros necesarias para cumplir con 
;las siguientes respuestas
;en el caso de cumplir (puede ser mas de una)

; a) Si el numero es primo o no 
; b) Si el numero es narciso o no
; c) Si el numero tiene raiz exacta o no
; d) Si el numero cumple con dos casos
; e) Si el numero cumple con todos los casos

;Gonzalo Cerpa - Lucas Moya
;21.191.139-5 -

org 100h

.DATA
    mensaje db "Hola, ingrese un numero entero natural de hasta 5 digitos y menor a 65536 (Si es menor a 5 digitos rellenar los que no se usan con 0): $" 
    elnumero db 10, 13, "El numero $"
    mensajesiesprimo db " si es primo $"
    mensajenoesprimo db " no es primo $"
    mensajesiesnarciso db " si es narciso $"
    mensajenoesnarciso db " no es narciso $"
    mensajesitieneraiz db " si tiene raiz exacta $"
    mensajenotieneraiz db " no tiene raiz exacta $"
    mensajenocumple db 10, 13, "El numero no cumple el minimo de dos casos $"
    mensajecumple2 db 10, 13, "El numero cumple con dos casos $"
    mensajecumple3 db 10, 13, "El numero cumple con los tres casos $"
    miVar1 dw ?
    miVar2 dw ?
    miVar3 dw ?
    miVar4 dw ?
    miVar5 dw ?
    numero dw 0
    suma dw ?
    acumulador dw ?
    acumulador2 dw ?
    acumulador3 dw ?
    
    potencia dw ?
    
    siprimo db 0
    noprimo db 0
    siesnarciso db 0
    noesnarciso db 0
    siraizexacta db 0
    noraizexacta db 0       
.CODE


    agrupar_valores macro miVar1, miVar2, miVar3, miVar4, miVar5
        
        local nivelacionuno
        local nivelaciondos
        local nivelaciontres
        local nivelacioncuatro
        local nivelacioncinco
        
        nivelacionuno:
            mov ax, miVar1
            mov cx, 10000
            mul cx
            mov bx, ax
            
        nivelaciondos:
            mov ax, miVar2
            mov cx, 1000
            mul cx
            add bx, ax
        
        nivelaciontres:
            mov ax, miVar3
            mov cx, 100
            mul cx           
            add bx, ax
            
        nivelacioncuatro:
            mov ax, miVar4
            mov cx, 10
            mul cx
            add bx, ax
        
        nivelacioncinco:
            mov ax, miVar5
            add bx, ax
            
        mov numero, bx
    endm
    
    primo_o_no macro numero
        
        local esprimo
        local noesprimo
        local dividir
        local ciclofinal
        
        mov ax, numero
        cmp ax, 1
        je noesprimo
        cmp ax, 2
        jmp esprimo
        mov cx, 2
        jmp dividir
        
        noesprimo:
            mov noprimo, 1
            mov siprimo, 0
            jmp ciclofinal
            
        esprimo:
            mov siprimo, 1
            mov noprimo, 0
            jmp ciclofinal

        
        dividir:
            mov ax, numero              
            div cx           
            cmp dx, 0        
            je  noesprimo     
            inc cx
            mov dx, 0           
            cmp cx, numero          
            je esprimo
            jmp dividir
            
        ciclofinal:
            mov ax, 0
            mov bx, 0
            mov cx, 0
            mov dx, 0    
            

    endm
    
    narciso_o_no macro numero
        
        local contardigitos
        local yacontados
        local prepotencia1
        local prepotencia2
        local prepotencia3
        local prepotencia4
        local prepotencia5        
        local potencia1
        local potencia2
        local potencia3
        local potencia4
        local potencia5
        local comparar
        local esnarciso
        local nonarciso
        local finalciclo


        
        mov ax, numero
        mov bx, 10
        mov cx, 0

        
        contardigitos:
            inc cx                  
            mov dx, 0
            cmp ax, 9
            jle yacontados        
            div bx  
            test ax, ax 
            jne contardigitos
            
        yacontados:
            mov ax, numero
            mov potencia, cx
            jmp prepotencia1
        
        prepotencia1:
            mov ax, miVar1
            mov bx, miVar1
            mov cx, potencia
            jmp potencia1
             
        potencia1:
            cmp cx, 1
            jbe prepotencia2
            mul bx
            dec cx
            jmp potencia1
        
        prepotencia2:
            add dx, ax
            mov acumulador, dx
            mov ax, miVar2
            mov bx, miVar2
            mov cx, potencia
            jmp potencia2 
                
        potencia2:
            cmp cx, 1
            jbe prepotencia3
            mul bx
            dec cx
            jmp potencia2
        
        prepotencia3:
            mov dx, acumulador
            add dx, ax
            mov acumulador, dx
            mov ax, miVar3
            mov bx, miVar3
            mov cx, potencia
            jmp potencia3 
            
        potencia3:
            cmp cx, 1
            jbe prepotencia4
            mul bx
            dec cx
            jmp potencia3 
        
        prepotencia4:
            mov dx, acumulador
            add dx, ax
            mov acumulador, dx
            mov ax, miVar4
            mov bx, miVar4
            mov cx, potencia
            jmp potencia4 
                
        potencia4:
            cmp cx, 1
            jbe prepotencia5
            mul bx
            dec cx
            jmp potencia4
            
        prepotencia5:
            mov dx, acumulador
            add dx, ax
            mov acumulador, dx
            mov ax, miVar5
            mov bx, miVar5
            mov cx, potencia
            jmp potencia5    

        potencia5:
            cmp cx, 1
            jbe comparar
            mul bx
            dec cx
            
        comparar:
            mov dx, acumulador
            add dx, ax
            mov acumulador, dx
            mov ax, numero
            cmp dx, ax
            je esnarciso
            jne nonarciso
            
        esnarciso:
            mov siesnarciso, 1
            mov noesnarciso, 0
            jmp finalciclo
        
        nonarciso:
            mov siesnarciso, 0
            mov noesnarciso, 1
            jmp finalciclo
            
        finalciclo:
            mov ax, 0
            mov bx, 0
            mov cx, 0
            mov dx, 0
                 
        endm
        
        raiz_exacta_o_no macro numero
            
            local cuadrado
            local raizexacta
            local raiznoexacta
            local ciclofinal
            
            mov bx, numero
            
            cuadrado:
                cmp ax, bx
                je raizexacta
                cmp ax, bx
                jg raiznoexacta
                mov ax, 0
                inc cx
                mov ax, cx
                mul cx
                mov acumulador2, ax
                cmp ax, bx
                jl cuadrado
                cmp ax, bx
                jg raiznoexacta
            
            raizexacta:
                mov siraizexacta, 1
                mov noraizexacta, 0
                jmp ciclofinal
            
            raiznoexacta:
                mov noraizexacta, 1
                mov siraizexacta, 0
                jmp ciclofinal
            
            ciclofinal:
                mov ax, 0
                mov bx, 0
                mov cx, 0
                mov dx, 0            
        endm
        
        verificarcasoscumplidos macro siprimo, siesnarciso, siraizexacta
            
            local verificar
            local incrementar1
            local incrementar2
            local incrementar3
            local nocumple
            local cumple2
            local cumple3
            local ciclofinal
            
            comparacion1:
                cmp siprimo, 1
                je incrementar1
            
            comparacion2:
                cmp siesnarciso, 1
                je incrementar2
            
            comparacion3:   
                cmp siraizexacta, 1
                je incrementar3
               
            comparacionfinal:        
                cmp acumulador3, 2
                jl nocumple
            
                cmp acumulador3, 2
                je cumple2
                
                cmp acumulador3, 3
                je cumple3
            
            nocumple:
                lea dx, mensajenocumple
                mov ah, 9h
                int 21h
                jmp ciclofinal
                
            cumple2:
                lea dx, mensajecumple2
                mov ah, 9h
                int 21h
                jmp ciclofinal
                
            cumple3:
                lea dx, mensajecumple3
                mov ah, 9h
                int 21h
                jmp ciclofinal
            
            incrementar1:
                inc acumulador3
                jmp comparacion2
            
            incrementar2:
                inc acumulador3
                jmp comparacion3
                        
            incrementar3:
                inc acumulador3
                jmp comparacionfinal
            
            ciclofinal:
                
        endm
                
        mensajesprimo macro siprimo, noprimo
            
            local mensajeinicio
            local mensajesiprimo
            local mensajenoprimo
            local ciclofinal
            
            mov ax, 0
            mov bx, 0
            mov cx, 0
            mov dx, 0
            
            mensajeinicio:
                lea dx, elnumero
                mov ah, 9h
                int 21h
                
                mov ax, miVar1        
                add al, 48
                mov dh, 0   
                mov dl, al
                mov ah, 2
                int 21h
                
                mov ax, miVar2        
                add al, 48
                mov dh, 0   
                mov dl, al
                mov ah, 2
                int 21h
                
                mov ax, miVar3        
                add al, 48
                mov dh, 0   
                mov dl, al
                mov ah, 2
                int 21h
                
                mov ax, miVar4        
                add al, 48
                mov dh, 0   
                mov dl, al
                mov ah, 2
                int 21h
                
                mov ax, miVar5        
                add al, 48
                mov dh, 0   
                mov dl, al
                mov ah, 2
                int 21h
                
                cmp siprimo, 1
                je mensajesiprimo
            
                cmp noprimo, 1
                je mensajenoprimo
             
             mensajesiprimo:
                mov ax, 0
                mov dx, 0
                lea dx, mensajesiesprimo
                mov ah, 9h
                int 21h
                jmp ciclofinal:   
            
             mensajenoprimo:
                mov ax, 0
                mov dx, 0
                lea dx, mensajenoesprimo
                mov ah, 9h
                int 21h   
                jmp ciclofinal:
                
             ciclofinal:    
                
        endm    
        
        
        mensajenarciso macro siesnarciso, noesnarciso
            
            local mensajeinicio
            local mensajesinarciso
            local mensajenonarciso
            local ciclofinal
            
            mov ax, 0
            mov bx, 0
            mov cx, 0
            mov dx, 0
            
            mensajeinicio:
                lea dx, elnumero
                mov ah, 9h
                int 21h
                
                mov ax, miVar1        
                add al, 48
                mov dh, 0   
                mov dl, al
                mov ah, 2
                int 21h
                
                mov ax, miVar2        
                add al, 48
                mov dh, 0   
                mov dl, al
                mov ah, 2
                int 21h
                
                mov ax, miVar3        
                add al, 48
                mov dh, 0   
                mov dl, al
                mov ah, 2
                int 21h
                
                mov ax, miVar4        
                add al, 48
                mov dh, 0   
                mov dl, al
                mov ah, 2
                int 21h
                
                mov ax, miVar5        
                add al, 48
                mov dh, 0   
                mov dl, al
                mov ah, 2
                int 21h
                
                cmp siesnarciso, 1
                je mensajesinarciso
            
                cmp noesnarciso, 1
                je mensajenonarciso
             
             mensajesinarciso:
                lea dx, mensajesiesnarciso
                mov ah, 9h
                int 21h
                jmp ciclofinal:   
            
             mensajenonarciso:
                lea dx, mensajenoesnarciso
                mov ah, 9h
                int 21h   
                jmp ciclofinal:
                
             ciclofinal:    
                
        endm
        
        mensajeraiz macro siraizexacta, noraizexacta
            
            local mensajeinicio
            local mensajesiraiz
            local mensajenoraiz
            local ciclofinal
            
            mov ax, 0
            mov bx, 0
            mov cx, 0
            mov dx, 0
            
            mensajeinicio:
                lea dx, elnumero
                mov ah, 9h
                int 21h
                
                mov ax, miVar1        
                add al, 48
                mov dh, 0   
                mov dl, al
                mov ah, 2
                int 21h
                
                mov ax, miVar2        
                add al, 48
                mov dh, 0   
                mov dl, al
                mov ah, 2
                int 21h
                
                mov ax, miVar3        
                add al, 48
                mov dh, 0   
                mov dl, al
                mov ah, 2
                int 21h
                
                mov ax, miVar4        
                add al, 48
                mov dh, 0   
                mov dl, al
                mov ah, 2
                int 21h
                
                mov ax, miVar5        
                add al, 48
                mov dh, 0   
                mov dl, al
                mov ah, 2
                int 21h
                
                cmp siraizexacta, 1
                je mensajesiraiz
            
                cmp noraizexacta, 1
                je mensajenoraiz
             
             mensajesiraiz:
                lea dx, mensajesitieneraiz
                mov ah, 9h
                int 21h
                jmp ciclofinal:   
            
             mensajenoraiz:
                lea dx, mensajenotieneraiz
                mov ah, 9h
                int 21h   
                jmp ciclofinal:
                
             ciclofinal:    
                
        endm
        
        
        ingresar_numero macro miVar1, miVar2, miVar3, miVar4, miVar5 
            
            lea dx, mensaje
            mov ah, 9h
            int 21h
    
            mov ah, 1h
            int 21h
            sub al, 48
            mov ah, al
            mov ah, 0
            mov miVar1, ax
    
            mov ah, 1h
            int 21h
            sub al, 48
            mov ah, al
            mov ah, 0
            mov miVar2, ax
    
            mov ah, 1h
            int 21h
            sub al, 48
            mov ah, al
            mov ah, 0
            mov miVar3, ax
    
            mov ah, 1h
            int 21h
            sub al, 48
            mov ah, al
            mov ah, 0
            mov miVar4, ax
    
            mov ah, 1h
            int 21h
            sub al, 48
            mov ah, al
            mov ah, 0    
            mov miVar5, ax
        endm
    
    
    
    ingresar_numero miVar1, miVar2, miVar3, miVar4, miVar5 
    agrupar_valores miVar1, miVar2, miVar3, miVar4, miVar5
    narciso_o_no numero
    primo_o_no numero
    raiz_exacta_o_no numero
    verificarcasoscumplidos siprimo, siesnarciso, siraizexacta
    mensajesprimo siprimo, noprimo
    mensajenarciso siesnarciso, noesnarciso
    mensajeraiz siraizexacta, noraizexacta
      
    
ret