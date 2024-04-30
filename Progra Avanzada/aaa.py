def nuevo_dato():
    try:
        id = int(input ("Ingrese el id del producto>>>"))
        nombre = input("Ingrese el nombre del producto>>>")
        cantidad = int(input(f"Cuantas unidades del producto {nombre} se compran?>>>"))
        precio = int(input(f"Ingrese  el precio del {nombre}>>>"))
        return id, nombre, cantidad, precio
    except ValueError:
        print("Error de datos no numericos")


def agregar(id, nombre, cantidad, precio):
    while True:
        try:
            incluir = {id:[nombre, cantidad, precio]}
            Carrito_compra.update(incluir)
            break
        except Exception as error:
            print("ERROR: \"" + str(error)+"\"")
            print("El articulo no se a incluido")
            input("Ingrese  Enter para continuar...")
            break


def eliminar(id):
    while True:
        try:
            nombre = Carrito_compra[id][0]
            del Carrito_compra[id]
            print(f"El producto \"{nombre}\" fue exitosamente eliminado")
            break
        except Exception as error:
            print("ERROR: \"" + str(error)+"\"")
            print("El articulo no se a elimindo")
            input("Ingrese  Enter para continuar...")
            break


def editar(id):
    while True:
        try:
            for id_lista in Carrito_compra:
                if id_lista == id:
                    cantidad = int(input("Corriga la cantidad que desea llevar:"))
                    Carrito_compra[id][1] = cantidad
                    print("Correccion exitosa")
                    break
        except Exception as error:
            print("ERROR: \"" + str(error)+"\"")
            print("El articulo no se a elimindo")
            input("Ingrese  Enter para continuar...")
            break   


def mostrar():
    total = 0 
    for info in Carrito_compra:
        print("_____________________________________")
        print(f"ID:{info}")
        print(f"Producto:{Carrito_compra[info][0]}")
        print(f"Cantidad:{Carrito_compra[info][1]}")
        print(f"Precio:${Carrito_compra[info][2]}")
        print(f"Total:${Carrito_compra[info][1] * Carrito_compra[info][2]}")
        print("_____________________________________")
        total += Carrito_compra[info][1] * Carrito_compra[info][2]
    print(f"EL TOTAL ES :${total}")

def pagar(resultado):
    print("***************************************")
    print(f"El total a pagar es ${resultado}")
    print("***************************************")
    

def calcular_porciento():
    descuento = int(input("Ingrese el descuento (no debe ser mayor a 50%)"))
    total = 0
    if descuento > 50:
        print("Debe ingresar un descuento menor")
    for i in Carrito_compra:
        total += Carrito_compra[i][2]*Carrito_compra[i][1]   
    descuento_aplicado = (total*descuento) /100
    resultado = total-descuento_aplicado
    return resultado


def menu():
    while True:
        try:
            print("1) Agregar Producto")
            print("2) Eliminar Producto")
            print("3) Editar cantidad de productos")
            print("4) Ver carrito de compras")
            print("5) Pagar")
            print("6) Salir")
            opcion  = input("Ingrese alguna opción>>>")
            if opcion   == '1':
                id, nombre, stock, precio,  = nuevo_dato()
                agregar(id, nombre, stock, precio)
            elif opcion == '2':
                id = int(input("Ingrese el ID producto que desea Eliminar "))
                eliminar(id)
            elif opcion == '3':
                id = int(input("Ingrese el ID producto que desea Editar "))
                editar(id)
            elif opcion == '4':
                mostrar()
            elif opcion == '5':
                resultado = calcular_porciento()
                pagar(resultado)
                print("Gracias por comprar aqui!!!")
                break
            elif opcion == '6':
                break
            else:
                print("Esa opción no existe")
        except ValueError:
            print("Error de valor")

if __name__ == "__main__":
    Carrito_compra = {}
    menu()

