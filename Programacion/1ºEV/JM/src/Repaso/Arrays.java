package Repaso;
//esta dentro de la carpeta repaso
public class Arrays {
    //el archivo se llama Arrays
    public static void main(String[] args){
        //string y args = nombre y apellidos de los archivos
        String[] telefonos = new String [5];
        //indicas que string es una lista de telefonos en el que dices que somos 5 personas en la clase
        telefonos [0] = "976123456";
        //devuelve el dato guardado en la posicion 0 en el que indicamos que el primer telefeno guardado es 0
        System.out.println(telefonos[0]);
        //indicamos que el telefono guardado en la posicion 0 nos lo saque por pantalla


        for (int i=0; i<telefonos.length;i++ ) {
            telefonos[i] = "97612345" + Integer.toString(i);
        }
            //el bucle hace q si i=0 y menor que los caracteres de telefonos se sume
            //una posicion hasta q termine el numero
            // y q telefono(976123456)=i[0] sumandole 1 al ultimo termino }
            //este bucle lee la cadena
        for (int i=0; i<telefonos.length;i++ ) {
            System.out.println(telefonos[i]);
        }
        //este bucle for escribe el resultado del anterior

    }
}
