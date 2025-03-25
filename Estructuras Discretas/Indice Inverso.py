#1
archivo = open("title.basics.tsv","r")
i=0
palabras = set()
data = dict()
for line in archivo:
    arr = line.strip().lower().split("\t")
    if i>1:
        data.update({arr[0]:arr[2]})
        palabras_titulo = arr[2].split(" ")
        palabras.update(set(palabras_titulo))
    i+=1 
archivo.close()
#2
value = len(palabras)
print(f"Cantidad de palabras: {value:,}")
value = len(data)
print(f"Cantidad de peliculas: {value:,}")
#3
indice = dict({key:set() for key in palabras})
#4
from tqdm.notebook import tqdm_notebook
#5
for id, titulo in tqdm_notebook(data.items()):
    print(id,titulo)
    palabras_titulo = titulo.split(" ")
    nuevo_titulo = dict()
    for p in palabras_titulo:
        indice[p].update({id})
#6
indice.update(nuevo_titulo)
#7
indice["le"].update({"tt0000003"})
#8
indice["le"]
#6
value = len(indice)
print(f"Cantidad de palabras indice: {value:,}")
#7
indice["matrix"]
#8
data["tt9851526"]
#9
indice["padrino"]
#13
resultados = [data[t] for t in indice["matrix"] & indice["the"]]
#14
len(resultados)
#15
