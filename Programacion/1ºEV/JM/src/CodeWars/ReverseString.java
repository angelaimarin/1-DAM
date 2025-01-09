package CodeWars;
public class ReverseString {
    public static void main(String[] args) {
        System.out.println(solution("hola"));
    }

    public static String solution(String str) {
        String vuelta = "";
        for (int i = str.length() - 1; i >= 0; i--) {
            vuelta += str.charAt(i);
        }
        return vuelta;
    }
}
