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
    

     Rectangulo 9, 3, 201, 63, 20
     Rectangulo 9, 3, 252, 63, 20
     
     Rectangulo 15, 3, 204, 72, 20
     Rectangulo 15, 3, 249, 72, 20
     
     Rectangulo 24, 3, 207, 87, 20
     Rectangulo 24, 3, 246, 87, 20
     
     Rectangulo 30, 3, 210, 108, 20
     Rectangulo 30, 3, 243, 108, 20
     
     Rectangulo 3, 3, 213, 129, 20
     Rectangulo 3, 3, 240, 129, 20
     
     Rectangulo 3, 24, 216, 126, 20
     
     Rectangulo 9, 3, 198, 72, 20
     Rectangulo 9, 3, 255, 72, 20
     
     Rectangulo 15, 3, 195, 81, 20
     Rectangulo 15, 3, 258, 81, 20
     
     Rectangulo 15, 3, 192, 96, 20
     Rectangulo 15, 3, 261, 96, 20
     
     Rectangulo 33, 3, 189, 111, 20
     Rectangulo 33, 3, 264, 111, 20
     
     Rectangulo 39, 3, 201, 90, 20
     Rectangulo 39, 3, 252, 90, 20
     
     Rectangulo 12, 3, 198, 126, 20
     Rectangulo 12, 3, 255, 126, 20
     
     Rectangulo 6, 3, 195, 138, 20
     Rectangulo 6, 3, 258, 138, 20
     
      
      
       
       
      
      Rectangulo 42, 3, 192, 144, 20
      Rectangulo 42, 3, 261, 144, 20
      
      Rectangulo 3, 3, 195, 186, 20
      Rectangulo 3, 3, 258, 186, 20  
     
      Rectangulo 36, 3, 198, 189, 20
      Rectangulo 36, 3, 255, 189, 20  
      
      Rectangulo 45, 3, 195, 222, 20
      Rectangulo 45, 3, 258, 222, 20
      
      Rectangulo 3, 3, 201, 195, 20
      Rectangulo 3, 3, 252, 195, 20
      
      Rectangulo 3, 3, 204, 198, 20
      Rectangulo 3, 3, 249, 198, 20
      
      Rectangulo 6, 3, 207, 201, 20
      Rectangulo 6, 3, 246, 201, 20 
      
      Rectangulo 18, 3, 210, 207, 20
      Rectangulo 18, 3, 243, 207, 20 
      
      Rectangulo 3, 3, 213, 225, 20
      Rectangulo 3, 3, 240, 225, 20 
      
      Rectangulo 3, 6, 216, 228, 20
      Rectangulo 3, 6, 234, 228, 20
      
      Rectangulo 3, 12, 222, 231, 20
       
       
       
      
      Rectangulo 3, 3, 198, 165, 20
      Rectangulo 3, 3, 255, 165, 20
      
      Rectangulo 9, 3, 201, 168, 20
      Rectangulo 9, 3, 252, 168, 20
      
      Rectangulo 3, 3, 204, 168, 20
      Rectangulo 3, 3, 249, 168, 20
      
      Rectangulo 3, 3, 207, 171, 20
      Rectangulo 3, 3, 246, 171, 20
      
      Rectangulo 3, 3, 210, 174, 20
      Rectangulo 3, 3, 243, 174, 20
      
      Rectangulo 12, 3, 213, 177, 20
      Rectangulo 12, 3, 240, 177, 20
      
      Rectangulo 3, 6, 207, 180, 20
      Rectangulo 3, 6, 243, 180, 20
     
      Rectangulo 3, 3, 204, 177, 20
      Rectangulo 3, 3, 249, 177, 20
     
     
     
      Rectangulo 33, 3, 216, 189, 20
      Rectangulo 33, 3, 237, 189, 20
      
      Rectangulo 3, 3, 219, 210, 20
      Rectangulo 3, 3, 234, 210, 20
      
      Rectangulo 3, 12, 222, 207, 20
      
      Rectangulo 3, 3, 219, 222, 20
      Rectangulo 3, 3, 234, 222, 20
      
      Rectangulo 3, 12, 222, 225, 20
     
      Rectangulo 6, 3, 225, 219, 20
      Rectangulo 6, 3, 228, 219, 20
      
      Rectangulo 3, 3, 222, 216, 20
      Rectangulo 3, 3, 231, 216, 20
      
      Rectangulo 3, 3, 225, 216, 31
      Rectangulo 3, 3, 228, 216, 31
     
        
        
        
     
      Rectangulo 6, 3, 204, 171, 40
      Rectangulo 6, 3, 249, 171, 40
     
      Rectangulo 6, 3, 207, 174, 40
      Rectangulo 6, 3, 246, 174, 40
      
      Rectangulo 3, 3, 210, 177, 40
      Rectangulo 3, 3, 243, 177, 40
     
       
       
       
       Rectangulo 3, 6, 213, 138, 20
       Rectangulo 3, 6, 237, 138, 20
       
       Rectangulo 3, 3, 219, 141, 20
       Rectangulo 3, 3, 234, 141, 20
       
       Rectangulo 3, 3, 222, 144, 20
       Rectangulo 3, 3, 231, 144, 20
       Rectangulo 6, 6, 225, 147, 20
       
       Rectangulo 3, 3, 222, 135, 20
       Rectangulo 3, 3, 231, 135, 20
       
       Rectangulo 3, 6, 225, 132, 20
       Rectangulo 3, 6, 225, 138, 20
       
       Rectangulo 6, 3, 222, 153, 20
       Rectangulo 6, 3, 231, 153, 20
       
       Rectangulo 6, 3, 219, 159, 20
       Rectangulo 6, 3, 234, 159, 20
       
       Rectangulo 6, 3, 222, 165, 20
       Rectangulo 6, 3, 231, 165, 20
       
       Rectangulo 6, 6, 225, 171, 20
       
       
       Rectangulo 3, 6, 225, 135, 53
       Rectangulo 18, 6, 225, 153, 53
       Rectangulo 6, 3, 222, 159, 53
       Rectangulo 6, 3, 231, 159, 53
      
       Rectangulo 3, 24, 216, 129, 44
       Rectangulo 3, 12, 213, 132, 44
       Rectangulo 3, 12, 231, 132, 44
       Rectangulo 3, 9, 213, 135, 44
       Rectangulo 3, 9, 234, 135, 44
      
       Rectangulo 3, 6, 219, 138, 44
       Rectangulo 3, 6, 231, 138, 44
      
       Rectangulo 3, 12, 222, 141, 44
       
       Rectangulo 3, 6, 225, 144, 44



       
   
     Rectangulo 24, 3, 195, 114, 27
     Rectangulo 45, 3, 198, 81, 27
     Rectangulo 18, 3, 201, 72, 27
     Rectangulo 75, 3, 204, 87, 27
     Rectangulo 54, 3, 207, 111, 27
    
     Rectangulo 42, 3, 195, 144, 27
     Rectangulo 27, 3, 198, 138, 27
     Rectangulo 33, 3, 201, 129, 27
    
     Rectangulo 24, 3, 210, 144, 27
     Rectangulo 27, 3, 213, 144, 27
     Rectangulo 27, 3, 216, 147, 27
     Rectangulo 9, 3, 219, 150, 27
     Rectangulo 12, 3, 219, 165, 27
     Rectangulo 12, 3, 222, 171, 27
                         
     Rectangulo 6, 6, 225, 180, 27
     Rectangulo 18, 12, 222, 186, 27
    
      
      
      
                       
     Rectangulo 24, 3, 258, 114, 27
     Rectangulo 45, 3, 255, 81, 27
     Rectangulo 18, 3, 252, 72, 27
     Rectangulo 75, 3, 249, 87, 27
     Rectangulo 54, 3, 246, 111, 27
    
     Rectangulo 42, 3, 258, 144, 27
     Rectangulo 27, 3, 255, 138, 27
     Rectangulo 33, 3, 252, 129, 27
    
     Rectangulo 24, 3, 243, 144, 27
     Rectangulo 27, 3, 240, 144, 27
     Rectangulo 27, 3, 237, 147, 27
     Rectangulo 9, 3, 234, 150, 27
     Rectangulo 12, 3, 234, 165, 27
     Rectangulo 12, 3, 231, 171, 27

      
      
    
     Rectangulo 6, 3, 198, 183, 27
     Rectangulo 12, 3, 201, 183, 27
     Rectangulo 12, 3, 204, 186, 27
     Rectangulo 12, 3, 207, 189, 27
     Rectangulo 18, 3, 210, 189, 27
     Rectangulo 33, 3, 213, 192, 27
     Rectangulo 6, 3, 216, 222, 27
     Rectangulo 3, 3, 219, 225, 27
     
     Rectangulo 3, 12, 222, 228, 27
    
    
     Rectangulo 6, 3, 255, 183, 27
     Rectangulo 12, 3, 252, 183, 27
     Rectangulo 12, 3, 249, 186, 27
     Rectangulo 12, 3, 246, 189, 27
     Rectangulo 18, 3, 243, 189, 27 
     Rectangulo 33, 3, 240, 192, 27
     Rectangulo 6, 3, 237, 222, 27
     Rectangulo 3, 3, 234, 225, 27


     Rectangulo 33, 3, 204, 201, 27
     Rectangulo 30, 3, 207, 207, 27
     Rectangulo 3, 3, 201, 228, 27
     Rectangulo 12, 3, 210, 225, 27
     Rectangulo 12, 3, 213, 228, 27
     Rectangulo 9, 3, 216, 231, 27
     Rectangulo 9, 3, 219, 231, 27
     Rectangulo 6, 3, 222, 234, 27
     Rectangulo 9, 6, 225, 234, 27
     
     Rectangulo 33, 3, 249, 201, 27
     Rectangulo 30, 3, 246, 207, 27
     Rectangulo 3, 3, 252, 228, 27
     Rectangulo 12, 3, 243, 225, 27
     Rectangulo 12, 3, 240, 228, 27
     Rectangulo 9, 3, 237, 231, 27
     Rectangulo 9, 3, 234, 231, 27
     Rectangulo 6, 3, 231, 234, 27
    
    
     Rectangulo 3, 12, 222, 210, 27
     Rectangulo 3, 18, 219, 213, 27
     Rectangulo 6, 3, 219, 216, 27
     Rectangulo 6, 3, 222, 219, 27
    
     Rectangulo 6, 3, 234, 216, 27
     Rectangulo 6, 3, 231, 219, 27
    
    

    
    
    
    
      Rectangulo 18, 3, 195, 96, 8
      Rectangulo 18, 3, 258, 96, 8
      
      Rectangulo 33, 3, 192, 111, 8
      Rectangulo 33, 3, 261, 111, 8
      
      Rectangulo 3, 3, 210, 138, 8
      Rectangulo 3, 3, 243, 138, 8
      
      Rectangulo 3, 9, 210, 141, 8
      Rectangulo 3, 9, 237, 141, 8
      
      Rectangulo 3, 6, 216, 144, 8 
      Rectangulo 3, 6, 234, 144, 8
      
      Rectangulo 3, 6, 219, 147, 8 
      Rectangulo 3, 6, 231, 147, 8
      
      Rectangulo 30, 3, 201, 198, 8
      Rectangulo 30, 3, 252, 198, 8
      
      Rectangulo 9, 3, 198, 225, 8
      Rectangulo 9, 3, 255, 225, 8
      
      Rectangulo 3, 3, 201, 231, 8
      Rectangulo 3, 3, 252, 231, 8
      
      Rectangulo 3, 6, 201, 234, 8
      Rectangulo 3, 6, 249, 234, 8
     
      Rectangulo 3, 9, 204, 237, 8
      Rectangulo 3, 9, 243, 237, 8
      
      Rectangulo 3, 15, 210, 240, 8 
      Rectangulo 3, 15, 231, 240, 8
     
      Rectangulo 21, 3, 219, 189, 8
      Rectangulo 21, 3, 234, 189, 8
     
      Rectangulo 3, 12, 222, 204, 8
     
       
       
       
     
      Rectangulo 6, 6, 201, 162, 44
      Rectangulo 6, 3, 207, 165, 44
      Rectangulo 6, 3, 210, 168, 44
      Rectangulo 6, 3, 213, 171, 44
      Rectangulo 3, 3, 216, 174, 44
      Rectangulo 12, 6, 216, 177, 44
      Rectangulo 3, 3, 222, 183, 44
      Rectangulo 3, 3, 213, 189, 44
      Rectangulo 6, 6, 207, 183, 44
      Rectangulo 6, 3, 204, 180, 44
      Rectangulo 6, 3, 201, 177, 44
      Rectangulo 15, 3, 198, 168, 44
      
      
      Rectangulo 6, 6, 249, 162, 44
      Rectangulo 6, 3, 246, 165, 44
      Rectangulo 6, 3, 243, 168, 44
      Rectangulo 6, 3, 240, 171, 44
      Rectangulo 3, 3, 237, 174, 44
      Rectangulo 12, 6, 234, 177, 44

      Rectangulo 3, 3, 231, 183, 44
      Rectangulo 3, 3, 240, 189, 44
      Rectangulo 6, 6, 243, 183, 44

      Rectangulo 6, 3, 249, 180, 44
      Rectangulo 6, 3, 252, 177, 44
      Rectangulo 15, 3, 255, 168, 44
     
     
     
     Rectangulo 6, 12, 222, 246, 44
     Rectangulo 3, 12, 207, 246, 44
     Rectangulo 30, 12, 222, 255, 44
     Rectangulo 3, 6, 228, 249, 44
     Rectangulo 3, 6, 213, 249, 44
     Rectangulo 3, 9, 201, 243, 44
     Rectangulo 3, 6, 198, 240, 44
     Rectangulo 3, 3, 198, 237, 44
    
     Rectangulo 3, 12, 237, 246, 44
     Rectangulo 3, 6, 237, 249, 44
     Rectangulo 3, 9, 246, 243, 44
     Rectangulo 3, 6, 252, 240, 44
     Rectangulo 3, 3, 255, 237, 44
                                  
                                  
                                  
     Rectangulo 27, 6, 249, 249, 44
     Rectangulo 3, 3, 249, 276, 44
     Rectangulo 18, 3, 255, 246, 44
    
     Rectangulo 27, 6, 201, 249, 44
     Rectangulo 3, 3, 204, 276, 44
     Rectangulo 18, 3, 198, 246, 44
    
    
     Rectangulo 27, 3, 201, 279, 44
     Rectangulo 33, 6, 204, 282, 44
     Rectangulo 3, 3, 207, 315, 44
    
     Rectangulo 3, 3, 246, 315, 44
     Rectangulo 33, 6, 246, 282, 44
     Rectangulo 27, 3, 252, 279, 44

  
     
     
    
      Rectangulo 9, 6, 222, 300, 44
      Rectangulo 3, 3, 225, 297, 44
      Rectangulo 3, 3, 219, 303, 44
      Rectangulo 3, 3, 225, 309, 44
     
      Rectangulo 9, 6, 228, 300, 43
      Rectangulo 3, 3, 228, 297, 43
      Rectangulo 3, 3, 234, 303, 43
      Rectangulo 3, 3, 228, 309, 43
    
    
    
    
    
     Rectangulo 33, 3, 213, 285, 53
     Rectangulo 18, 3, 216, 285, 53
     Rectangulo 12, 3, 216, 306, 53
     Rectangulo 12, 3, 219, 288, 53
     Rectangulo 12, 3, 219, 309, 53
     Rectangulo 9, 3, 222, 288, 53
     Rectangulo 9, 3, 222, 312, 53
    
     Rectangulo 6, 6, 225, 288, 53 
     Rectangulo 9, 12, 231, 288, 53
     Rectangulo 3, 6, 237, 285, 53
    
     Rectangulo 6, 12, 225, 315, 53
     Rectangulo 12, 6, 237, 306, 53
     Rectangulo 3, 6, 231, 312, 53
     Rectangulo 3, 3, 234, 309, 53
     Rectangulo 3, 9, 234, 297, 53
     Rectangulo 3, 6, 237, 300, 53
     Rectangulo 3, 3, 240, 303, 53
    
    
    
     Rectangulo 27, 9, 210, 255, 53
     Rectangulo 3, 3, 210, 252, 53
     Rectangulo 27, 9, 237, 255, 53
     Rectangulo 3, 3, 243, 252, 53
    
    
     Rectangulo 6, 12, 180, 150, 44
     Rectangulo 6, 12, 264, 150, 44
     Rectangulo 3, 3, 177, 153, 44
     Rectangulo 3, 3, 276, 153, 44
     
     Rectangulo 9, 21, 171, 168, 44
     Rectangulo 9, 21, 264, 168, 44
     Rectangulo 6, 3, 168, 171, 44
     Rectangulo 6, 3, 285, 171, 44
     
     Rectangulo 9, 36, 162, 189, 44
     Rectangulo 9, 36, 258, 189, 44
     
     Rectangulo 9, 42, 156, 213, 44
     Rectangulo 9, 42, 258, 213, 44
     
     Rectangulo 15, 36, 159, 237, 44
     Rectangulo 15, 36, 261, 237, 44
     Rectangulo 6, 3, 156, 237, 44
     Rectangulo 3, 3, 153, 237, 44
     Rectangulo 6, 3, 297, 237, 44
     Rectangulo 3, 3, 300, 237, 44
     
     Rectangulo 15, 24, 174, 273, 44
     Rectangulo 15, 24, 258, 273, 44
     Rectangulo 9, 3, 171, 273, 44
     Rectangulo 3, 3, 168, 273, 44
     Rectangulo 9, 3, 282, 273, 44 
     Rectangulo 3, 3, 285, 273, 44
    
     Rectangulo 3, 15, 186, 306, 44
     Rectangulo 3, 12, 189, 309, 44
     Rectangulo 3, 9, 192, 312, 44
     Rectangulo 3, 6, 195, 315, 44
    
     Rectangulo 3, 15, 255, 306, 44
     Rectangulo 3, 12, 255, 309, 44
     Rectangulo 3, 9, 255, 312, 44
     Rectangulo 3, 6, 255, 315, 44
    
    
    
     Rectangulo 3, 9, 183, 144, 53
     Rectangulo 3, 3, 186, 141, 53
    
     Rectangulo 3, 9, 264, 144, 53
     Rectangulo 3, 3, 267, 141, 53
    
     Rectangulo 6, 18, 174, 159, 53
     Rectangulo 6, 18, 264, 159, 53
     Rectangulo 3, 3, 171, 162, 53
     Rectangulo 3, 3, 282, 162, 53
    
    Rectangulo 6, 24, 168, 180, 53
    Rectangulo 6, 24, 264, 180, 53
    Rectangulo 3, 3, 165, 183, 53
    Rectangulo 3, 3, 288, 183, 53
    
    Rectangulo 9, 39, 159, 201, 53
    Rectangulo 9, 39, 258, 201, 53
    
    
    Rectangulo 9, 39, 156, 225, 53
    Rectangulo 9, 39, 261, 225, 53
    Rectangulo 3, 3, 153, 231, 53
    Rectangulo 3, 3, 300, 231, 53
                                 
                                 
    Rectangulo 15, 27, 168, 255, 53
    Rectangulo 15, 27, 261, 255, 53
    Rectangulo 3, 3, 195, 267, 53
    Rectangulo 3, 3, 258, 267, 53
    Rectangulo 12, 3, 165, 255, 53
    Rectangulo 12, 3, 288, 255, 53
    Rectangulo 6, 3, 162, 255, 53
    Rectangulo 6, 3, 291, 255, 53
    
    
    Rectangulo 12, 15, 183, 291, 53
    Rectangulo 12, 15, 258, 291, 53
    Rectangulo 9, 3, 180, 291, 53
    Rectangulo 9, 3, 273, 291, 53
    Rectangulo 3, 3, 177, 291, 53
    Rectangulo 3, 3, 276, 291, 53
    
    Rectangulo 6, 3, 198, 321, 53
    Rectangulo 6, 3, 255, 321, 53
    
    
    
    
              
     
ret 