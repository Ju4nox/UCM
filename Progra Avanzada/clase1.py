class Alumno:
    # variables de clase
    tipo = "Estudiante"

    def __init__(self, name, surname, rut, mail):
        # variables del objeto
        # self.nombre es atributo del objeto y name es el parámetro de entrada
        self.nombre = name
        self.apellido = surname
        self.rut = rut
        self.correo = mail

    def imprimir(self):
        # imprimir los atributos del objeto
        print(self.nombre)
        print(self.apellido)
        print(self.rut)
        print(self.correo)


yo = Alumno("Ana", "Jara", "22.222.222-2", "ajara@alu.ucm.cl")
yo.imprimir()
