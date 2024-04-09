#Paradigma Estructural
#definir el diccionario
dic = {}
#menú
bucle = True
while bucle is True:
    print("Que desea hacer?")
    print("Pulse A para agregar un libro\nPulse E para eliminar\nPulse S para salir")
    sel = input("Ingrese la letra de lo que desea hacer: ")
    if sel == "A":
    #recibir el codigo
        cod = input("Ingrese el código del libro: ")
    #recibir también el nombre
        nombre = input("Ingrese el nombre del libro: ")
    #agrega al dic el libro
        dic[cod] = nombre
        print("Ha agregado un libro")
        print(dic)
    elif sel == "E":
        borra = input("Ingrese el codigo que desea borrar: ")
        if borra in dic.keys():
            del(dic[borra])
        else:
            print("El Libro no existe")
        print(dic)
    else:
        bucle = False
        print(dic)
