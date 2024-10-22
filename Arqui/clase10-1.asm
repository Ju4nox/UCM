
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.DATA
    
    arrayuno dw 1,2,3,4,5,6
    arraydos dw 1,2,3,4,5,6
                          
.CODE


    lea si, arrayuno
    lea di, arraydos
    
    mov cx,0
    mov cx,6
    
    compara:
    
        mov ax, [si]
        mov bx, [di]
        
        cmp ax,bx
        jne stop
        add si,2
        add di,2
        loop compara
        sub di,12
        mov cx,6
        mov ax, 0
        mov bx, 0 
        jmp suma
                
        
    stop:
        hlt
       
    suma:   
        
        add ax,[si]
        add bx,[di]
        
        inc si
        inc si
        inc di
        inc di
        
        
        loop suma
        cmp ax,bx
        je iguales
        jg axmayor
        jl bxmayor
        
    iguales:
        hlt
    axmayor:
        hlt
    bxmayor:
        hlt    
    
 