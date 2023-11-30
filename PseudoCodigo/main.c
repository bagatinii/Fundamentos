#include <stdio.h>
#define TAM 8

/* Função que soma todas as posições não negativas do vetor */
int soma(int vet[]){
    int aux=0;
    for(int i = 0 ; i < TAM ; i++){
        if(vet[i] > 0){
            aux+=vet[i];
        }
    }
    return aux;
}

/* Imprime as posições do vetor na tela */
void printVet(int vet[])
{
    printf("[ ");
    for (int i = 0 ; i < TAM - 1; i++)
    {
        printf("%d, ", vet[i]);
    }
    printf("%d ", vet[TAM-1]);
    printf("] \n\n");

}

int main()
{
    int A[8] = {13, -20, 7, -127, 30, 50, 407, 44};
    int B[8] = {60, 80, -343, 353, 111, 378, 32, 77};
    int C[8] = {};
    int D[8] = {};

    /* Rotina responsável por preencher cada posição do vetor C com a soma da respectiva posição do vetor A com B */
    for (int i = 0; i < TAM; i++) {
        C[i] = A[i] + B[i];
    }

    printf("Vetor C: \n");
    printVet(C);

    /* Rotina responsável por preencher cada posição do vetor C com a subtração da respectiva posição do vetor A com B */
    for (int i = 0; i < TAM; i++) {
        D[i] = A[i] - B[i];
    }

    printf("Vetor D: \n");
    printVet(D);
    
    /* Multiplica a soma dos números não negativos de C com os números não negativos de D */
    int ms = soma(C) * soma(D);

    printf("Ms = %d" , ms);

}