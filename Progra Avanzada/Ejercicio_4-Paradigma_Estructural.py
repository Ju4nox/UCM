if __name__ == "__main__":
    
    lista_nombre = []
    lista_apellido = []
    edad = []
    
    x = 0
    while x == 0:
        print("Seleccione lo que quiere hacer")
        print("1) Agregar una persona")
        print("2) Sumarle 1 a la edad")
        print("3) Modificar nombre  apellido")
        print("4) Salir")
        sel = int(input())

        if sel == 1:
            name = input("Ingrese el nombre de la persona: ")
            surname = input("Ingrese el apellido: ")
            age = int(input("Ingrese la edad: "))
            
            lista_nombre.append(name)
            lista_apellido.append(surname)
            edad.append(age)
            
        elif sel == 2:
            print("Seleccione a que persona desea sumarle uno a la edad (utilizando el nombre diferenciando mayusculas de minusculas): ")
            print(lista_nombre)
            p = input("Ingrese el nombre: ")
            for i in range(len(lista_nombre)):
                if p == lista_nombre[i]:
                    r = edad[i]
                    r+=1
                    edad.insert(i,r)
                    edad.remove(edad[i+1])
                    print(edad)
        elif sel == 3:
            print("Seleccione a que persona desea cambiarle el nombe y apellido (utilizando el nombre y apellido diferenciando mayusculas de minusculas): ")
            print(lista_nombre)
            print(lista_apellido)
            l = input("Ingrese el nombre: ")
            f = input("Ingrese el apellido: ")
            n_name = input("Ingrese nuevo nombre: ")
            n_surname = input("Ingrese un nuevo apellido: ")
            
            for j in range(len(lista_nombre)):
                if l == lista_nombre[j] and f == lista_apellido[j]:
                    ind = lista_nombre.index(lista_nombre[j])
                    lista_nombre.insert(ind,n_name)
                    lista_nombre.remove(lista_nombre[j+1])
                    
                    ind_dos = lista_apellido.index(lista_apellido[j])
                    lista_apellido.insert(ind_dos,n_surname)
                    lista_apellido.remove(lista_apellido[j+1])
                    print(lista_nombre, lista_apellido)
                    
        else:
            x+=1
