package POO.estudiantes;

public class estudiante {
    private String nombre;
    private String telefono;
    private String curso;
    private String DNI;
    private int edad;

    public estudiante(String nombre, String telefono, String curso, String DNI, int edad) {
        this.nombre = nombre;
        this.telefono = telefono;
        this.curso = curso;
        this.DNI = DNI;
        this.edad = edad;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getCurso() {
        return curso;
    }

    public void setCurso(String curso) {
        this.curso = curso;
    }

    public String getDNI() {
        return DNI;
    }

    public void setDNI(String DNI) {
        this.DNI = DNI;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    @Override
    public String toString() {
        return "estudiante{" +
                "nombre='" + nombre + '\'' +
                ", telefono='" + telefono + '\'' +
                ", curso='" + curso + '\'' +
                ", DNI='" + DNI + '\'' +
                ", edad=" + edad +
                '}';
    }
}
//constructor + getter and setter + tostring(cuando lo haces es el overide)

