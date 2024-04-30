# crear el usuario


def main(lista):
    while True:
        x = int(input("Ingrese alguna opción (utilizando los números)"))
        print("1) Agregar Producto")
        print("2) Eliminar Producto")
        print("3) Editar cantidad de productos")
        print("4) Pagar")
        print("5) Salir")
        if x == 1:
            agregar()
        elif x == 2:
            ingresar()
        elif x == 3:
            editar()
        elif x == 4:
            pago()
            print("Gracias por algo")
            break
        elif x == 5:
            break
        else:
            print("Esa opción no existe")
    pass


if __name__ == "__main__":
    lista = []
