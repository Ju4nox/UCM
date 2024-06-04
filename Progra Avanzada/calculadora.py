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


a = int(input("Ingrese un numero: "))
b = int(input("Ingrese otro numero: "))

ejemplo = Calculadora(a, b)
print(ejemplo.sumar())


# otra forma
"""
def __init__(self, num1=0, num2=0):

ejemplo = Calculadora()
ejemplo.numero1 = 20
ejemplo.numero2 = 10
"""
