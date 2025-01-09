package CodeWars;

public class GetSum {
    public int Get(int a, int b) {
        int sumatorio = 0;
        if (a < b) {
            for (int i = a; i <= b; i++) {
                sumatorio += i;
            }
        }
        else {
            for (int i = a; i >= b; i--) {
                sumatorio += i;
            }
        }
        return sumatorio;
    }
}
