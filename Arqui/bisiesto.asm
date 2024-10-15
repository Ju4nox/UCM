
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.DATA
    VarEsBisiesto dw 2024
    VarNoEsBisiesto dw 2025
; add your code here

.CODE

    
    jmp primeracondicion
   
    
    


   primeracondicion:
   mov ax, VarEsBisiesto
        mov bx, 4
        div bx
        cmp dx,0
        je segundapartepc
        
   
   segundapartepc:
        mov dx,0
        mov cx,100
        div cx
        cmp dx,1
        je  segundacondicion
        
   segundacondicion:
   mov ax, VarEsBisiesto
        mov bx, 100
        mov dx, 0
        div bx
        cmp dx,0
        je segundaparte
        jmp final
        
   segundaparte:
        mov cx, 400
        mov dx,0
        div cx
        cmp dx,0 
        je final
         
        
        
 final:    

    ret
