
lista = []

class CuentaBancaria:
    # funcion constructora
    def __init__(self, titular, numeroCuenta,tipoCuenta, saldo):
        self.numerocuenta = numeroCuenta
        self.titular = titular
        self.saldo = saldo
        self.tipoCuenta = tipoCuenta

    # imprimir el saldo
    def impsSaldo(self):
        print(f"El usuario {self.titular}\nSu saldo es: {self.saldo}")

    # imprimir el listado completo
    def impLista(self):
        print(
            f"Numero de cuenta: {self.numerocuenta}\nTitular: {self.titular}\nSaldo Disponible: {self.saldo}"
        )


class CuentaCorriente(CuentaBancaria):
    def __init__(self, titular, numeroCuenta, tipoCuenta, saldo):
        super().__init__(titular, numeroCuenta, "C", saldo)
        #self.tipoCuenta = tipoCuenta

    def depositar(self,valor):
        #depositar saldo
        self.saldo = self.saldo + valor

    def retirar(self,valor):
        #retira el saldo con una comision de 50 pesos
        self.saldo = self.saldo - valor - 50
        
    def impsSaldo(self):
        f"El tipo de cuenta es: {self.tipoCuenta}"
        return super().impsSaldo()
    
    def impLista(self):
        return super().impLista()

    
class CuentaAhorro(CuentaBancaria):
    def __init__(self, titular, numeroCuenta, tipoCuenta, saldo):
        super().__init__(titular, numeroCuenta, "A", saldo)
        #self.tipoCuenta = tipoCuenta

    #creemos el método
    def depositar(self, valor):
        #al depositar se suma al total un 0,1%
        self.saldo = self.saldo + valor * 0.01 
        f"el nuevo saldo es {self.saldo}"

    def retirar(self, valor):
        #solo puede retirar montos de 10000
        if valor > 10000:
            print("No puede retirar más de 10000 por favor reduzca la cantidad")
        else:
            self.saldo = self.saldo - valor
    
    def impLista(self):
        f"El tipo de cuenta es: {self.tipoCuenta}"
        return super().impLista()
    
    def impsSaldo(self):
        return super().impsSaldo()
    


def imprimirmenu():
    print("MENU")
    print("1) Crear cuenta")
    print("2) Depositar")
    print("3) Retirar")
    print("4) Mostrar Saldo")
    print("5) Mostrar listado completo")
    print("6) Salir")


def crearcuenta():
    numero = input("Ingrese el numero de cuenta: ")
    duenho = input("Ingrese el nombre del dueño: ")
    saldo = int(input("Ingrese el saldo: "))
    print("Ingrese 'A' para cuenta de ahorro y 'C' para cuenta Corriente")
    cuenta = input("Ingrese si es cuenta corriente o ahorro: ")
    if cuenta == 'A':
        creaCuenta = CuentaAhorro(duenho,numero,cuenta,saldo)
    elif cuenta == 'C':
        creaCuenta = CuentaCorriente(duenho,numero,cuenta,saldo)
    lista.append(creaCuenta)


def deposita():
    numero = input("Ingrese el numero de cuenta: ")
    for cuenta in lista:
        if numero == cuenta.numerocuenta:
            cantidad = int(input("Ingrese la cantidad que desea depositar: "))
            cuenta.depositar(cantidad)


def retira():
    numero = input("Ingrese el numero de cuenta: ")
    for cuenta in lista:
        if numero == cuenta.numerocuenta:
            cantidadr = int(input("Ingrese la cantidad que desea retirar: "))
            cuenta.retirar(cantidadr)


def muestraSaldo():
    numero = input("Ingrese numero de cuenta: ")
    for cuenta in lista:
        if numero == cuenta.numerocuenta:
            cuenta.impsSaldo()


def muestraLista():
    for cuenta in lista:
        cuenta.impLista()


def main():
    while True:
        imprimirmenu()
        opcion = input()
        if opcion == "1":
            crearcuenta()
        elif opcion == "2":
            deposita()
        elif opcion == "3":
            retira()
        elif opcion == "4":
            muestraSaldo()
        elif opcion == "5":
            muestraLista()
        elif opcion == "6":
            break


if __name__ == "__main__":
    main()

