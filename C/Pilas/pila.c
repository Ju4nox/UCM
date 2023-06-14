#include <stdio.h>
#include "pila.h"

int main(){
    struct PILITA *pila;
    int elem;
    int i;
    crear(&pila);
    push(pila, 1);
    push(pila,2);
    if (vacia(pila)){
        printf("\nPila vacia!");
    }
    else{
            printf("%d",pila);
        
    }
      
    return 0;
}