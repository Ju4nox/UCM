Carrito_compra = {}
def nuevo_dato():
    id = int(input ("Ingrese el id del producto>>>"))
    nombre = input("Ingrese el nombre del producto>>>")
    cantidad = int(input(f"Cuantas unidades del producto {nombre} se compran?>>>"))
    precio = int(input(f"Ingrese  el precio del {nombre}>>>"))
    return id, nombre, cantidad, precio
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
            del Carrito_compra[id]
            break
        except Exception as error:
            print("ERROR: \"" + str(error)+"\"")
            print("El articulo no se a elimindo")
            input("Ingrese  Enter para continuar...")
            break


def editar(id):
    while True:
        try:
            print("NONE CODE SOURCE")
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
        print(f"Precio:${Carrito_compra[info][0]}")
        print(f"Total:${Carrito_compra[info][1] * Carrito_compra[info][2]}")
        print("_____________________________________")
        total += Carrito_compra[info][1] * Carrito_compra[info][2]

def pagar(resultado):
    print("***************************************")
    print(f"El total a pagar es ${resultado}")
    print("***************************************")
    

def calcular_porciento():
    variable = int(input("Ingrese el descuento (no debe ser mayor a 50%)"))
    total = 0
    if variable > 50:
        print("Debe ingresar un descuento menor")
    else:
        descuento = variable / 100
    for i in Carrito_compra:
        total += Carrito_compra[i][2]
        
    descuento_aplicado = total*descuento
    resultado = total-descuento_aplicado
    return resultado


def menu():
    while True:
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
            id = int(input("Ingrese el ID producto que desea eliminar "))
            eliminar(id)
        elif opcion == '3':
            id = int(input("Ingrese el ID producto que desea eliminar "))
            editar(id)
        elif opcion == '4':
            mostrar()
        elif opcion == '5':
            resultado = calcular_porciento()
            pagar(resultado)
            print("Gracias por algo")
            break
        elif opcion == '6':
            break
        else:
            print("Esa opción no existe")

Carrito_compra = {}
if __name__ == "__main__":
    #Carrito_compra = {}
    menu()

