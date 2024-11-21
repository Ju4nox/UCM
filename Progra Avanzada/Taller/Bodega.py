
class Bodega:
    def __init__(self):
        self.bodega = {}


    def tamaño_de_bodega(self):
        return len(self.bodega)
    

    def agregar_pallet(self, _id, _new_pallet):
        self.bodega[_id] = _new_pallet


    def retirar_pallet(self, id):
        del self.bodega[id]
        print(f"\033[34;1mEl pallet N°\"{id}\" ha sido eliminado.\033[0m")


    def reubicar(self, new_ubicacion):
        for pallet in self.bodega.values():
            if pallet.ubicacion == new_ubicacion and new_ubicacion != "00":
                return 1
        return 0


    def Info_all(self):
        for pallets in self.bodega.values():
            print(pallets)


    def Info_con_id(self, id):
        if id in self.bodega:
            return self.bodega[id]
        else:
            return None