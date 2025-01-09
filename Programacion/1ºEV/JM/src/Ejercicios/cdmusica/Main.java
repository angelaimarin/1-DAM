package Ejercicios.cdmusica;
import java.util.Scanner;

public class Main {

    public static String titulo = "";
    //static=es para poder usarlos en todos los comandos ya que si no tendrias q crearlos otra vez
    public static String[] cds = new String[50];
    //arrays solo llevan los corchetes
    public static int indice = 0;

    public static void main(String[] args) {
        //bloque de variables q necesita mi programa
        int op = 0;
        Scanner sc = new Scanner(System.in);
        //libreria

        while (op != 3) {
            //mientras op sea diferente a 3
            menu();
            //llama a menu haciendo que salga todo el rato diferentes opciones
            System.out.println("Seleccione un numero de operacion: ");
            op = sc.nextInt();
            //recoge del teclado numeros enteros
            sc.nextLine();
            //salto de linea

        if (op == 1) {
            insertarCD();

        }

        if (op == 2) {
            ConsultarCDs();

        }
    }

    System.out.println("Gracias por usar MusicaCDs");
}




    private static void ConsultarCDs() {
        System.out.println("------------------");
        System.out.println("Consulta los CD");
        System.out.println("-----------------");
        for (int i=0 ; i< cds.length; i++) {
            if (cds[i]!=null){
                System.out.println(cds[i]);
            }
        }
    }

    private static void insertarCD() {
        System.out.println("Escribe el nuevo titulo del CD:");
        //Indicas que opcion tiene q ser igual a 1 e indica la funcion de insertar CD para guardar la variable ()
        Scanner sc = new Scanner(System.in);
        titulo = sc.nextLine();
        cds[indice]=titulo;
        indice++;
    }

    public static void menu(){
            System.out.println("1 Inserta CD");
            System.out.println("2 Consultar CDs");
            System.out.println("3 Salir");
            //necesito variable opcion
            //necesito 2º variable de titulo
            // guardando el titulo en un array de biblioteca o cd

        }
    }
