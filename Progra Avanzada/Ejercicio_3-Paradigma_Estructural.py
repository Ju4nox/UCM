"""Un juego de Sudoku se considera correcto si cumple las siguientes condiciones:
Cada fila y columna contiene los números del 1 al 9 sin repetirse.
Cada subcuadrícula de 3x3 contiene los números del 1 al 9 sin repetirse.

Desarrolle un programa utilizando el paradigma estructurado que dada una matriz de 9x9, determine si el Sudoku es correcto o no.
"""

if __name__ == "__main__":
    sudoku = [[4,1,2,7,6,5,9,3,8],[6,5,8,3,2,9,7,4,1],[9,7,3,8,1,4,6,5,2],
              [5,7,3,1,9,6,8,2,4],[9,8,2,4,7,5,1,3,6],[4,6,1,2,3,8,5,9,7],
              [3,5,9,6,4,1,2,8,7],[8,1,4,2,9,7,5,6,3],[7,2,6,3,8,5,1,4,9]]
    #creacion variable largo de sudoku
    largo = len(sudoku)
    #recorrido del sudoku
    for j in range(largo):
        #condicion que pregunta si los numeros se repiten
        if  set(sudoku[j]) == set([1,2,3,4,5,6,7,8,9]):
            #muestra en pantalla si se repite algún numero en alguna de las subcuadriculas del sudoku, especificando de izquierda a derecha en cuales
            print("No se repite ningun numero en la cuadricula")
            #print(set(sudoku[j]), set([1,2,3,4,5,6,7,8,9]))
            pass
        else:
            print("Se repite algún numero")

#crear una variable para hacer un bucle y que repita el mismo proceso 3 veces
    a = 0
#creacion del bucle
    while a < 3:
#crear una lista 
        lista = []
#recorrer la sublista
        for i in range(9):
#recorrer los numeros dentro de las listas
            for j in range(3):
#almacenar los numeros dentro de la lista
                if len(lista) < 9:
                    lista.append(sudoku[i][j+a*3])
#si es que la lista está llena entonces hay que saber si es igual al set
                    if set(lista) == set([1,2,3,4,5,6,7,8,9]):
                        print("La fila no repite ningún numero")
                        #print(lista)
                        lista.clear()
        a+=1

    b = 0
    while b < 3:
        lista_c_o = []
        for i in range(0,9,3):
            for j in range(0,7,3):
                if len(lista_c_o) < 9:
                    lista_c_o.append(sudoku[i][j+b])
                    #print(lista_c_o)
                    if set(lista_c_o) == set([1,2,3,4,5,6,7,8,9]):
                        print("No se repite ningun numero en la columna")
                        lista_c_o.clear()      
        b+=1
    c = 0
    while c < 3:
        lista_c_t = []
        for i in range(0,9,3):
            for j in range(0,7,3):
                if len(lista_c_t) < 9:
                    lista_c_t.append(sudoku[i+1][j+c])
                    #print(lista_c_t)
                    if set(lista_c_t) == set([1,2,3,4,5,6,7,8,9]):
                        print("No se repite ningun numero en la columna")
                        lista_c_t.clear() 
        c+=1
    
    d = 0
    while d < 3:
        lista_c_t = []
        for i in range(0,9,3):
            for j in range(0,7,3):
                if len(lista_c_t) < 9:
                    lista_c_t.append(sudoku[i+2][j+d])
                    #print(lista_c_t)
                    if set(lista_c_t) == set([1,2,3,4,5,6,7,8,9]):
                        print("No se repite ningun numero en la columna")
                        lista_c_t.clear()                  
        d+=1
        