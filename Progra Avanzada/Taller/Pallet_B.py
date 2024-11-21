from Pallet import Pallet

class PalletB(Pallet):
    def __init__(self, _id, _cantidad_cajas, _kilos = 10, _ubicacion = "00"):
        super().__init__( _id, _cantidad_cajas,_kilos, _ubicacion)


    def mover(self, _new_ubicacion):
        return super().mover(_new_ubicacion)
    

    def añadir_cajas(self, _cantidad):
        return super().añadir_cajas(_cantidad)


    def retirar_cajas(self, _cantidad):
        return super().retirar_cajas(_cantidad)
    
    
    def info(self):
        return super().__str__()
