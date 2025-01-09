package POO.Poker;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class baraja {

    private String nombre;
    private List<carta> mazo;
    private List<Integer> cartasusadas;
    private int numcartas = 52; // no necesitamos constructor y lo definimos así para que la variable no cambie
    private String[] palos = {"C", "P", "T", "D"};
    private String[] numeros = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"};

    public baraja(String nombre) { // Constructor de la clase
        this.nombre = nombre;
        this.mazo = mazo != null ? mazo : new ArrayList<>(); // Inicializamos el mazo si es nulo
        this.cartasusadas = new ArrayList<>();

        for (int i = 0; i < numcartas; i++) {
            this.cartasusadas.add(0); // cartas no usadas tienen 52 ceros para iniciar el juego
        }

        for (String palo : this.palos) {
            // foreach para recorrer los palos
            for (String numero : this.numeros) {
                // Creamos las cartas
                carta carta = new carta(palo, numero);
                // Guardamos las cartas
                this.mazo.add(carta);
            }
        }
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public carta sacacarta() {
        int cartaleatoria = (int) Math.floor(Math.random() * mazo.size());

        while (cartasusadas.get(cartaleatoria).equals(1)) {
            // Mientras que ya se haya sacado una carta, se genera otro número para otra carta
            cartaleatoria = (int) Math.floor(Math.random() * mazo.size());
        }

        // Marcamos la carta como usada para cuando lo haga se quede marcada como usada
        cartasusadas.set(cartaleatoria, 1);
        return mazo.get(cartaleatoria);
    }

    @Override
    public String toString() {
        return "baraja{" +
                "nombre='" + nombre + '\'' +
                ", mazo=" + mazo +
                ", cartasusadas=" + cartasusadas +
                ", numcartas=" + numcartas +
                ", palos=" + Arrays.toString(palos) +
                ", numeros=" + Arrays.toString(numeros) +
                '}';
    }

    public List<carta> getMazo() {
        return mazo;
    }
}
