        package POO.estudiantes;

// Clase principal
public class principal {
    public static void main(String[] args) {
        escuela CES = new escuela("Escuela Nacional Superior Técnica");

        estudiante alumno1 = new estudiante("Juan", "+3403655525", "1ºDAM","5848518B",20 );
        estudiante alumno2 = new estudiante("Maria", "+345544055", "2ºDAM", "9585525X",19);

        CES.agregarEstudiante(alumno1);
        CES.agregarEstudiante(alumno2);

        System.out.println("Escuela Nacional Superior Técnica");
        System.out.println("Lista de alumnos");
        System.out.println("---------------------------------");

        CES.imprimirEstudiantes();
        //CES. es una variable que nos permite llamar a las clases creadas

    }
}