package POO.pokemon;

import java.util.Arrays;

public class pokemon {
    //Atributos del objeto pokemon
    private String nombre;

    private String tipo;

    private int vida;

    private String color;

    private int[] potencia = new int[4];

    private String[] ataques = new String[4];

    //Constructor de pokemones
    public void pokemon(){

    }

    public pokemon(String nombre, String tipo, int vida, String color, int[] potencia, String[] ataques) {
        //this llama aun objeto definido arriva
        this.nombre = nombre;
        this.tipo = tipo;
        this.vida = vida;
        this.color = color;
        this.potencia = potencia;
        this.ataques = ataques;

    }

    //se genera solo al clicar en generate... getter and setter y el toString()

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public int getVida() {
        return vida;
    }

    public void setVida(int vida) {
        this.vida = vida;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public int[] getPotencia() {
        return potencia;
    }

    public void setPotencia(int[] potencia) {
        this.potencia = potencia;
    }

    public String[] getAtaques() {
        return ataques;
    }

    public void setAtaques(String[] ataques) {
        this.ataques = ataques;
    }

    @Override
    public String toString() {
        return "pokemon{" +
                "nombre='" + nombre + '\'' +
                ", tipo='" + tipo + '\'' +
                ", vida=" + vida +
                ", color='" + color + '\'' +
                ", potencia=" + Arrays.toString(potencia) +
                ", ataques=" + Arrays.toString(ataques) +
                '}';
    }
}