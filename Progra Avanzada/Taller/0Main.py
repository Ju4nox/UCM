from os import system
from Pallet_A import PalletA
from Pallet_B import PalletB
from Pallet_C import PalletC
from Bodega import Bodega
'''
Advertencia: el código no funciona en maquinas macOS y en Linux
'''

bodega = Bodega()


def clear(error=0):
    if error != 0:
        print("\033[31;1m---------ERROR---------")
        if error == 1:
            print("La entrada pide numeros")
        elif error == 2:
            print("Se excede el peso maximo...")
        elif error == 3:
            print("La ubicación ingresada esta ocupada")
        elif error == 4:
            print("El inventario esta vacio")
        elif error == 5:
            print("Opción no valida")
        elif error == 6:
            print("No existe el elemento en la bodega")
        elif error == 7:
            print("Ya existe ese elemento en bodega")
        elif error == 8:
            print("La ubicacion debe \n"
                  "ser 2 letras de a-z")
        print("-----------------------\033[0m")
    system("pause")
    system("cls")


def new_pallet():
    system("cls")
    try:
        print("\033[33;1mIngrese el ID del Pallet: \033[0m")
        id = input(">>>")
        print("\033[33;1mIngrese la opcion de peso a trabajar : \033[0m")
        print("\033[32;1m 1.  5 Kg.\033[0m")
        print("\033[33;1m 2. 10 Kg.\033[0m")
        print("\033[31;1m 3. 20 Kg.\033[0m")
        opcion_pallet = int(input(">>>"))
        if opcion_pallet == 1:
            tipo_pallete = 5
        elif opcion_pallet == 2:
            tipo_pallete = 10
        elif opcion_pallet == 3:
            tipo_pallete = 20
        else: 
            clear(5)
            return 1
        print("\033[33;1m Ingrese la cantidad de cajas\033[0m")
        cantidad_cajas = int(input(">>>"))
        peso = tipo_pallete * cantidad_cajas
    except ValueError:
        clear(1)
        return 1
    if peso > 400:
        clear(2)
        return 1
    else:
        if opcion_pallet == 1:
            creaPallet = PalletA(id,cantidad_cajas)
        elif opcion_pallet == 2:
            creaPallet = PalletB(id,cantidad_cajas)
        elif opcion_pallet == 3:
            creaPallet = PalletC(id,cantidad_cajas)
        if bodega.Info_con_id(id) != None:
            clear(7)
            return 1
        bodega.agregar_pallet(id,creaPallet)
        print("\033[32;1mEl Pallet ha sido creado con exito!!!\033[0m")
    return 0


def menu_modificar():
    system("cls")
    cantidad_de_pallet = bodega.tamaño_de_bodega()
    if cantidad_de_pallet == 0:
        clear(4)
        return 1
    while True and cantidad_de_pallet != 0 :
        print(
            "### Menu de modificación ###\n"
            "\033[32;1m 1. Añadir cajas.\033[0m\n"
            "\033[31;1m 2. Eliminar cajas.\033[0m\n"
            " 0. Volver al menu.\n"
        )
        opcion = input(">>>")           
        if opcion == "0":
            return 0
        elif opcion != "1" and opcion != "2":
            clear(5)
            continue
        print("\033[33;1mIngrese el id del pallet\033[0m")
        id = input(">>>")        
        pallet = bodega.Info_con_id(id)
        if pallet == None:
            clear(6)
            continue
        if opcion == "1":
            print("\033[33;1mIngrese la cantidad de cajas a \033[32;1mañadir\033[0m")
            cantidad = int(input(">>>"))
            not_error = pallet.añadir_cajas(cantidad)
            if not_error == 1:
                clear(2)
                continue
        elif opcion == "2":
            print("Ingrese la cantidad de cajas a \033[31;1mquitar\033[0m")
            cantidad = int(input(">>>"))
            cajas_en_pallet = pallet.retirar_cajas(cantidad)
            if cajas_en_pallet <= 0:
                bodega.retirar_pallet(id)   
                cantidad_de_pallet-=1
        clear(0)


def reubicacion():
    system("cls")
    print("\033[33;1mIngrese el id\033[0m")
    id = input(">>>")
    pallet = bodega.Info_con_id(id)
    if pallet == None:
        clear(6)
        return 1
    else:
        print("\033[33;1mIngrese la nueva ubicacion\033[0m")
        ubicacion = input(">>>").upper()
        if (ubicacion == "00") or (ubicacion.isalpha() == True and len(ubicacion) == 2):
            esta_disponible = bodega.reubicar(ubicacion)
            if esta_disponible == 1:
                clear(3)
                return 1
            else:
                pallet.mover(ubicacion)
                return 0
        else: 
            clear(8)
            return 1
    

def menu_informacion():
    system("cls")
    cantidad_de_pallet = bodega.tamaño_de_bodega()
    if cantidad_de_pallet == 0:
        clear(4)
        return 1
    while True:
        print(
            "### Menu de Información ###\n"
            " 1. Buscar un elemento.\n"
            " 2. Mostrar toda la información.\n"
            " 0. Volver al menu.\n"
        )
        opcion = input(">>>")
        if opcion == "1":
            print("\033[33;1mIngrese el id del pallet\033[0m")
            id = input(">>>")
            print(bodega.Info_con_id(id))
        elif opcion == "2":
            bodega.Info_all()
            return 0
        elif opcion == "0":
            return 0
        else:
            clear(5)


def menu():
    print(
        "########### Menu ###########\n"
        " 1. Crear nuevo Pallet.\n"
        " 2. Modificar Pallet.\n"
        " 3. Reubicar inventario.\n"
        " 4. Mostrar información.\n"
        " 0. Salir.\n"
    )


def main():
    system("cls")
    while True:
        menu()
        opcion = input(">>>")
        if opcion == "0":
            print("Cerrando programa")
            break
        elif opcion == "1":
            not_errors = new_pallet()
        elif opcion == "2":
            not_errors = menu_modificar()
        elif opcion == "3":
            not_errors = reubicacion()
        elif opcion == "4":
            not_errors = menu_informacion()
        else:
            clear(5)
            continue

        if not_errors == 0:
            clear()


if __name__ == "__main__":
    main()
