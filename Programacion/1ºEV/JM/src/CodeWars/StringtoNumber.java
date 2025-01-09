package CodeWars;
public class StringtoNumber {

    public static void main (String args []){
        String[] numeros = {"1234", "605", "1405","-7"};

        for(int i = 0; i < numeros.length; i++){ // .lenght solo se usa cuando hay String
            int n = Integer.parseInt(numeros[i]);  //Combierte numeros de string a int y
            // recorre cada numero desde la posicion de i (0)
            System.out.println("La cadena de numeros es: " + n);
        }

    }

    public static int stringToNumber(String str) {
        return Integer.parseInt(str); // Devuelve el string convirtiendolo en un int
    }

}
