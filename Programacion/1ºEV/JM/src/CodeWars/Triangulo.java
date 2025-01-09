package CodeWars;

public class Triangulo {
    public static int rowSumOddNumbers(int n){
        int suma = 0;
        for (int i = n*(n-1)+1;i<=(n*n+n-1);i=i+2) {
            // n = 4 --> 4*(4-1)+1=13
            suma+=i;
        }
        return suma;
    }
}

/*
Opcion 1
Se tiene q generara una lista = 1, (3,5), (7,9,11)  , (13,15,17,19)...
en el que estan 3 grupos el 1º (3,5) el 2º (7,9,11) y el 3º (13,15,17,19)

Numero introducido es 4 ---> [4-1] nos dice pertenece 3º grupo ---> por ultimo sumo el conjunto de numeros

Opcion 2

for i = i + 2; ----> 1,3,5,7,9,11,13...
     CB
N =  1  ,  2  ,    3     ,       4      ,   5
         (3,5)  (7,9,11)  (13,15,17,19)   (21,23,25,27,29)
        N*(N-1)+1=
        

 */