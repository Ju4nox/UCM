"""Se considera un cuadrado mágico aquel en el cual las filas, columnas, y las diagonales principal y secundaria suman lo mismo. 
Por ejemplo:
8, 1, 6
3, 5, 7
4, 9, 2

    """
#primero saber si es o no cuadrada
def es_cuadrada(matriz,n):
    #recorrido general de la matriz
    for i in range(0,n):
        for j in range(0,n):
            #la condicion es que si nxm es igual a mxn entonces la matriz es cuadrada
            if matriz[i][j] == matriz[j][i]:
                return True
            else:
                return False
#mostrar en pantalla si es cuadrada o no
def ver_es_cuadrada(es_cuadrada):
    if es_cuadrada is True:
        print("La matriz es cuadrada")
    else:
        print("La matriz no es cuadrada")
#funcion para calcular verticalmente la matriz
def cal_vertical(matriz,n):
    #para cada columna
    for j in range(0,n):
        #se vuelve a 0
        suma = 0
        #para que por cada fila
        for i in range(0,n):
            #se se sume el numero de la columna
            suma += matriz[i][j]
    #print(suma)  #comprueba la suma
    return suma
#funcion para calcular horizontalmente la matriz
def cal_horizontal(matriz,n):
    #para cada fila
    for i in range(0,n):
        #se reinicia la variable
        sumas = 0
        #para que por cada columna
        for j in range(0,n):
            #se sume el total de cada fila
            sumas += matriz[i][j]
    #print(sumas)  #comprueba la suma
    return sumas
#funcion para calcula la diagonal principal
def cal_diag_prin(matriz,n):
    total = 0
    for i in range(0,n):
        for j in range(0,n):
            if matriz[i][j] == matriz[i][i]:
                total += matriz[i][i]
    #print(total)
    return total
#funcion para calcula la diagonal secundaria
def cal_diag_sec(matriz,n):
    resultado = 0
    for i in range(0,n):
        resultado += matriz[i][n-i-1]
    #print(resultado)
    return resultado
#funcion para comprobar si es cuadrado magico
def es_cuadrado_magico(cal_vertical,cal_horizontal,cal_diag_prin,cal_diag_sec):
    if cal_vertical == cal_horizontal and cal_diag_sec == cal_diag_prin:
        print("Es un cuadrado magico")
    elif cal_diag_prin == cal_horizontal and cal_diag_sec == cal_vertical:
        print("Es un cuadrado magico")
    elif cal_diag_prin == cal_vertical and cal_diag_sec == cal_horizontal:
        print("Es un cuadrado magico")
    else:
        print("No es cuadrado mágico")
        
if __name__ == "__main__":
    matriz = [[2, 7, 6],
              [9, 5, 1],
              [4, 3, 8]]
    n = len(matriz)
    ver_es_cuadrada(es_cuadrada(matriz,n))
    #cal_vertical(matriz,n)
    #cal_horizontal(matriz,n)
    #cal_diag_prin(matriz,n)
    #cal_diag_sec(matriz,n)
    es_cuadrado_magico(cal_vertical(matriz,n),cal_horizontal(matriz,n),cal_diag_prin(matriz,n),cal_diag_sec(matriz,n))