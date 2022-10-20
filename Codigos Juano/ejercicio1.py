#generar dos listas, la primera con 10 numeros random y la segunda con 5 condiciones
import random

#funcion numeros primos
def prime_numbers_list(second_list):
    prime_list=[]
    for elem in second_list:
        result=elem%2
        if elem!=0:
            prime_list.append(result)
            return prime_list
        
def par_numbers(second_list):
    par_number=[]
    for elem in second_list:
        par=elem%2
        aux=0
        if aux==0:
            par_number.append(par)
            return par_number
        
if __name__=="__main__":
    first_list=[]
    i=0
    while i<10:
        first_list.append(random.randint(1,100))
        i=i+1
    print(first_list)

    #segunda lista, suma de todos los elementos(sum), promedio, el numero menor, la cantidad de numeros pares, la cantidad de numeros primos
    second_list=first_list
    sume=sum(second_list)
    average=sume/10
    
    prime_number=prime_numbers_list(second_list)
    par_number_second=par_numbers(second_list)
    
    print(f"{prime_number}   {average}   {sume}   {par_number_second}")
