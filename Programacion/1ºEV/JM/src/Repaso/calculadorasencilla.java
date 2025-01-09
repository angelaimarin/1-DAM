package Repaso;

import java.util.InputMismatchException;
import java.util.Scanner;

public class calculadorasencilla {
    public static void main(String[] args) {
            int a = 0;
            int b = 0;
            int result = 0;
            int op = 0;
            while (op != 5) {
                try {
                    menu();
                    Scanner teclado = new Scanner(System.in);
                    op = teclado.nextInt();
                    teclado.nextLine();
                    if (op != 5) {
                        System.out.println("Mete primer numero: ");
                        a = teclado.nextInt();
                        teclado.nextLine();
                        System.out.println("Mete segundo numero: ");
                        b = teclado.nextInt();
                        teclado.nextLine();
                    }
                    if (op == 1) {
                        sumar(a, b);
                    }
                    if (op == 2) {
                        restar(a, b);
                    }
                    if (op == 3) {
                        multi(a, b);
                    }
                    if (op == 4) {
                        divide(a, b);
                    }
                } catch (InputMismatchException ex) {
                    System.out.println("Debe ingresar obligatoriamente un número entero.");
                    op = 0;
                }
            }


            System.out.println("gracias");
        }

        private static void sumar ( int a, int b){
            System.out.println(a + b);
        }

        private static void restar ( int a, int b){
            System.out.println(a - b);
        }

        private static void multi ( int a, int b){
            System.out.println(a * b);
        }

        private static void divide ( int a, int b){
            try {
                System.out.println(a / b);
            } catch (ArithmeticException ex) {
                System.out.println("Error de división por cero");
            }
        }

        private static void menu () {
            System.out.println("1. Suma");
            System.out.println("2. Resta");
            System.out.println("3. Multiplica");
            System.out.println("4. Divide");
            System.out.println("5. Salir");
            System.out.println("Elige tu opción: ");
        }
    }