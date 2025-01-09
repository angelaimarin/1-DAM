package Repaso;


public class EjercicioRepaso2 {

    public static void main(String []args){
        String palabra = "Tiene dentro texto escrito";
        //metodos de cadenas
        int l= palabra.length();
        System.out.println(palabra.length());
        palabra.charAt(0);
        System.out.println((l-1));
        System.out.println(palabra.replace('o','a'));
        System.out.println(palabra.replace("dente","dentro"));
        String[] censurar = {"dentre", "dentro"};
        for (int i = 0; i < censurar.length; i++) {
            palabra = palabra.replace(censurar [i], "*******");

        }
        System.out.println(palabra);
        System.out.println("*******");
        char c = palabra.charAt(0);
       String primerapalabra = palabra.substring(0,5);
        System.out.println(primerapalabra.equals("Tiene"));
        if (Character.isUpperCase(c)){
            System.out.println("Empieza por mayuscula");
        }

        //partimos una cadena por caracter delimitador
        String [] arraypalabras = palabra.split("\s");
        System.out.println(Arrays.deepToString(arraypalabras));
        System.out.println(palabra.contains("Tiene"));
        System.out.println(palabra.endsWith("*******"));
        String cadena2 = "   espacios  ";
        System.out.println(cadena2.trim());
    }

}
