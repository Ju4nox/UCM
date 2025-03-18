from functools import reduce
#Ejercicio 1 Estructuras Discretas
numeros = [r for r in range(10)]
filtro = filter(lambda x: x%2==0, numeros)
par = list(map(lambda y: y%2==0, numeros))
print(par)

#Ejercicio 2
cuadrado = list(map(lambda a: a*a, numeros))
print(cuadrado)

#Ejercicio 3
suma = reduce(lambda b,c: b+c, numeros)
division = suma/len(numeros)
print(suma, "\n", division)

#Ejercicio 4 Calcular Producto Cartesiano de dos conjuntos
#Resultado esperado:
#[[1,3],[1,4]
# [2,3],[2,4]] 
#crea dos conjuntos distintos
cuno = set([1,2])
cdos = set([3,4])
#crea una lista en la que primero agrega (a[0],b[0]) y despues sigue con los siguientes datos
producto = list(map(lambda a: [(a, b) for b in cdos], cuno))
print(producto)

#Ejercicio 5 Encontrar la diferencia entre dos conjuntos de estudiantes
grupouno = set(["Hugo","Mario","Sebastian"])
grupodos = set(["Matias","Hugo","Marcelo"])

print(grupouno.union(grupodos))

#Ejercicio 6 Diccionarios
