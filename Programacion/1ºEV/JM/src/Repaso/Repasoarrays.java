package Repaso;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

public class Repasoarrays {
    public static int MAX = 10;
   public static void main(String[] args) {
       //array con posicion determinada
       double[] conjutoDatos = new double [10];
       for(int i =0;i<MAX;i++){
           conjutoDatos[i]=(i+1)/2;
       }


        int[] numeros = {1, 2, 3, 4, 5, 6, 7, 8, 9}; //Array sujeto a una longitud determinada
        String[] nombres = {"manzana", "uva", "kiwi", "higo", "naranja", "mandarina", "pera", "melocoton", "chirimolla"};
       // System.out.println(nombres[nombres.length-1]); //ultima posicion
        System.out.println(String.join(" ", nombres)); //Array a String

        //ArrayList ya no son una longitud determinada
        ArrayList<String> names = new ArrayList<String>();
        names.add("Angela");
        for (int i = 0; i < MAX; i++) {
            names.add("Angela" + Integer.toString(i+1));
        }
        //meto
       for (int i = 0; i <20 ; i++) {
           names.add("Angela" + (i+1));
       }
        //saco
       for (int i = 0; i < MAX ; i++) {
           System.out.println(names.get(i));
       }
       for (String nombresP : names) {
           System.out.println(nombresP); //solamente en arraylist y en linked list
       }

       //listas
       List<String> milista= new ArrayList<String>();
       milista.add("hola");
       milista.add("que");
       milista.add("tal");
       milista.add("estas");
       milista.add("hola");
       for (String cadena: milista) {
           System.out.println(cadena);
       }
       List<String> milista2= new LinkedList<String>();
       milista2.add("hola");
       milista2.add("que");
       milista2.add("tal");
       milista2.add("estas");
       milista2.add("hola");
       for (String cadena: milista2) {
           System.out.println(cadena);
       }
    }
}
