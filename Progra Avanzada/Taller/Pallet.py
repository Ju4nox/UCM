from abc import ABC

class Pallet(ABC):
    def __init__(self, _id, _cantidad_cajas,_kilos,_ubicacion):
        self.id = _id
        self.cantidad = _cantidad_cajas
        self.kilos = _kilos
        self.ubicacion = _ubicacion 


    def mover(self, _new_ubicacion):
        self.ubicacion = _new_ubicacion
        print("\033[32;1mSe han reubicado la caja con exito!!!\033[0m")


    def añadir_cajas(self, cantidad):
        if self.kilos * (self.cantidad + cantidad) > 400:
            return 1
        else:
            self.cantidad += cantidad
            print("\033[32;1mSe han añadido cajas con exito!!!\033[0m")
            return 0


    def retirar_cajas(self, cantidad):
        self.cantidad -= cantidad
        print("\033[31;1mSe han quitado cajas con exito!!!\033[0m")
        return self.cantidad

    def __str__(self):
        return f"__________________________\n" \
               f"\033[32;1mID de Pellet: {self.id}\n\033[0m" \
               f"Cantidad de cajas: {self.cantidad}\n"\
               f"Formato Pellet: {self.kilos} kg.\n" \
               f"Peso Total: {self.kilos * self.cantidad}kg\n"\
               f"Ubicación en bodega: {self.ubicacion}\n\n"\
    