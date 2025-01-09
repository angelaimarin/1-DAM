package Repaso;
import java.time.*;

public class fechas {
    public static void main (String[]args){
        // La fecha de hoy
        LocalDate fechaHoy = LocalDate.now();
        System.out.println(fechaHoy);
// Una fecha concreta
        LocalDate fecha = LocalDate.of(2018, Month.NOVEMBER, 26);
        System.out.println(fecha);      // 2018-11-26

        DayOfWeek dia = fecha.getDayOfWeek();
        Month mes = fecha.getMonth();
        System.out.println("Dia: "+dia+" Mes: "+mes);
        int diaDelMes = fecha.getDayOfMonth();
        int numeroMes = fecha.getMonthValue();
        int numeroAno = fecha.getYear();
        System.out.println(diaDelMes+"-"+numeroMes+"-"+numeroAno);

        LocalTime ahora = LocalTime.now();

        int hora = ahora.getHour();
        int minutos = ahora.getMinute();
        //int segundos = ahora.getSecond();
        int restante=0;

        if ( hora==14 ){
            restante=30-minutos;
            System.out.println("Te quedan "+restante+" minutos para salir");

        }
        // Podemos almacenar un día de la semana
        DayOfWeek diaSemana = fechaHoy.getDayOfWeek();

        // El día siguiente
        diaSemana = diaSemana.plus(1);
        System.out.println("Tomorrow will be "+diaSemana);
        // Hace dos días
        diaSemana = diaSemana.minus(2);

        
    }
}

