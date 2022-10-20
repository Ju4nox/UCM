def cm_to_shuka(cms):
    shukan=float(30.3)
    new_shukan=cms/shukan
    return new_shukan

def cm_to_sheikan(cms):
    sheikan=int(6)*float(30.3)
    new_sheikan=cms/sheikan
    return new_sheikan
    
if __name__=="__main__":
    
    print("Ingrese una cantidad de centimetros")
    cms=float(input())
    shukan=cm_to_shuka(cms)
    sheikan=cm_to_sheikan(cms)
    print(f"La cantidad de Shukan son: {shukan}\n y la cantida de Sheikan son: {sheikan}")