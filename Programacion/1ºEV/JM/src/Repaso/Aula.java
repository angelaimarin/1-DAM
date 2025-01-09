package Repaso;
public class Aula {
    public static void main (String args []){
        int d= 10;
        int resultado=0;
        resultado = d* multiplicaenteros (5); // 5 = int n
        System.out.println("El resultado es: " + resultado);

    }

public static int multiplicaenteros (int n){
        // n =1,2,3,4...
    int multiplicacion = 1;
    for (int i=1; i<=n;i++){
        multiplicacion = multiplicacion * i; // multiplicacion = n*i
    }
        return multiplicacion; //devuelve el resultado
}
}
