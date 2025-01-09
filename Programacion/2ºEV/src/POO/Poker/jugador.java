package POO.Poker;

import java.awt.*;
import java.util.LinkedList;

public class jugador {
    private  String nombre;
    private int dinero;
    private LinkedList<carta> mano;

    public jugador(String nombre, int dinero) {
        this.nombre = nombre;
        this.dinero = dinero;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getDinero() {
        return dinero;
    }

    public void setDinero(int dinero) {
        this.dinero = dinero;
    }

    public LinkedList<carta> getMano() {
        return mano;
    }

    public void setMano(LinkedList<carta> mano) {
        this.mano = mano;
    }

    @Override
    public String toString() {
        return "jugador{" +
                "nombre='" + nombre + '\'' +
                ", dinero=" + dinero +
                ", mano=" + mano +
                '}';
    }
}
