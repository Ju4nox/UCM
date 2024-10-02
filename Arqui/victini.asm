org 100h

.DATA
    pintar macro color
        push ax
        push bx
        push cx
        push dx
        
        mov al, color
        mov ah, 0ch
        int 10h
        
        pop dx
        pop cx
        pop bx
        pop ax
        
    endm
    
    Rectangulo macro alto, ancho, x, y, color
        
        local ciclo
        local nueva_fila
        local salida
        
        push ax
        push bx
        push cx
        push dx
        
        mov ax, x
        mov bx, y
        add ax, ancho
        add bx, alto
        
        mov cx, x
        mov dx, y
        
        ciclo:
            pintar color
            inc dx
            cmp dx, bx
            je nueva_fila
            jmp ciclo
            
        nueva_fila:
            mov dx, y
            inc cx
            cmp cx, ax
            je salida
            pintar color
            jmp ciclo
            
        salida:
            pop dx
            pop cx
            pop bx
            pop ax
    endm

.CODE
    mov ax, 12h
    int 10h
    
     ;orejas contorno
     Rectangulo 5, 30, 20, 75, 210
     Rectangulo 5, 20, 50, 80, 210
     Rectangulo 5, 20, 70, 85, 210
     Rectangulo 5, 15, 90, 90, 210
     Rectangulo 5, 15, 105, 95, 210 
     Rectangulo 5, 10, 120, 100, 210
     Rectangulo 5, 15, 130, 105, 210
     Rectangulo 5, 10, 145, 110, 210
     
     Rectangulo 20, 5, 150, 90, 210
     Rectangulo 25, 5, 155, 65, 210
     Rectangulo 25, 5, 160, 40, 210
     Rectangulo 20, 5, 165, 20, 210
     Rectangulo 5, 5, 170, 15, 210
     
     Rectangulo 20, 5, 175, 20, 210
     Rectangulo 35, 5, 180, 40, 210
     Rectangulo 40, 5, 185, 75, 210
     Rectangulo 25, 5, 180, 115, 210
     Rectangulo 20, 5, 175, 140, 210
     
     Rectangulo 5, 5, 30, 80, 210
     Rectangulo 5, 15, 35, 85, 210
     Rectangulo 5, 15, 50, 90, 210
     Rectangulo 5, 15, 65, 95, 210
     Rectangulo 5, 10, 80, 100, 210
     Rectangulo 5, 10, 90, 105, 210
     Rectangulo 5, 10, 100, 110, 210 
     Rectangulo 5, 10, 110, 115, 210
     Rectangulo 5, 10, 120, 120, 210
     Rectangulo 5, 5, 130, 125, 210
     Rectangulo 5, 10, 135, 130, 210
     Rectangulo 5, 5, 145, 135, 210
     Rectangulo 5, 10, 150, 140, 210
     Rectangulo 5, 5, 160, 145, 210
     Rectangulo 5, 5, 165, 150, 210
     Rectangulo 5, 5, 170, 155, 210
 
     Rectangulo 5, 5, 20, 80, 210
     Rectangulo 5, 5, 25, 85, 210
     Rectangulo 5, 5, 30, 90, 210 
     Rectangulo 5, 5, 35, 95, 210
     Rectangulo 5, 5, 40, 100, 210
     Rectangulo 5, 5, 45, 105, 210
     Rectangulo 5, 5, 50, 110, 210
     Rectangulo 5, 10, 55, 115, 210
     Rectangulo 5, 5, 65, 120, 210
     Rectangulo 5, 5, 70, 125, 210 
     Rectangulo 5, 5, 75, 130, 210
     Rectangulo 5, 5, 80, 135, 210
     Rectangulo 5, 5, 85, 140, 210
     Rectangulo 5, 5, 90, 145, 210
     Rectangulo 5, 5, 95, 150, 210
     
     ;cara contorno
     Rectangulo 25, 5, 100, 155, 210
     Rectangulo 10, 5, 105, 180, 210
     Rectangulo 5, 5, 110, 190, 210
     Rectangulo 5, 10, 115, 195, 210
     Rectangulo 5, 10, 125, 200, 210
     Rectangulo 5, 10, 135, 205, 210
     Rectangulo 5, 5, 185, 130, 210
     Rectangulo 5, 5, 190, 135, 210
     Rectangulo 5, 5, 195, 140, 210 
     Rectangulo 10, 5, 200, 145, 210
     Rectangulo 25, 5, 205, 155, 210
     Rectangulo 10, 5, 200, 180, 210
     Rectangulo 5, 5, 195, 190, 210
     Rectangulo 5, 10, 185, 195, 210
     Rectangulo 5, 10, 175, 200, 210
     Rectangulo 5, 10, 105, 205, 210 
 
     
     ;relleno orejas
     Rectangulo 5, 5, 25, 80, 138
     Rectangulo 5, 15, 65, 100, 138
     Rectangulo 5, 20, 70, 105, 138
     Rectangulo 5, 5, 50, 105, 138
     Rectangulo 5, 20, 55, 110, 138
     Rectangulo 5, 15, 85, 110, 138
     Rectangulo 5, 15, 95, 115, 138
     Rectangulo 5, 15, 105, 120, 138
     Rectangulo 5, 15, 115, 125, 138
     Rectangulo 5, 5, 50, 110, 6
     
     Rectangulo 5, 15, 65, 115, 138
     Rectangulo 5, 15, 70, 120, 138
     Rectangulo 5, 15, 75, 125, 138
     Rectangulo 5, 20, 80, 130, 138
     Rectangulo 5, 20, 85, 135, 138
     Rectangulo 5, 15, 90, 140, 138
     Rectangulo 5, 15, 95, 145, 138
     Rectangulo 5, 10, 100, 150, 138
    
     Rectangulo 5, 5, 30, 85, 91
     Rectangulo 5, 15, 35, 90, 91
     Rectangulo 5, 25, 40, 95, 91
     Rectangulo 5, 20, 45, 100, 91
     Rectangulo 5, 15, 55, 105, 91
    
     Rectangulo 5, 10, 75, 110, 20
     Rectangulo 5, 15, 80, 115, 20
     Rectangulo 5, 20, 85, 120, 20
     Rectangulo 5, 25, 90, 125, 20
     Rectangulo 5, 20, 100, 130, 20
     Rectangulo 5, 15, 105, 135, 20
     Rectangulo 5, 10, 105, 140, 20
     
     
     ;relleno orejas superior
     Rectangulo 5, 15, 35, 80, 42
     Rectangulo 5, 25, 160, 80, 42 
     Rectangulo 5, 20, 50, 85, 42
     Rectangulo 5, 25, 160, 85, 42
     Rectangulo 5, 25, 65, 90, 42
     Rectangulo 5, 30, 155, 90, 42
     Rectangulo 5, 25, 80, 95, 42
     Rectangulo 5, 30, 155, 95, 42
     Rectangulo 5, 30, 90, 100, 42
     Rectangulo 5, 30, 155, 100, 42
     Rectangulo 5, 30, 100, 105, 42
     Rectangulo 5, 30, 155, 105, 42
     Rectangulo 5, 30, 110, 110, 42
     Rectangulo 5, 30, 155, 110, 42
 
     
     Rectangulo 5, 60, 120, 115, 42
     Rectangulo 5, 50, 130, 120, 42 
     Rectangulo 5, 45, 135, 125, 42
     Rectangulo 5, 35, 145, 130, 42
     Rectangulo 5, 30, 150, 135, 42
     Rectangulo 5, 15, 160, 140, 42
     Rectangulo 5, 10, 165, 145, 42
     Rectangulo 5, 5, 140, 110, 42
     
     Rectangulo 25, 5, 160, 65, 42
     Rectangulo 50, 5, 165, 40, 42
     Rectangulo 70, 5, 170, 20, 42
     Rectangulo 50, 5, 175, 40, 42
     Rectangulo 15, 5, 180, 75, 42  
     
     ;relleno cara
     Rectangulo 5, 5, 130, 130, 91
     Rectangulo 5, 25, 120, 135, 91
     Rectangulo 5, 35, 115, 140, 91
     Rectangulo 5, 50, 110, 145, 91
     Rectangulo 5, 20, 110, 150, 91
     Rectangulo 5, 20, 145, 150, 91
     Rectangulo 5, 20, 105, 155, 91
     Rectangulo 5, 20, 150, 155, 91
     Rectangulo 5, 15, 105, 160, 91
     Rectangulo 5, 30, 155, 160, 91
     Rectangulo 5, 15, 105, 165, 91
     Rectangulo 5, 15, 105, 170, 91
     Rectangulo 5, 15, 105, 175, 91
      
     Rectangulo 5, 25, 155, 165, 91
     Rectangulo 5, 35, 155, 170, 91
     Rectangulo 5, 5, 155, 175, 91 
     Rectangulo 5, 10, 150, 180, 91 
     Rectangulo 5, 15, 145, 185, 91
 
     Rectangulo 5, 15, 110, 180, 91
     Rectangulo 5, 20, 110, 185, 91     
    
     Rectangulo 5, 45, 115, 190, 91
     Rectangulo 5, 40, 125, 195, 91
     Rectangulo 5, 40, 135, 200, 91
     
     Rectangulo 5, 10, 175, 195, 91
     Rectangulo 5, 15, 180, 190, 91
     Rectangulo 5, 15, 185, 185, 91
     Rectangulo 5, 15, 185, 180, 91
     Rectangulo 5, 25, 180, 175, 91
 
     Rectangulo 20, 5, 180, 140, 91
     Rectangulo 10, 5, 185, 135, 91
     Rectangulo 5, 5, 200, 170, 91
      
     Rectangulo 5, 5, 185, 165, 42
       
     Rectangulo 5, 5, 180, 165, 210
       
       
     ;ojos
     Rectangulo 25, 5, 140, 150, 1
     Rectangulo 10, 5, 145, 160, 1
     Rectangulo 20, 5, 150, 160, 1
     Rectangulo 5, 15, 125, 170, 1
     Rectangulo 5, 15, 130, 175, 1
     Rectangulo 5, 5, 125, 165, 1
     Rectangulo 5, 5, 120, 160, 1
     Rectangulo 5, 5, 135, 185, 1
      
     Rectangulo 5, 15, 130, 180, 9
     Rectangulo 5, 10, 140, 175, 9
     Rectangulo 5, 5, 145, 170, 9 
     
     Rectangulo 15, 5, 130, 155, 15
     Rectangulo 5, 5, 135, 160, 15
      
     Rectangulo 5, 5, 130, 185, 114
     Rectangulo 5, 5, 140, 185, 114
       
     Rectangulo 5, 5, 125, 160, 30
     Rectangulo 5, 5, 135, 155, 30
     Rectangulo 5, 5, 135, 165, 30
       
       
     Rectangulo 5, 5, 190, 140, 1
     Rectangulo 15, 5, 185, 145, 1
     Rectangulo 20, 5, 195, 145, 1
     Rectangulo 10, 5, 190, 155, 1
     Rectangulo 5, 10, 190, 170, 1
     Rectangulo 5, 5, 200, 165, 1
     Rectangulo 5, 5, 125, 175, 1
      
     Rectangulo 5, 5, 185, 160, 9
     Rectangulo 5, 10, 190, 165, 9
     Rectangulo 10, 5, 200, 155, 9
     Rectangulo 10, 5, 190, 145, 15 
     
     
     ;boca
     Rectangulo 5, 5, 165, 175, 15 
     Rectangulo 20, 5, 160, 175, 66
     Rectangulo 5, 10, 170, 175, 66
     Rectangulo 10, 5, 180, 180, 66
     Rectangulo 5, 5, 175, 190, 66
     Rectangulo 5, 10, 165, 195, 66
     
     Rectangulo 5, 15, 165, 180, 63
     Rectangulo 5, 15, 165, 185, 63
     Rectangulo 5, 10, 165, 190, 63
    

     Rectangulo 10, 5, 140, 205, 210
     Rectangulo 5, 15, 130, 215, 210
     Rectangulo 5, 15, 115, 220, 210
     Rectangulo 5, 25, 95, 225, 210
     Rectangulo 5, 15, 85, 220, 210 
     Rectangulo 10, 5, 100, 210, 210
     Rectangulo 5, 5, 95, 205, 210
     Rectangulo 5, 10, 95, 195, 210
     Rectangulo 5, 5, 105, 200, 210
     
     ;brazos
     Rectangulo 15, 5, 90, 190, 4
     Rectangulo 5, 5, 85, 185, 4
     Rectangulo 10, 5, 80, 185, 4
     Rectangulo 5, 10, 65, 190, 4
     Rectangulo 5, 5, 75, 195, 4
     Rectangulo 5, 5, 80, 200, 4
     Rectangulo 5, 5, 90, 210, 4 
     Rectangulo 5, 5, 80, 210, 4 
     Rectangulo 5, 5, 85, 215, 4
     
     Rectangulo 10, 5, 85, 190, 42
     Rectangulo 5, 10, 85, 205, 42
     Rectangulo 10, 5, 95, 210, 42 
     Rectangulo 5, 5, 90, 215, 42
     Rectangulo 5, 5, 75, 200, 42 
     Rectangulo 5, 5, 70, 195, 42
     
     
     Rectangulo 5, 10, 95, 200, 91
     Rectangulo 5, 15, 100, 205, 91 
     Rectangulo 5, 35, 105, 210, 91
     Rectangulo 5, 20, 105, 215, 91
     Rectangulo 5, 10, 100, 220, 91
  
     Rectangulo 5, 5, 125, 215, 138
     Rectangulo 5, 5, 110, 220, 138
     
     ;cuerpo y cola
     Rectangulo 5, 10, 135, 205, 210
     Rectangulo 5, 5, 140, 210, 210
     Rectangulo 5, 15, 130, 215, 210
     Rectangulo 10, 5, 135, 220, 210
    
     Rectangulo 5, 5, 130, 230, 210
     Rectangulo 5, 10, 120, 235, 210
    
     Rectangulo 5, 5, 120, 230, 210
     Rectangulo 5, 5, 115, 225, 210
     Rectangulo 10, 5, 115, 240, 210
     Rectangulo 5, 10, 105, 235, 210
     Rectangulo 10, 5, 100, 240, 210
     Rectangulo 5, 5, 110, 250, 210
    
     Rectangulo 5, 15, 75, 235, 210
     Rectangulo 5, 5, 70, 230, 210
     Rectangulo 5, 10, 70, 220, 210
     Rectangulo 5, 5, 65, 215, 210
     Rectangulo 5, 10, 55, 210, 210
    
     Rectangulo 5, 5, 50, 205, 210
     Rectangulo 15, 5, 45, 190, 210
     Rectangulo 5, 10, 50, 190, 210
     Rectangulo 5, 5, 60, 195, 210
    
     Rectangulo 10, 5, 55, 215, 210
     Rectangulo 5, 5, 60, 225, 210
     Rectangulo 10, 5, 65, 230, 210
     Rectangulo 5, 5, 70, 240, 210
    
     Rectangulo 5, 10, 75, 245, 210
     Rectangulo 5, 10, 85, 250, 210
     Rectangulo 5, 15, 95, 255, 210
    
     Rectangulo 10, 5, 110, 255, 210
     Rectangulo 5, 5, 115, 265, 210
     Rectangulo 5, 5, 110, 270, 210
     Rectangulo 5, 5, 120, 270, 210
     Rectangulo 5, 15, 125, 275, 210
     Rectangulo 5, 10, 140, 270, 210
    
     Rectangulo 5, 15, 150, 265, 210
     Rectangulo 5, 15, 165, 270, 210
     Rectangulo 5, 20, 180, 275, 210
     Rectangulo 5, 5, 195, 270, 210
    
     Rectangulo 25, 5, 190, 245, 210
     Rectangulo 5, 5, 185, 265, 210 
     
     Rectangulo 10, 5, 145, 220, 210
     Rectangulo 10, 5, 150, 230, 210
     Rectangulo 5, 5, 155, 240, 210
     Rectangulo 5, 5, 160, 235, 210
     
     ;brazo derecho
     Rectangulo 15, 5, 165, 215, 210
     Rectangulo 5, 10, 185, 245, 210
     Rectangulo 5, 5, 170, 220, 210
     Rectangulo 5, 5, 175, 225, 210  
    
     Rectangulo 5, 5, 180, 240, 210
     Rectangulo 5, 10, 170, 235, 210    
     Rectangulo 5, 5, 170, 230, 210
     Rectangulo 5, 5, 180, 230, 210
     Rectangulo 5, 10, 185, 235, 210
     Rectangulo 5, 10, 195, 240, 210
     Rectangulo 5, 5, 205, 235, 210
     Rectangulo 5, 10, 210, 240, 210
     Rectangulo 5, 5, 205, 235, 210
     Rectangulo 5, 5, 210, 230, 210
    
     Rectangulo 5, 5, 195, 270, 210 
    
     Rectangulo 5, 5, 215, 225, 210
     Rectangulo 5, 5, 210, 230, 210
     Rectangulo 5, 5, 220, 220, 210
    
     Rectangulo 5, 15, 210, 215, 210
     Rectangulo 5, 10, 205, 210, 210
     Rectangulo 5, 5, 205, 220, 210
     Rectangulo 5, 20, 185, 215, 210
     Rectangulo 5, 20, 170, 210, 210
     Rectangulo 5, 10, 165, 205, 210 
    
     Rectangulo 5, 10, 190, 205, 210
     Rectangulo 5, 10, 200, 200, 210
     Rectangulo 5, 5, 210, 205, 210
    
     Rectangulo 5, 15, 185, 220, 91
     Rectangulo 5, 30, 180, 225, 91
     Rectangulo 5, 20, 185, 230, 91
     Rectangulo 5, 10, 195, 235, 91
    
    
     Rectangulo 5, 5, 170, 225, 138
     Rectangulo 5, 5, 175, 230, 138
     Rectangulo 5, 5, 180, 235, 138
     Rectangulo 5, 10, 185, 240, 138
    
                 
     Rectangulo 5, 15, 170, 215, 138
     Rectangulo 5, 10, 175, 220, 138
     Rectangulo 5, 15, 190, 210, 138
     Rectangulo 5, 10, 200, 205, 138
     Rectangulo 5, 15, 200, 220, 138
     Rectangulo 5, 5, 205, 230, 138
                        
     Rectangulo 5, 5, 205, 215, 42
     Rectangulo 5, 5, 215, 220, 42
     Rectangulo 5, 5, 210, 225, 42
     Rectangulo 5, 5, 210, 235, 42               
               
     Rectangulo 5, 5, 210, 220, 12


     Rectangulo 10, 5, 145, 210, 91
     Rectangulo 15, 5, 150, 215, 91
     Rectangulo 25, 5, 155, 215, 91
     Rectangulo 10, 5, 160, 220, 91
    
     ;colores cuerpo dentro
     Rectangulo 40, 5, 140, 220, 91
     Rectangulo 25, 5, 135, 235, 91
     Rectangulo 20, 5, 130, 235, 91
     Rectangulo 15, 5, 125, 240, 91
     Rectangulo 5, 5, 120, 245, 91

     Rectangulo 5, 20, 145, 205, 138
     Rectangulo 5, 20, 150, 210, 138
     Rectangulo 5, 5, 160, 215, 138
     Rectangulo 10, 5, 145, 230, 138
    
     Rectangulo 30, 5, 145, 230, 91
     Rectangulo 20, 5, 150, 240, 91
     Rectangulo 15, 5, 155, 245, 91
     Rectangulo 20, 5, 160, 240, 91
     Rectangulo 20, 5, 165, 235, 91
     Rectangulo 10, 5, 170, 245, 91
     Rectangulo 15, 5, 175, 240, 91
     Rectangulo 5, 10, 190, 230, 91
    
     Rectangulo 5, 5, 135, 230, 138
     Rectangulo 5, 10, 160, 230, 138
     Rectangulo 5, 10, 115, 250, 138
     Rectangulo 5, 20, 115, 255, 138
     Rectangulo 5, 75, 115, 260, 138
     Rectangulo 5, 30, 120, 265, 138
     Rectangulo 5, 15, 125, 270, 138
     Rectangulo 5, 25, 165, 255, 138
     Rectangulo 5, 10, 180, 250, 138
     Rectangulo 5, 20, 165, 265, 138
     
     Rectangulo 5, 5, 135, 230, 138
     Rectangulo 5, 45, 75, 230, 138
     Rectangulo 5, 5, 115, 235, 138
     Rectangulo 5, 25, 75, 240, 138
     Rectangulo 5, 5, 70, 235, 138
     Rectangulo 5, 15, 90, 235, 138
     Rectangulo 5, 15, 85, 245, 138
     Rectangulo 5, 10, 105, 240, 138
     Rectangulo 5, 10, 105, 245, 138
     Rectangulo 5, 15, 95, 250, 138
     Rectangulo 5, 5, 120, 240, 138
    
     Rectangulo 5, 5, 65, 225, 138
     Rectangulo 5, 5, 70, 215, 138
     Rectangulo 5, 5, 50, 200, 138
     Rectangulo 5, 5, 55, 205, 138
    
     ;claro cola
     Rectangulo 5, 10, 50, 195, 91
     Rectangulo 5, 10, 55, 200, 91
     Rectangulo 5, 15, 60, 205, 91
     Rectangulo 5, 10, 65, 210, 91
     Rectangulo 5, 5, 75, 215, 91
     Rectangulo 5, 5, 65, 215, 91
     Rectangulo 5, 10, 65, 220, 91
     Rectangulo 5, 5, 80, 220, 91
     Rectangulo 5, 15, 75, 225, 91
    
    
     ;pies
     Rectangulo 5, 5, 115, 270, 41
     Rectangulo 5, 5, 110, 275, 41
     Rectangulo 5, 5, 120, 275, 41
    
     Rectangulo 5, 10, 185, 270, 41
     
     Rectangulo 5, 5, 105, 275, 112
     Rectangulo 5, 5, 115, 275, 112
     Rectangulo 5, 5, 180, 270, 112
    
     Rectangulo 5, 20, 105, 280, 6


                  
ret