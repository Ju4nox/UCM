"""
● Textos como "The quick brown fox jumps over the lazy dog" o "El veloz murciélago
hindú comía feliz cardillo y kiwi. La cigüeña tocaba el saxofón detrás del palenque
de paja". Son "pangramas", textos que contienen todas las letras de un cierto
alfabeto, quizá repetidas.
● Deberás crear un programa que reciba N frases y que diga si cada una de ellas
es un pangrama o no. Sólo deberás considerar las letras del alfabeto inglés (no te
preocupes por las vocales acentuadas ni la eñe, entre otras), que podrán
aparecer en mayúsculas o en minúsculas.
● La primera línea contendrá el número de frases y después aparecerá una nueva
frase en cada línea. Para cada frase deberás responder SI cuando se trate de un
pangrama o NO cuando no lo sea."""

#Problemas

#Mayusculas
#Funciones que puedo crear
def split_characters(phrase):
    #Separa los caracteres generando una nueva lista
    new_phrase=phrase.replace(" ","").replace(""," ").strip().split(" ")
    return new_phrase
#Comparar si estan las mayusculas
def compare_mayuscule(caracters_splitted, mayuscule_letters):
    
    pass
#Comparar si estan las minusculas

#def count_numbers_phrase
def count_phrase(phrase):
    
    if "," in phrase:
        new_phrase=phrase.replace(","," ").strip().split(" ")
        return len(new_phrase), new_phrase
    elif "." in phrase:
        new_second_phrase=phrase.replace("."," ")
        return len(new_second_phrase)
    else:
        phrase_count=phrase.split(" ")
        return len(phrase_count)
    

if __name__=="__main__":
    print("Ingrese una frase: ")
    phrase=input()
    
    #crear lista de mayusculas
    mayuscule_letters=["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    #crear lista de minusculas
    minuscule_letters=["a","b","c","d","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    
    caracters_splitted=split_characters(phrase)
    phrase_count=count_phrase(phrase)
    print(f"El número de Frases son: {phrase_count}\n{caracters_splitted} ")
    