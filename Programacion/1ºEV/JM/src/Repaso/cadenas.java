package Repaso;
public class cadenas {
    public static void main(String[] args) {
        String cadena = "I love Java";
        char primerCaracter = cadena.charAt(7);
        System.out.println(primerCaracter);
        System.out.println(cadena.length());
        String subcadena = cadena.substring(2, 6);
        System.out.println(subcadena);
        if (subcadena.equals("love")) {
            System.out.println("Las dos cadenas son iguales");
        }
        String nombreMayusculas = subcadena.toUpperCase();
        System.out.println(nombreMayusculas);
        int posicion = cadena.indexOf("Java");
        System.out.println(posicion);
        String AMOR = cadena.replace(subcadena, "AMO");
        System.out.println(AMOR);
        String[] words = cadena.split(" ");
        for (String word : words) {
            System.out.println(word);
        }
    }
}

