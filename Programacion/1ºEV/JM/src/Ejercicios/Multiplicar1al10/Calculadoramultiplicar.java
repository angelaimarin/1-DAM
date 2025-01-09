package Ejercicios.Multiplicar1al10;

import java.util.Scanner;

public class Calculadoramultiplicar {
    public static void main(String[] args) {
        for (int A = 1; A < 11; A++) {
            for (int B = 1; B < 11; B++) {
                System.out.println(A + " x " + B + " = " + (A * B));
            }
            System.out.println();
        }

    }
}