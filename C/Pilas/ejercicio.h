#include "pila.h"

struct PILITA *pila;
//crear una pila para agregar
void crea(){
    crear(&pila);
}

//si es parentesis izquiero agregar a la pila
void p_agrega(char parentesis){
    if (parentesis == "("){
        push(pila, "(");
    }
}

//si es parentesis derecho Extraer y desplegar los valores hasta
//encontrar paréntesis izquierdo. Pero NO desplegarlo. 

//si es tipo int mostrar en pantalla
void desplegar(int elem){
    if (elem){
        printf("%d",elem);
    }
}

void muestra(){
    printf("%d", pila);
}
