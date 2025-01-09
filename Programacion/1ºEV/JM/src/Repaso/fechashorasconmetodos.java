package Repaso;
import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.Month;

public class fechashorasconmetodos {
    public static void main(String[] args){
                int horasemana = 40;
                // Puedes ajustar esto si es diferente

                LocalDate fechainicio = LocalDate.of(2024, Month.SEPTEMBER, 23);
                System.out.println("El curso inició en: " + fechainicio);
                LocalDate fechafin = LocalDate.of(2025, Month.JUNE, 18);
                System.out.println("El curso terminará en: " + fechafin);

                long diasLaborables = contarDiasLaborables(fechainicio, fechafin);
                System.out.println("Días laborables entre las dos fechas: " + diasLaborables);

                long horasLaborables = (diasLaborables * horasemana) / 5; // 5 días laborables en una semana
                System.out.println("Horas laborables entre las dos fechas: " + horasLaborables);
            }

            public static long contarDiasLaborables(LocalDate fechainicio, LocalDate fechafin) {

                    long diasLaborables = 0;
                    LocalDate fecha = fechainicio;

                    while (!fecha.isAfter(fechafin)) {
                    DayOfWeek diaSemana = fecha.getDayOfWeek();

                    if (diaSemana != DayOfWeek.SATURDAY && diaSemana != DayOfWeek.SUNDAY) {
                        diasLaborables++;
                    }
                    fecha = fecha.plusDays(1);
                }
                return diasLaborables;
            }
        }
