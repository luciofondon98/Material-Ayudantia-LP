#include "stdio.h"

void map(int* arr, int n, int(*accion)(int)){
    printf("Arreglo antes del map(): [");
    for(int i = 0; i < n; i++){
        printf(" %d ",arr[i]);
    }

    printf("]\n");
    printf("Arreglo despues del map(): [");

    for(int i = 0; i < n; i++){ 
        arr[i] = accion(arr[i]);
        printf(" %d ",arr[i]);
    }

    printf("]\n");

}

int duplicar(int i){
    return 2*i;
}

int alCuadrado(int i){
    return i*i;
}

int main(){
    int A[] = {1,2,3,4};
    int n = sizeof(A)/sizeof(A[0]);
    printf("Duplicar numeros del arreglo:\n");
    map(A,n,&duplicar);
    printf("-----------\n");
    printf("Elevar al cuadrado numeros del arreglo:\n");
    map(A,n,&alCuadrado);
    return 0;
}
