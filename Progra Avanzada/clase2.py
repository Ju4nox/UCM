lista = []
#le copié caleta al profe, menos mal pensabamos parecido al menos en lo más básico *carita lengua dinero

class CuentaBancaria:
    # funcion constructora
    def __init__(self, titular, numeroCuenta, saldo):
        self.numerocuenta = numeroCuenta
        self.titular = titular
        self.saldo = saldo

    # hacer depositos
    def depositar(self, valor):
        self.saldo = self.saldo + valor
        print(
            f"Se ha depositado la cantidad de {valor} y el nuevo saldo es {self.saldo}"
        )

    # hacer retiros
    def retirar(self, valor):
        if valor > self.saldo:
            print("Saldo insuficiente")
        elif self.saldo == 0:
            print("No dispone de saldo suficiente")
        else:
            self.saldo = self.saldo - valor
            print(f"Se ha retirado {valor} su nuevo saldo es {self.saldo}")

    # imprimir el saldo
    def impsSaldo(self):
        print(f"El usuario {self.titular}\nSu saldo es: {self.saldo}")

    # imprimir el listado completo
    def impLista(self):
        print(
            f"Numero de cuenta: {self.numerocuenta}\nTitular: {self.titular}\nSaldo Disponible: {self.saldo}"
        )


def imprimirmenu():
    print("MENU")
    print("1) Crear cuenta")
    print("2) Depositar")
    print("3) Retirar")
    print("4) Mostrar Saldo")
    print("5) Mostrar listado completo")
    print("6) Salir")


def creacuenta():
    numero = input("Ingrese el numero de cuenta: ")
    duenho = input("Ingrese el nombre del dueño: ")
    saldo = int(input("Ingrese el saldo: "))
    cuenta = CuentaBancaria(duenho, numero, saldo)
    lista.append(cuenta)


def deposita():
    numero = input("Ingrese el numero de cuenta")
    for cuenta in lista:
        if numero == cuenta.numerocuenta:
            cantidad = int(input("Ingrese la cantidad que desea depositar"))
            cuenta.depositar(cantidad)


def retira():
    numero = input("Ingrese el numero de cuenta")
    for cuenta in lista:
        if numero == cuenta.numerocuenta:
            cantidadr = int(input("Ingrese la cantidad que desea retirar"))
            cuenta.retirar(cantidadr)


def muestraSaldo():
    numero = input("Ingrese numero de cuenta")
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
            creacuenta()
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
