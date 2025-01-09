package POO.estudiantes;

import java.util.LinkedList;

public class escuela {
    private String nombre;
    private String telefono;
    private String listalumnos;
    private LinkedList<estudiante>estudiantes = new LinkedList<>();

    public escuela(String nombre) {
        this.nombre = nombre;
    }

    public void agregarEstudiante(estudiante nuevo) {
        estudiantes.add(nuevo);
    }

    //clases hacerlas mejor en mayusculas


    public void imprimirEstudiantes() {
        for (estudiante aux : estudiantes){
            //recorre una lista de cadenas
            System.out.println(aux.getNombre());
            //aux es una variable y es una lista de cadenas para hacer el sout y
            // q se imprima solo la variable nombre de la lista de estudiantes
            System.out.println(aux.getCurso());
        }

    }
    public void eliminarEstudiante(String DNI){
        for (int i = 0; i < estudiantes.size() ; i++) {
            //para solo imprimir y no modificar nada utilizamos el metodo de imprimir pero si queremos
            //modificar algo de la lista utilizamos el fori
            if (estudiantes.get(i).getDNI() == DNI){
                estudiantes.remove(i);
                return;
            }
        }
        System.out.println("Estudiante no encontrado");
    }

}
