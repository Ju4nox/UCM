#generar dos listas con 10 numeros random dentro, el contenido copiarla y pegarla en una tercera lista en orden ascendente
import random
if __name__=="__main__":
#primera lista
    first_list=[]
    i=0
    while i<4:
        first_list.append(random.randint(1,12))
        i=i+1
    print(first_list)

