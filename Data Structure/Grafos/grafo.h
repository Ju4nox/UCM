//DFS para grafo poderado
#include <stdio.h>
#include <stdlib.h>

#define MAX_NODOS 100//máximio posible de nodos para el grafo
#define INF 999999//valor que será considerado infinito

typedef struct pnodo{
    int cantVertices;//Cantidad de vertices que contiene el grafo
    int MatrizAd[MAX_NODOS][MAX_NODOS];//Matriz de adyacencia
} Grafo;

Grafo* crearGrafo(int numNodos) {
    Grafo* grafo1 = (Grafo*)malloc(sizeof(Grafo));
    grafo1->cantVertices = numNodos;//cantidad de vertices que tendrá el grafo
    for (int i = 0; i < numNodos; i++) {
        for (int j = 0; j < numNodos; j++)
            grafo1->MatrizAd[i][j] = INF;//La matriz de adyacencia tendrá una dimensión = n^2
    }
    return grafo1;
}

void insertarArista(Grafo* grafop, int inicio, int destino, int peso) {
    grafop->MatrizAd[inicio][destino] = peso;
    grafop->MatrizAd[destino][inicio] = peso;//para grafo dirigido, omitimos una inserción
}

//Depth First Search
void DFS(Grafo* grafop, int nodo, int destino, int visitados[], int camino[], int pesoCam, int pesoMax) {
    visitados[nodo] = 1;
    camino[nodo] = 1;
    if (nodo == destino) {
        printf("Camino encontrado: ");//Se muestran los nodos del camino
        for (int i = 0; i < grafop->cantVertices; i++)
            if (camino[i] == 1)
                printf("%d ", i);
        printf("\nPeso total: %d\n", pesoCam);
    }
    else
        for (int i = 0; i < grafop->cantVertices; i++)
            if (grafop->MatrizAd[nodo][i] != INF && !visitados[i]) {
                int nuevoPesoCamino = pesoCam + grafop->MatrizAd[nodo][i];
                if (nuevoPesoCamino <= pesoMax)
                    DFS(grafop, i, destino, visitados, camino, nuevoPesoCamino, pesoMax);
            }
    // Retroceder
    visitados[nodo] = 0;
    camino[nodo] = 0;
}

void buscarCamino(Grafo* grafop, int inicio, int destino, int pesoMax) {
    int visitados[MAX_NODOS] = {0};
    int camino[MAX_NODOS] = {0};
    
    printf("Caminos desde %d hasta %d con peso máximo %d:\n", inicio, destino, pesoMax);
    DFS(grafop, inicio, destino, visitados, camino, 0, pesoMax);
}

void grafovacio(Grafo* grafop){
    //para verificar si está vacio hay que comprobar que no tenga aristas ni vertices
    if(grafop == INF){
        printf("El grafo está vacio");
    }
    else{   
        printf("El grafo no está vacio");
    }
}
