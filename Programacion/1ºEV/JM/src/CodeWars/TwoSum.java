package CodeWars;
public class TwoSum {
    public static void main(String[] args) {
        // main si o no se ejecuta

    }
    public static int[] twosum(int[] numbers, int target) {
        int[] resl = new int[2];
        for (int i = 0; i < numbers.length; i++) {
            for (int j = 0; j < numbers.length; j++) {
                if (i != j) {
                    if (numbers[i] + numbers[j] == target) {
                        resl[0] = i;
                        resl[1] = j;

                    }
                }
            }
        }
        return resl;
    }
}

/*
public class tuclase {
public static void main (String[] args){
comando funcion

    int resultado=0;

    resultado = sumandonumeros (2,4);
    funcion llamada

    System.out.println(resultado);
    llamada impresa en pantalla
    }

 public int sumanumeros (int a, int b){
 return a + b;
 }
 public String saludo (String nombre,localtime fecha){
 if (fecha.gethours()>8 || fecha.gethours()<14){
 return "Buenos dias" + nombre;
 }
 }
 */