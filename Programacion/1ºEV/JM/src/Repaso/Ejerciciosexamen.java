package Repaso;

import java.util.Scanner;
/*
public class Ejerciciosexamen {

    public static void main(String[] args) {
        int opcion = 0;
        Scanner sc = new Scanner(System.in);

        while (opcion != 6) {
            menu();

            opcion = sc.nextInt();
            sc.nextLine();

            if (opcion == 1) {
                    System.out.println("Introduce el radio del cilindro:");
                    int r = sc.nextInt();
                    System.out.println("Introduce la altura del cilindro:");
                    System.out.println("Introduce la altura del cilindro:");
                    int h = sc.nextInt();
                    double area = ejercicio1(r, h);
                    System.out.println("El área del cilindro es: " + area);
            }

            if (opcion == 2) {
                ejercicio2();
                //se me queda en blucle
            }

            if (opcion == 3) {
                ejercicio3();
            }

            if (opcion == 4) {
                ejercicio4();
            }

            if (opcion == 5) {
                ejercicio5();
            }
        }

        System.out.println("Hasta pronto!!");
        sc.close();
    }

    private static void menu() {
        System.out.println("Elige una opción:");
        System.out.println("1. Calcular área del cilindro");
        System.out.println("2. Otra operación");
        System.out.println("3. Otra opción");
        System.out.println("4. Otra opción");
        System.out.println("5. Otra opción\"");
        System.out.println("6. Salir");
    }

    private static double ejercicio1(int r, int h) {
        return (2 * Math.PI * r * h) + (2 * Math.PI * Math.pow(r, 2));
    }

    private static void ejercicio2() {
        String str = "estudiar";
        String desinencia = str.substring(str.length() - 2, str.length());
        String raiz = str.substring(0, str.length() - 2);
        if (desinencia.equals("ar")) { // Uso de equals para comparar cadenas
            System.out.println(raiz + "o");
            System.out.println(raiz + "as");
            System.out.println(raiz + "a");
            System.out.println(raiz + "amos");
            System.out.println(raiz + "aís");
        }
    }

    private static void ejercicio3() {
        String cuenta = "12345687891544884463154";
        String termina = cuenta.substring(cuenta.length()-4,cuenta.length());
        String cuentacode ="";
        for (int i = 0; i < cuenta.length()-4; i++) {
            cuentacode+="#";

        }
        cuentacode+=termina;
        System.out.println(cuentacode);
    }

    private static String ejercicio4(String cad) {
        String dac = ""; // Variable para almacenar la cadena invertida
        for (int i = cad.length() - 1; i >= 0; i--) { // Recorre `cad` desde el final hasta el principio devolviendo la palabra al reves
            dac += cad.charAt(i);
        }
        return dac; // Retorna la cadena invertida
    }


    private static String ejercicio5(String cad) { //me falta pablo + foto
        String[] palabras = cad.split(" ");
        String pal = "";
        String esarf = "";
        for (int i = 0; i < palabras.length; i++) {
            pal = dalavuelta(palabras[i]);
            esarf+=pal;
        }
        return esarf;
    }

    public static String dalavuelta(String cad){
        String dac = "";
        String ccad=Integer.toString(cad);
        for (int i = ccad.length()-1; i >= 0; i--) {
            dac+=ccad.charAt(i);
        }
        return Integer.parseInt(dac);
    }


    private static String ejercicio6(String cad) {

            public static void main(String[] args) {
                System.out.println("Introduce un año:");
                int anio = sc.nextInt();

                int siglo = determinarSiglo(anio);
                System.out.println("El año " + anio + " pertenece al siglo " + siglo);

                sc.close();
            }

            private static int determinarSiglo(int anio) {
                // Un año pertenece al siglo (año / 100) + 1, excepto si es múltiplo de 100
                if (anio % 100 == 0) {
                    return anio / 100;
                } else {
                    return (anio / 100) + 1;
                }
            }
        }

    }
}
*/


