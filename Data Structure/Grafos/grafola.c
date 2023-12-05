#include "grafola.h"

// Función principal
int main() {
    // Crear un grafo con 5 nodos
    struct Grafo* grafo = crearGrafo(5);
    // Añadir aristas al grafo
    agregarArista(grafo, 0, 1, 1);
    agregarArista(grafo, 0, 2, 4);
    agregarArista(grafo, 1, 2, 2);
    agregarArista(grafo, 1, 3, 5);
    agregarArista(grafo, 2, 3, 1);
    agregarArista(grafo, 3, 4, 3);
    // Realizar BFS comenzando desde el nodo 0
    BFS(grafo, 0);
    // Liberar memoria del grafo
    free(grafo);
    return 0;
}
