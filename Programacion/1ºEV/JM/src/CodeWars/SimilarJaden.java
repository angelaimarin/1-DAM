package CodeWars;

public class SimilarJaden {
    public static void main(String[] args) {
        System.out.println(findShort("Los miercoles juego al futbol"));
    }

    public static int findShort(String s) {
        int longitudmin = 99;
        int longitudsiguiente = 0;
        char caracter;
        int contador = 0;
        for (int i = 0; i < s.length(); i++) {
            caracter = s.charAt(i);
            if (caracter == ' ') {
                if (contador < longitudmin) {
                    longitudmin = contador;
                    contador = 0;
                }

            }

            else {
                contador++;
            }
        }
        return contador;
    }
}