class Calculadora:

    def __init__(self, num1=0, num2=0):
        self.numero1 = num1
        self.numero2 = num2
        self.resultado = 0

    def sumar(self):
        self.resultado = self.numero1 + self.numero2
        return self.resultado

    def restar(self):
        self.resultado = self.numero1 - self.numero2
        return self.resultado

    def multiplicar(self):
        self.resultado = self.numero1 * self.numero2
        return self.resultado

    def dividir(self):
        self.resultado = self.numero1 / self.numero2
        return self.resultado


while True:
    print("1) Sumar")
    print("2) Restar")    
    print("3) Multiplicar")
    print("4) Dividir")
    print("5) Salir")
    opcion = input("Ingrese una opción:" )
    
    if opcion == "1":
        a = int(input("Ingrese un número: "))
        b = int(input("Ingrese un número: "))
        ejemplo = Calculadora(a, b)
        print(f"El resultado es: {ejemplo.sumar()}")

    elif opcion == "2":
        a = int(input("Ingrese un número: "))
        b = int(input("Ingrese un número: "))
        ejemplo = Calculadora(a, b)
        print(ejemplo.restar())
    elif opcion == "3":
        a = int(input("Ingrese un número: "))
        b = int(input("Ingrese un número: "))
        ejemplo = Calculadora(a, b)
        print(ejemplo.multiplicar())

    elif opcion == "4":
        a = int(input("Ingrese un número: "))
        b = int(input("Ingrese un número: "))
        ejemplo = Calculadora(a, b)
        print(ejemplo.dividir())

    elif opcion == "5":
        break

    else:
        print("Opción no válida, por favor seleccione alguna")


# otra forma
"""
def __init__(self, num1=0, num2=0):

ejemplo = Calculadora()
ejemplo.numero1 = 20
ejemplo.numero2 = 10
"""
