package Ejercicios. Proyectoejemplo;

import java.util.*;
import java.util.stream.IntStream;

public class principal {
    public static String[] listaEquipos = new String[]{"Deportivo Alavés", "Athletic Club", "Atlético de Madrid", "FC Barcelona", "Real Betis", "Celta de Vigo", "Espanyol", "Getafe", "Girona", "Las Palmas", "Leganés", "Real Mallorca", "Osasuna", "Rayo Vallecano", "Real Madrid", "Real Sociedad", "Sevilla", "Valencia", "Valladolid", "Villarreal"};
    private static String equipoFav="";
    private static Scanner sc =new Scanner(System.in);

    public static void main(String[] args) {
    int op = 0;
    while (op != 3){
        menu();
        op=sc.nextInt();
        sc.nextLine();
        if(op==1){
            seleccionafav();
        }
        if (op==2){
            sorteo();
        }
    }
    System.out.println("Bye Bye");
   }

    private static void sorteo() {
        List<Integer> listNumEquipo = new ArrayList<>();
        for (int i=0; i <= 19; i++){
            listNumEquipo.add(i);
        }

        Collections.shuffle(listNumEquipo);
        for (int i =0; i< listaEquipos.length;i += 2){
            // Obtener los indices aleatorios de los equipos
            int index1 = listNumEquipo.get(i);
            int index2 = listNumEquipo.get(i + 1);

            //Mostrar el emparejamiento
            System.out.println(listaEquipos[index1]+ " - " + listaEquipos[index2]);
        }
    }

    private static void seleccionafav() {
        int posFav=0;
        for(int i=0; i<listaEquipos.length;i++){
            System.out.println(i+1+". "+listaEquipos[i]);
        }
        System.out.println("Selecciona el numero de tu equipo favorito: ");
        posFav = sc.nextInt();
        sc.nextLine();
        equipoFav = "** "+listaEquipos[posFav-1];
        listaEquipos[posFav-1] = equipoFav;
        System.out.println("Seleccionado correctamente. ");
    }

    private static void menu() {
        System.out.println("1) Escoger fav");
        System.out.println("2) Realizar sorteo");
        System.out.println("3) Salir");
    }
}
