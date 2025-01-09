package Repaso;

public class EjercicioChatGPT {
    public static String[] mensajes = {
                "Hola123 Mundo",
                "Es un ejemplo",
                "1Manzana2peras3uvas",
                "El reto está aquí",
                "Aventura increíble 45"
        };
        public static void main (String [] args){
            maslarga();
            trespalabras();
            vocal();
            numeros();
            trescaracteres;
        }
        //Ejerc 1
        public static void maslarga(){
            String maslarga ="";
            int lonmaslarga=0;
            for (int i = 0; i < mensajes.length; i++) { // for String mensajes: mensajes
                if (lonmaslarga<mensajes[i].length()){ //[i] es la posicion de mensajes (lonmaslarga<m.length()){
                    lonmaslarga=mensajes [i].length();//lonmaslarga=m.length();
                    maslarga=mensajes[i]; //maslarga=m;

                }
                System.out.println(maslarga+" "+lonmaslarga);
            }
            //Ejerc 2
            public static void trespalabras(){
                String[] ps;
                for (String mensajes: mensajes) {
                    ps=mensajes.split(" ");
                    if(ps.length == 3){
                        System.out.println(ps[1]);
                    }
                }
            }
            //Ejerc 3
            public static void vocal(){
                int n=0;
                for (String mensajes: mensajes) {
                    char c  = mensajes.toLowerCase().charAt(0);
                    if ((c=='a')||(c=='e')||(c=='i')||(c=='o')||(c=='u')){
                        n++;
                    }
                }
                System.out.println(n);
            }
            //Ejerc 4
            public static void numeros(){
                String p;
                int suma=0;
                for (String m:mensajes){
                    for (int i = 0; i < m.length(); i++) {
                        char d = m.charAt(i);
                        if ((d == '0')||(d == '1')||(d == '2')||(d == '3')||(d == '4')||(d == '5')||(d == '6')||(d == '7')||(d == '8')||
                                (d == '9'));
                        suma+=Character.getNumericValue(d);
                        }
                    }
                System.out.println(suma);
                }
            //Ejerc 5
            public static void trescaracteres(){
                String resul="";
                String aux="";
                for (String m:mensajes) {
                    aux=m.replaceAll(" "," ");
                    resul+=aux.substring(0,3);
                }
                System.out.println(resul);
            }
            }
        }

