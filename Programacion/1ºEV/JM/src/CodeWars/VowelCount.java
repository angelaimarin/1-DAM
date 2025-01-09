package CodeWars;

public class VowelCount {
    public static void main(String[] args) {

    }
        public static int getCount(String str) {
        String[] vocales ={"a","e","i","o","u"};
        int cont=0;
        //recorre cadenas por sus posiciones
        for (int i = 0; i < str.length(); i++){
            //recorre vocales
            for (String v:vocales){
                //compara cada caracter convirtiendo a string y comparando con la vocal
                if (Character.toString(str.charAt(i)).equals(v)){
                    cont++;
                }
            }
            }
        return cont;
        }
    }
/*
Metodo 2
-----------
public static int getCount(String str) {
int cont=0;
for (int i = 0; i < str.length(); i++){
if(str.charAt(i)=='a' || str.charAt(i)=='e'|| str.charAt(i)=='i'  || str.charAt(i)=='o' || str.charAt(i)=='u')
cont++;
}
}
return cont;
 */