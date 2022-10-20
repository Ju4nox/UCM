if __name__=="__main__":
    print("Ingrese una cadena")
    cadena=input()
    aaaa=cadena.replace(" ","").replace(""," ").strip().split(" ")
    print(cadena,aaaa)