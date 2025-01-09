package Repaso;
import java.util.Scanner;

public class fechasbisiestoentreaños{
    public static void main(String[] args){
        int total_dias;
        //int total_horas;
        // int[] mes1 = {0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
        Scanner dif = new Scanner(System.in);
        System.out.println("introduzca el primer dia: ");
        int dia1 = dif.nextInt();
        System.out.println("introduzca el primer mes: ");
        int mes1 = dif.nextInt();
        System.out.println("introduzca el primer año: ");
        int año1 = dif.nextInt();

        System.out.println("introduzca el segundo dia: ");
        int dia2 = dif.nextInt();
        System.out.println("introduzca el segundo mes: ");
        int mes2 = dif.nextInt();
        System.out.println("introduzca el segundo año: ");
        int año2 = dif.nextInt();

        if (año1 % 4 == 0 && año1 % 100 != 0){
            total_dias = dia2-dia1+30*(mes2-mes1)+366*(año2-año1);
            System.out.println("El año " + año1 + " es bisiesto.");
        }
        else {
            total_dias = dia2-dia1+30*(mes2-mes1)+365*(año2-año1);
            System.out.println("El año " + año1 + " no es bisiesto.");
        }

        if (año2 % 4 == 0 && año2 % 100 != 0){
            total_dias = dia2-dia1+30*(mes2-mes1)+366*(año2-año1);
            System.out.println("El año " + año2 + " es bisiesto.");
        }
        else {
            total_dias = dia2-dia1+30*(mes2-mes1)+365*(año2-año1);
            System.out.println("El año " + año2 + " no es bisiesto.");
        }

        System.out.println("El total de días son: "+total_dias);

    }

}



       /*LocalDate fechaHoy = LocalDate.now();
        LocalDate fecha = LocalDate.of(2024, Month.JUNE, 17);
        int meses[] = {0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
        int mesesb[] = {0, 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
        LocalDate fechaIni = LocalDate.of (2017, Month.SEPTEMBER,26);
        LocalDate fechaFin = LocalDate.of (2024, Month.JUNE, 17);

        System.out.println("Este año " + fechaIni.getYear() + " es bisiesto?: "  );

    }
}


//Hace dos días
//diaSemana = diaSemana.minus(2);

        get añoIni-1 = 7*365
        get año fechaFin-1
        Meses del año de inicio
        get mes (FechaIni-1) -12 = 4 (30+31+30+31)
        Dias del mes inicio
        ---------------------------
        31 = mes de inicio del array
        31 - get dias fechaIni + get dias fechaFin
       */