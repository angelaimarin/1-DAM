package Ejercicios.PrimerPrograma;

public class Main {
    public static void main(String[] args) {
            //void - no devuelve la variable no tiene un return;
            //string es una lista de cadenas y se define con corchetes ya q entran los args (argumentos de entradas);
            int num1= 5;
            int num2= 199;
            int suma= 0;
            for(int i=num1; i<=num2;i++){
                if(i%2==0){
                    suma=suma+i;
                }
            }
            System.out.println(suma);
            //Aparece la suma de todos los numeros del 5 al 199 osea 5+6+7...
            //Al poner if(i%2==0) se dividen entre 2 y si son pares solo se suman los pares
    }
}