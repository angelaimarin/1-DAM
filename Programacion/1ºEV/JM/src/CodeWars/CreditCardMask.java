package CodeWars;

public class CreditCardMask {
    public static String maskify(String str) {
        String codificada = "";
        int longitud = str.length() - 4;
        for (int i = 0; i < str.length(); i++) {
            if (i < longitud) {
                codificada += "#";
            } else {
                codificada += str.charAt(i);
            }
        }
        return codificada;
    }
}

