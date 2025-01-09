package CodeWars;
//  811181         9119
public class SquareEveryDigits {
 public static int SquareDigits(int n){
  //Tengo como cadena 9119 convertimos int a string para q se lea
  String numero = Integer.toString(n);
  int digito =0;
  String resultado="";
  for(int i = 0; i < numero.length(); i++ ){
   // valor "9" -- 9 ya no es cadena
   digito=Character.getNumericValue(numero.charAt(i));
   //convertimos de string a char
   //81
   digito=digito*digito;
   // metodo pow
   resultado=resultado+Integer.toString(digito);

  }
  //converitmos de int a string
  return Integer.valueOf(resultado);
 }
 public static void main(String[] args) {

  System.out.println(SquareDigits(9119));

  System.out.println(SquareDigits(765));
 }
}
