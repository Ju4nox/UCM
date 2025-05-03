import matplotlib.pyplot as plt

def tablacompleta(fila,columna):
    #la cantidad de columnas estaría definida por la cantidad de digitos que iria dentro de cada lista
    data = hazmatriz(fila,columna)
    row_labels, col_labels = cyf(fila,columna) 

    fig, ax = plt.subplots()
    ax.axis('off')  # Hide axes

    table = ax.table(cellText=data, colLabels=col_labels, rowLabels=row_labels, loc='center', cellLoc='center')
    table.scale(1, 1.5)  # Adjust table size

    plt.tight_layout()
    plt.show()

def cyf(fila,columna):
    #faltaria una modificación en la que en vez de que se llamen Fila o Columna, agregar los nombres de las variables
    #crear una lista de las variables
    """Ejemplo:
        for n in range(fila):
            filas.append(f"{lista[elem]}")
                
    """
    columnas = []
    filas = []
    for n in range(0,fila):
        filas.append(f"Fila {n}")
    for n in range(0,columna):
        columnas.append(f"Columna {n}")
    return filas,columnas

def hazmatriz(fila,columna):
    #datos que van dentro de la matriz, en este caso va de 0 a n
    #modificar esta funcion para los datos dentro, de la matriz, ejemplo: elem for elem in lista or elem for elem in archivo
    #dependiendo de la cantidad de filas, columnas y datos que se requiera
    matriz = [[fila for fila in range(fila)]  for columna in range(columna)]
    return matriz

def tablasinfila(fila,columna):
    #la cantidad de columnas estaría definida por la cantidad de digitos que iria dentro de cada lista
    data = hazmatriz(fila,columna)
    _,col_labels = cyf(fila,columna) 

    fig, ax = plt.subplots()
    ax.axis('off')  # Hide axes

    table = ax.table(cellText=data, colLabels=col_labels, loc='center', cellLoc='center')
    table.scale(1, 1.5)  # Adjust table size

    plt.tight_layout()
    plt.show()

def main():
    x = 0
    while x == 0:
        opcion = int(input("Seleccione 1 para la tabla completa, 2 para la tabla sin filas: "))
        if opcion == 1:
            fila = int(input("Ingrese la cantidad de filas: "))
            columna = int(input("Ingrese la cantidad de columas: "))
            cyf(fila,columna)
            tablacompleta(fila,columna)
        elif opcion == 2:
            fila = int(input("Ingrese la cantidad de filas: "))
            columna = int(input("Ingrese la cantidad de columas: "))
            cyf(fila,columna)
            tablasinfila(fila,columna)
        else:
            print("Saliendo")
            break
        
if __name__ == "__main__":
    main()