
def rep_cuadri(sudoku,largo):
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

def ver_fila(sudoku):
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
    
        
def ver_columna(sudoku):
    a = 0
    while a < 3:
        lista_c = []
        for i in range(0,9,3):
            for j in range(0,7,3):
                if len(lista_c) < 9:
                    lista_c.append(sudoku[i][j+a])
                    #print(lista_c)
                    if set(lista_c) == set([1,2,3,4,5,6,7,8,9]):
                        print("No se repite ningun numero en la columna")
                        lista_c.clear()      
        a+=1

def ver_columna_dos(sudoku):
    a = 0
    while a < 3:
        lista_c = []
        for i in range(0,9,3):
            for j in range(0,7,3):
                if len(lista_c) < 9:
                    lista_c.append(sudoku[i+1][j+a])
                    #print(lista_c)
                    if set(lista_c) == set([1,2,3,4,5,6,7,8,9]):
                        print("No se repite ningun numero en la columna")
                        lista_c.clear() 
        a+=1

def ver_columna_tres(sudoku):
    a = 0
    while a < 3:
        lista_c = []
        for i in range(0,9,3):
            for j in range(0,7,3):
                if len(lista_c) < 9:
                    lista_c.append(sudoku[i+2][j+a])
                    #print(lista_c)
                    if set(lista_c) == set([1,2,3,4,5,6,7,8,9]):
                        print("No se repite ningun numero en la columna")
                        lista_c.clear()                  
        a+=1


if __name__ == "__main__":
    sudoku = [[4,1,2,7,6,5,9,3,8],[6,5,8,3,2,9,7,4,1],[9,7,3,8,1,4,6,5,2],
              [5,7,3,1,9,6,8,2,4],[9,8,2,4,7,5,1,3,6],[4,6,1,2,3,8,5,9,7],
              [3,5,9,6,4,1,2,8,7],[8,1,4,2,9,7,5,6,3],[7,2,6,3,8,5,1,4,9]]
    #creacion variable largo de sudoku
    largo = len(sudoku)
    rep_cuadri(sudoku,largo)
    ver_fila(sudoku)
    ver_columna(sudoku)
    ver_columna_dos(sudoku)
    ver_columna_tres(sudoku)
    
    