package Repaso;
import java.util.Scanner;

public class Biblioteca {
    public static String[] libros = {
            "Cien años de soledad",
            "Orgullo y prejuicio",
            "1984",
            "Matar a un ruiseñor",
            "Don Quijote de la Mancha",
            "El Gran Gatsby",
            "Crimen y castigo",
            "La Odisea",
            "El retrato de Dorian Gray",
            "En busca del tiempo perdido",
            "Los miserables",
            "La divina comedia",
            "Ulises",
            "El amor en los tiempos del cólera",
            "Fahrenheit 451",
            "La metamorfosis",
            "Guerra y paz",
            "Jane Eyre",
            "Las aventuras de Huckleberry Finn",
            "El principito"
    };
    public static String[] estadoLibros = {
            "No prestado", "No prestado", "No prestado", "No prestado", "No prestado",
            "No prestado", "No prestado", "No prestado", "No prestado", "No prestado",
            "No prestado", "No prestado", "No prestado", "No prestado", "No prestado",
            "No prestado", "No prestado", "No prestado", "No prestado", "No prestado"
    };
    public static void main(String[] args) {
        int opcion = 0;
        Scanner sc = new Scanner(System.in);
        System.out.println("Elige una opcion");


        while (opcion != 4) {
            Imprimemenu();
            opcion = sc.nextInt();
            sc.nextLine();

            if (opcion == 1){
                listaLibros();
            }

            if (opcion == 2){
                System.out.println("Que numero de libro quieres");
                int nlib = sc.nextInt();
                sc.nextLine();
                prestaLibros(nlib);


            }
            if (opcion == 3){
                System.out.println("Que numero de libro quieres devolver");
                int nlib = sc.nextInt();
                sc.nextLine();
                devuelveLibros(nlib);
            }

            System.out.println("gracias");


        }




    }

    public static void Imprimemenu() {
        System.out.println("+----------------------+");
        System.out.println("|   1. Lista libros    |");
        System.out.println("|   2. Presta libros   |");
        System.out.println("|   3. Devuelve libros |");
        System.out.println("|   4. Salir           |");
        System.out.println("|   5. Elige opcion:   |");
        System.out.println("+----------------------+");
        System.out.println();


    }
    private static void listaLibros(){
        for (int i = 0; i < libros.length; i++) {
            System.out.println(i+ " ");
            System.out.println(libros[i]);
            System.out.println(estadoLibros[i]);


        }

    }
    private static void prestaLibros(int numlib){
        if( numlib < libros.length-1 && numlib >= 0) {
            if (estadoLibros[numlib] == "prestado") {
                System.out.println("Esta prestado");
            } else {
                estadoLibros[numlib] = "prestado";
                System.out.println("libro prestado correctamente");
            }
        }
        else{
            System.out.println("Dame valores comprendidos entre el 0 y "+libros.length);
        }

        // De la lista, modifica para que ponga prestado




    }
    private static void devuelveLibros(int pos){
        estadoLibros[pos]="No pestado";


    }
}






