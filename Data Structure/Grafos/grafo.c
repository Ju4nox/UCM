#include "grafo.h"

int main() {
    int cantidadVertices = 0;
    Grafo* grafop = crearGrafo(cantidadVertices);
    insertarArista(grafop, 0, 1, 5);
    insertarArista(grafop, 0, 2, 3);
    insertarArista(grafop, 1, 2, 2);
    insertarArista(grafop, 1, 3, 7);
    insertarArista(grafop, 2, 3, 1);
    buscarCamino(grafop, 0, 3, 6);
    grafovacio(grafop);
    return 0;
}
