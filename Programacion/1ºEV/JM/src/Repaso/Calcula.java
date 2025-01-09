package Repaso;

public class Calcula {
    public static int caculaminimos(int[] numeros){
        menu();
        int min = 99999;
        for (int i = 0; i < numeros.length; i++) {
            if (min>numeros[i]){
                min=numeros[i];
            }
        }
     return min;
    }

    public static int caculamax(int[] numeros) {
        menu();
        int max = -99999;
        for (int i = 0; i < numeros.length; i++) {
            if (max < numeros[i]) {
                max = numeros[i];
            }

            
        }
        return max;
    }

    private static void menu() {
        System.out.println();
        System.out.println();
        System.out.println();
    }
}
