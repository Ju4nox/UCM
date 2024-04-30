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
