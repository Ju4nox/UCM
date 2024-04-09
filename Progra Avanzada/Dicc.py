def main(dic):
    #ideal crear bucle para recibir los datos de las 4 personas
    for i in range(4):
        #crear lista para almacenar los datos y reiniciarla cada vez que se repita el bucle
        lista = []
        #pedir los datos
        rut = input("Ingrese el rut del alumno: ")
        nombre = input("Ingrese el nombre del alumno: ")
        apellido = input("Ingrese el apellido: ")
        fecha = input("Ingrese la fecha de nacimiento: ")
        #agregar datos al diccionario
        dic[rut] = lista
        #agregar datos a la lista
        lista.append(nombre)
        lista.append(apellido)
        lista.append(fecha)
    print(dic)

def buscar(dic):
    busca = input("Ingrese el rut del Alumno que desea buscar: ")
    if busca in dic.keys():
        print(dic[busca])
    else:
        print("El alumno no existe")

if __name__ =="__main__":
#crear el diccionario
    dic = {}
    main(dic)
    buscar(dic)
