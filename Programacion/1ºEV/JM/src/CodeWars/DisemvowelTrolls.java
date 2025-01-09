package CodeWars;

import java.util.Scanner;

public class DisemvowelTrolls {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Introduzca el comentario: ");
        String comentario = sc.nextLine();  // NextLine  capta toda una línea
        String str = comentario;
        str = str.replaceAll("[aeiouAEIOU]", "");
        System.out.println(str);

    }
}

/*
Metodo 2
----------
    import java.util.Scanner;

public class Troll {
    public static String disemvowel(String str) {
        return str.replaceAll("[aeiouAEIOU]", "");
    }

  public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Introduzca el comentario: ");
        String comentario = scanner.nextLine();  // Leemos una línea completa de texto
       // Llamamos al método disemvowel para eliminar las vocales
        String resultado = disemvowel(comentario);
        System.out.println(resultado);  // Imprimimos el resultado sin vocales
    }
}

Metodo 3
----------
public staticv String disemvowel(String str){
String[] vocales ={"a","e","i","o","u"};
for (String v:vocales){
//solo recorro listas no cadenas
str = str.replaceAll(v,"");
}
return str;
}
 */

