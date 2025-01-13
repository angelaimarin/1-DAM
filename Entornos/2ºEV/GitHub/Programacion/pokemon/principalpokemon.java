package POO.pokemon;

import java.util.Scanner;

public class principalpokemon {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int [] potenciaPika={50,40,80,15};
        String[] ataquePika={"ImpactTrueno","Rayo","Trueno","Curacion"};
        pokemon pikachu= new pokemon("Pikachu","Electrico",100,"amarillo",potenciaPika,ataquePika);
        //llama al constructor y va segun el orden del pokemon.java = constructor

        int [] potenciaSquirtle={45,30,70,25};
        String[] ataqueSquirtle={"PistolaAgua","Acuajet","Acuacola","Curacion"};
        pokemon Squirtle= new pokemon("Squirtle","Agua",100,"azul",potenciaSquirtle,ataqueSquirtle);


        System.out.println(pikachu.getNombre()+" VS " + Squirtle.getNombre());
        if(pikachu.getPotencia()[0]<Squirtle.getPotencia()[0]){
            pikachu.setVida(pikachu.getVida()-(Squirtle.getPotencia()[0])-pikachu.getPotencia()[0]);
        }
        else {
            Squirtle.setVida(Squirtle.getVida()-(pikachu.getPotencia()[0]-Squirtle.getPotencia()[0]));
        }
        System.out.println(pikachu.getNombre()+":"+pikachu.getVida());
        System.out.println(Squirtle.getNombre()+":"+Squirtle.getVida());
        System.out.println("⠸⣷⣦⠤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣠⣤⠀⠀⠀\n" +
                "⠀⠙⣿⡄⠈⠑⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠔⠊⠉⣿⡿⠁⠀⠀⠀\n" +
                "⠀⠀⠈⠣⡀⠀⠀⠑⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⠊⠁⠀⠀⣰⠟⠀⠀⠀⣀⣀\n" +
                "⠀⠀⠀⠀⠈⠢⣄⠀⡈⠒⠊⠉⠁⠀⠈⠉⠑⠚⠀⠀⣀⠔⢊⣠⠤⠒⠊⠉⠀⡜\n" +
                "⠀⠀⠀⠀⠀⠀⠀⡽⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠩⡔⠊⠁⠀⠀⠀⠀⠀⠀⠇\n" +
                "⠀⠀⠀⠀⠀⠀⠀⡇⢠⡤⢄⠀⠀⠀⠀⠀⡠⢤⣄⠀⡇⠀⠀⠀⠀⠀⠀⠀⢰⠀\n" +
                "⠀⠀⠀⠀⠀⠀⢀⠇⠹⠿⠟⠀⠀⠤⠀⠀⠻⠿⠟⠀⣇⠀⠀⡀⠠⠄⠒⠊⠁⠀\n" +
                "⠀⠀⠀⠀⠀⠀⢸⣿⣿⡆⠀⠰⠤⠖⠦⠴⠀⢀⣶⣿⣿⠀⠙⢄⠀⠀⠀⠀⠀⠀\n" +
                "⠀⠀⠀⠀⠀⠀⠀⢻⣿⠃⠀⠀⠀⠀⠀⠀⠀⠈⠿⡿⠛⢄⠀⠀⠱⣄⠀⠀⠀⠀\n" +
                "⠀⠀⠀⠀⠀⠀⠀⢸⠈⠓⠦⠀⣀⣀⣀⠀⡠⠴⠊⠹⡞⣁⠤⠒⠉⠀⠀⠀⠀⠀\n" +
                "⠀⠀⠀⠀⠀⠀⣠⠃⠀⠀⠀⠀⡌⠉⠉⡤⠀⠀⠀⠀⢻⠿⠆⠀⠀⠀⠀⠀⠀⠀\n" +
                "⠀⠀⠀⠀⠀⠰⠁⡀⠀⠀⠀⠀⢸⠀⢰⠃⠀⠀⠀⢠⠀⢣⠀⠀⠀⠀⠀⠀⠀⠀\n" +
                "⠀⠀⠀⢶⣗⠧⡀⢳⠀⠀⠀⠀⢸⣀⣸⠀⠀⠀⢀⡜⠀⣸⢤⣶⠀⠀⠀⠀⠀⠀\n" +
                "⠀⠀⠀⠈⠻⣿⣦⣈⣧⡀⠀⠀⢸⣿⣿⠀⠀⢀⣼⡀⣨⣿⡿⠁⠀⠀⠀⠀⠀⠀\n" +
                "⠀⠀⠀⠀⠀⠈⠻⠿⠿⠓⠄⠤⠘⠉⠙⠤⢀⠾⠿⣿⠟⠋");
    }

}
