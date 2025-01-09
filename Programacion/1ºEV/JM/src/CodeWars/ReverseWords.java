package CodeWars;

public class ReverseWords {
    public static void main (String[]args){}

    public static String reverseWords(final String original){
        String[]words= original.split("");//metodo split permite un array y devuelve una cadena tipo lista segun queramos
        String palabra= "";
        String dalavuelta="";
        //recorre las palabras
        for (int i =0; i< words.length; i++) {
            palabra = words[i];
            //da la vuelta a cada palabra
            for (int j = palabra.length()-1; j>=0; j--) {
                //recorre la palabra al reves  y la concatena dadas las vueltas char a char 
                dalavuelta+=palabra.charAt(j);
            }
            dalavuelta+="";
        }
        return dalavuelta;
    }
}
