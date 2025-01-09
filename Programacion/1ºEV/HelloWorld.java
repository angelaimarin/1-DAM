// Online Java Compiler
// Use this editor to write, compile and run your Java code online

class HelloWorld {
    public static void main(String[] args) {
        int[] lista={2,-3,0,1,5,-9,7,-1,-2,6};
        // los valores se guardan en la variable arrive [] llamada lista
        int suma= 0;
        // sumar solo los numeros positivos 
        // lista  [0]-->2 y lista[9]-->6
         for(int i=0; i<lista.length;i++){
            if(lista[i]>0){
                
                /*
                si el resultado de lista e i es mayor q 0 entonces suma 
                hacemos un bucle que va del 0 al 9
                .lenght es 2,-3,0...
                */
                
                suma+=lista[i];
                
                /*
                suma=suma+lista[i]
                2 es mayor que 0 y se suma a la variable 
               -3 es menor que 0 no se suma y pasa al siguiente y al final se 
               suman todos.
               */
               
            }
        }
        System.out.println(suma);
    }
}