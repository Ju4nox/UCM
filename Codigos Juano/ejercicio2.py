#generar dos listas con 10 numeros random dentro, el contenido copiarla y pegarla en una tercera lista en orden ascendente
import random
if __name__=="__main__":
#primera lista
    first_list=[]
    i=0
    while i<=9:
        first_list.append(random.randint(1,100))
        i=i+1
    print(first_list)
#segunda lista
    second_list=[]
    aux=0
    while aux<=9:
        second_list.append(random.randint(1,100))
        aux=aux+1
    print(second_list)
#tercera lista
    third_list=[]
    
