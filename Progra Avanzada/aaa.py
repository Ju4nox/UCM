a = int(input("Ingrese el descuento (no debe ser mayor a 50%)"))
total = 0
if a > 50:
    print("Debe ingresar un descuento menor")
else:
    descuento = a / 100
for i in Carrito_compra:
    total += Carrito_compra[i][2]
