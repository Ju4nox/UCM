from random import randint
class Persona:
    def __init__(self,nombre="Juan",edad="18",DNI = " ",sexo="F",peso=67,altura=1.75):
        self._nombre = nombre
        self._edad = edad
        self._dni = DNI 
        self._sexo = sexo
        self._peso = peso
        self._altura = altura
        
        
    @property
    def nombre(self):
        return self._nombre
    
    @nombre.setter
    def nombre(self, valor):
        self._nombre = valor
    
    
    @property
    def edad(self):
        return self._edad
    
    @edad.setter
    def edad(self,valor):
        self._edad = valor
        
    
    @property
    def sexo(self):
        return self._sexo
    
    @sexo.setter
    def sexo(self,valor):
        self._sexo = valor
        
    
    @property
    def peso(self):
        return self._peso
    
    @peso.setter
    def peso(self,valor):
        self._peso = valor
        
    @property
    def altura(self):
        return self._altura
    
    
    @altura.setter
    def altura(self,valor):
        self._altura = valor
        
    @property
    def dni(self):
        return self._dni
    
    def calcularIMC(self):
        total = self._peso/self._altura**2
        return f"El Imc es: {total}"
    
    def valorarPesoCorporal(self):
        if self.calcularIMC > 25:
            return 1
        elif self.calcularIMC < 18:
            return -1
        return 0
    
    def esMayorDeEdad(self):
        if self._edad < 18:
            return False
        return True
    
    def _generaDNI(self):
        self._dni = randint(00000000,99999999)
        return self._dni
    
    def __str__(self):
        return f"{self._nombre}, {self._edad}, {self._dni} {self._sexo}, {self._peso},{self._altura}"

persona1 = Persona()
print(persona1.__str__())
