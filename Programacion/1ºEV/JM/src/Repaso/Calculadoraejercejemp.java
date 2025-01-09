package Repaso;

import java.util.Scanner;

public class Calculadoraejercejemp {

    public static void main(String args[]) {
        int opcion = 0;
        Scanner sc = new Scanner(System.in);

        while (opcion != 5) {
            imprimirMenu();
            opcion = sc.nextInt();
            sc.nextLine();


            if (opcion == 1) { // Suma
                System.out.println("Introduce el primer número para sumar: ");
                int n1 = sc.nextInt();
                System.out.println("Introduce el segundo número para sumar: ");
                int n2 = sc.nextInt();
                int resultado = n1 + n2;
                System.out.println("Resultado: " + resultado);
            }

            if (opcion == 2) { // Resta
                System.out.println("Introduce el primer número para restar: ");
                int n1 = sc.nextInt();
                System.out.println("Introduce el segundo número para restar: ");
                int n2 = sc.nextInt();
                int resultado = n1 - n2;
                System.out.println("Resultado: " + resultado);
            }

            if (opcion == 3) { // Multiplicación
                System.out.println("Introduce el primer número para multiplicar: ");
                int n1 = sc.nextInt();
                System.out.println("Introduce el segundo número para multiplicar: ");
                int n2 = sc.nextInt();
                int resultado = n1 * n2;
                System.out.println("Resultado: " + resultado);
            }

            if (opcion == 4) { // División
                System.out.println("Introduce el primer número para dividir: ");
                int n1 = sc.nextInt();
                System.out.println("Introduce el segundo número para dividir: ");
                int n2 = sc.nextInt();
                if (n2 != 0) {
                    int resultado = n1/n2;
                    System.out.println("Resultado: " + resultado);
                }
            }
        }
        System.out.println("Hasta pronto!!");
    }

    public static void imprimirMenu() {
        System.out.println("----------------------");
        System.out.println("   1. Suma          ");
        System.out.println("   2. Resta         ");
        System.out.println("   3. Multiplica    ");
        System.out.println("   4. Divide        ");
        System.out.println("   5. Salir         ");
        System.out.println("   Elige opción:    ");
        System.out.println("----------------------");
    }
}
