package POO.Poker;

public class carta {
    private String palo;
    private String numero;

    //generate contructor
    public carta(String palo, String numero) {
        this.palo = palo;
        this.numero = numero;
    }

    //generate get y set
    public String getPalo() {
        return palo;
    }

    public void setPalo(String palo) {
        this.palo = palo;
    }

    public String getNumero() {
        return numero;
    }

    public String setNumero(String numero) {
        this.numero = numero;
        return numero;
    }

    @Override //generate to string
    public String toString() {
        return numero + ' ' + palo;
    }


}
