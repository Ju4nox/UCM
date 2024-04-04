"""Dos números son amigos, si cada uno de ellos es igual a la suma de los divisores del otro. Por ejemplo, 220 y 284 son amigos, ya que: 
Suma de divisores de 284 : 1 + 2 + 4 + 71 + 142 = 220 
Suma de divisores de 220: 1 + 2 + 4 + 5 + 10 + 11 + 20 + 22 + 44 + 55 + 110 = 284 

Desarrolle un programa utilizando el paradigma estructurado que dado dos números compruebe si son amigos.
Desarrolle un programa utilizando el paradigma funcional que dado dos números compruebe si son amigos.
BONUS: Dado un número m, muestre todas las parejas de números amigos menores o iguales que m. 
"""

def amigos(number_one, number_two):
    lista_one = [elem for elem in range(1,number_one,1) if number_one%elem == 0]
    lista_two = [i for i in range(1,number_two,1) if number_two%i == 0]

    if sum(lista_one) == number_two and sum(lista_two) == number_one:
        print("Los numeros son amigos")
    else:
        print("Los numeros no son amigos")
    
    
    
if __name__ == "__main__":
    print("Ingrese dos numeros para comprobar si son amigos")
    number_one = int(input())
    number_two = int(input())
    print("Ingrese un numero")
    m = int(input())
    amigos(number_one, number_two)