/*El programa pedirá́un número por teclado e informará de si el número que introduce el
usuario es mayor o menor que el que se trata de averiguar. Si no se acierta se debe
continuar solicitando números, cuando el usuario acierte, se mostrará un mensaje de
felicitación y el número de intentos empleados*/


#include <stdio.h>
#include <stdlib.h>
#include <time.h>

//definir las funciones

void limites(int *lower_lim, int *upper_lim);
int genera(int, int);
void ing(int *ingreso);


int main(){
    int lower_lim, upper_lim, gen, ingreso, intentos;
    int x = 1;
    limites(&lower_lim, &upper_lim);
    gen = genera(lower_lim, upper_lim);
    //inicia el bucle para llamar a las funciones
    while (x==1){
        ing(&ingreso);
        if (ingreso==gen){
            printf("Has Acertado!!! Despues de ");
            printf("%d",intentos);
            printf(" intentos");
            x++;
        }
        if (ingreso<gen){
            printf("El numero buscado es mayor\n");
            intentos++;
        }
        if (ingreso > gen){
            printf("El numero buscado es menor\n");
            intentos++;
        }
    }
    return 0;

}

void limites(int *lower_lim, int *upper_lim){
    printf("Ingrese el Limite inferior: ");
    scanf("%d",lower_lim);
    printf("Ingrese el Limite superior: ");
    scanf("%d",upper_lim);
}

int genera(int lower_lim, int upper_lim){
    //genera el numero pero no lo imprime
    srand(time(0));
        int num = (rand() % (upper_lim - lower_lim + 1)) + lower_lim;
        return num;
}

void ing(int *ingreso){
    printf("Ingrese un numero: ");
    scanf("%d",ingreso);
}

