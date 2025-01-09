package Ejercicios.Pintaelcubo;

import java.util.Scanner;

public class Pintaelcubo {
    public static int H = 5;
    public static void main(String[]args) {
        // Linea arriba y base
        pintaBaseArriba();
        // Bucle que hace el alto
        for (int i = 0; i < H; i++) {
            pintalineaMedio();

        }
        pintaBaseArriba();
    }


    public static void pintalineaMedio(){
        System.out.print("|");
        for (int i = 0; i < H*3 ; i++) {
            System.out.print(" ");

        }
        System.out.println("|");

    }
    public static void pintaBaseArriba(){
        System.out.print("+");
        for (int i = 0; i < H*3 ; i++) {
            System.out.print("-");

        }
        System.out.println("+");

    }
}



