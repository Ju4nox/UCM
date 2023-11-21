#include <stdio.h>
#include <stdlib.h>

typedef struct snodo{
    int dato;
    struct snodo *ant;
    struct snodo *izq;
    struct snodo *der;
}tnodo;

typedef tnodo *pnodo;

pnodo crearNodo (int numero){
    pnodo nuevo;
    nuevo = (pnodo)malloc(sizeof(pnodo));
    nuevo->dato = numero;
    return nuevo;
}

void vinculosNodo (pnodo *actual, pnodo anterior, pnodo izquierda, pnodo derecha){
    (*actual)->ant = anterior;
    (*actual)->izq = izquierda;
    (*actual)->der = derecha;
}

void mostrarPreOrden(pnodo actual){
    if(actual != NULL){
        printf("Dato: %d\t",actual->dato);
        mostrarPreOrden(actual->izq);
        mostrarPreOrden(actual->der);
    }
}

void mostrarInOrden(pnodo actual){
    if(actual != NULL){
        mostrarInOrden(actual->izq);
        printf("Dato: %d\t",actual->dato);
        mostrarInOrden(actual->der);
    }
}

void mostrarPostOrden(pnodo actual){
    if(actual != NULL){
        mostrarPostOrden(actual->izq);
        mostrarPostOrden(actual->der);
        printf("Dato: %d\t",actual->dato);
    }
}

pnodo buscarArbol(pnodo actual, int busc){
    pnodo aux=NULL;
    if(actual != NULL){
        if(actual->dato == busc)
            aux = actual;
        else{
            aux = buscarArbol(actual->izq,busc);
                if(aux == NULL)
                    aux = buscarArbol(actual->der,busc);
        }
    }
    return aux;
}