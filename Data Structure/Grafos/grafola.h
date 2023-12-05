//Implementación del BFS en un grafo  con lista de adyacencia
#include <stdio.h>
#include <stdlib.h>

// Estructura para representar un nodo en la lista de adyacencia
typedef struct AdjListNode {
    int destino;
    int peso;
    struct AdjListNode* siguiente;
}AdjListNode;

// Estructura para representar la lista de adyacencia de un nodo
struct AdjList {
    struct AdjListNode* cabeza;
};

// Estructura para representar un grafo
struct Grafo {
    int Nodos; // Número de nodos
    struct AdjList* array;
};

// Estructura para representar un nodo en la cola de la BFS
struct NodoCola {
    int valor;
    struct NodoCola* siguiente;
};

// Estructura para representar la cola de la BFS
struct Cola {
    struct NodoCola* frente;
    struct NodoCola* final;
};

// Función para crear un nuevo nodo en la lista de adyacencia
AdjListNode* nuevoNodo(int destino, int peso) {
    struct AdjListNode* nuevoNodo1 = (AdjListNode*)malloc(sizeof(AdjListNode));
    nuevoNodo1->destino = destino;
    nuevoNodo1->peso = peso;
    nuevoNodo1->siguiente = NULL;
    return nuevoNodo1;
}

// Función para crear un grafo con N nodos
struct Grafo* crearGrafo(int N) {
    struct Grafo* grafo = (struct Grafo*)malloc(sizeof(struct Grafo));
    grafo->Nodos = N;
    // Crear una matriz de listas de adyacencia. El tamaño de la matriz es N.
    grafo->array = (struct AdjList*)malloc(N * sizeof(struct AdjList));
    // Inicializar cada lista de adyacencia como vacía
    for (int i = 0; i < N; ++i)
        grafo->array[i].cabeza = NULL;
    return grafo;
}

// Añadir una arista al grafo dirigido
void agregarArista(struct Grafo* grafo, int origen, int destino, int peso) {
    // Añadir la arista de origen a destino
    AdjListNode* nuevoNodo1 = nuevoNodo(destino, peso);
    nuevoNodo1->siguiente = grafo->array[origen].cabeza;
    grafo->array[origen].cabeza = nuevoNodo1;
    // Si el grafo es no dirigido, también añadir la arista de destino a origen
    nuevoNodo1 = nuevoNodo(origen, peso);
    nuevoNodo1->siguiente = grafo->array[destino].cabeza;
    grafo->array[destino].cabeza = nuevoNodo1;
}

// Función para encolar un nodo en la cola
void encolar(struct Cola* cola, int valor) {
    struct NodoCola* nuevoNodo = (struct NodoCola*)malloc(sizeof(struct NodoCola));
    nuevoNodo->valor = valor;
    nuevoNodo->siguiente = NULL;
    if (cola->final == NULL)
        cola->frente = cola->final = nuevoNodo;
    else{
        cola->final->siguiente = nuevoNodo;
        cola->final = nuevoNodo;
    }
}

// Función para desencolar un nodo de la cola
int desencolar(struct Cola* cola) {
    struct NodoCola* temp = cola->frente;
    int valor = temp->valor;
    cola->frente = temp->siguiente;
    if (cola->frente == NULL)
        cola->final = NULL;
    free(temp);
    return valor;
}

// Función para realizar BFS en el grafo
void BFS(struct Grafo* grafo, int inicio) {
    // Marcar todos los nodos como no visitados
    int* visitado = (int*)malloc(grafo->Nodos * sizeof(int));
    for (int i = 0; i < grafo->Nodos; ++i)
        visitado[i] = 0;
    // Crear una cola para BFS
    struct Cola* cola = (struct Cola*)malloc(sizeof(struct Cola));
    cola->frente = NULL;
    cola->final = NULL;
    // Marcar el nodo de inicio como visitado y encolarlo
    visitado[inicio] = 1;
    encolar(cola, inicio);
    printf("Recorrido BFS desde el nodo %d:\n", inicio);
    while (cola->frente != NULL) {
        // Desencolar un nodo de la cola y mostrarlo
        int nodo = desencolar(cola);
        printf("%d ", nodo);
        // Obtener todos los nodos adyacentes al nodo desencolado
        struct AdjListNode* temp = grafo->array[nodo].cabeza;
        while (temp != NULL) {
            int destino = temp->destino;
            // Si el nodo adyacente no ha sido visitado, marcarlo como visitado y encolarlo
            if (!visitado[destino]) {
                visitado[destino] = 1;
                encolar(cola, destino);
            }
            temp = temp->siguiente;
        }
    }
    printf("\n");
    // Liberar memoria
    free(visitado);
    free(cola);
}