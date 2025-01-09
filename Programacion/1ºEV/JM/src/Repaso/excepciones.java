package Repaso;

import java.util.InputMismatchException;
import java.util.Scanner;

public class excepciones {
    public static void main (String [] args){
        Scanner teclado = new Scanner(System.in);
        int num;
        try{
            System.out.println("Ingrese un valor entero: ");
            num = teclado.nextInt();
            int cuadrado = num * num ;
            System.out.println("El cuadrado de " + num + "es " + "" );

        }
        catch (InputMismatchException ex) {
            //una excepcion para que no se pueda diviidr entre cero seria ArithmeticException ex y uhn SOP ("No me dividas entre 0")
            System.out.println("Debe ingresar obligatroriamnete un numero entero");
        }
    }

}
