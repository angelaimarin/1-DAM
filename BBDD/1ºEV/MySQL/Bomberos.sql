create database bomberos;

use bomberos;


create table prueba1 (
    nombre varchar(45),
    apellido  varchar(45),
    tlf varchar(25)
);
-- añadir columna
alter table prueba1
add direccion  varchar(45);

-- borrar columna
alter table prueba1
drop column apellido;

-- renombrar una columna
alter table prueba1
CHANGE nombre nombre_apellidos varchar(45);

-- CAMBIAR TIPO DE DATO
alter table prueba1
CHANGE nombre_apellidos nombre_apellidos varchar(48);

-- INSERT
INSERT INTO prueba1 (nombre_apellidos, tlf, direccion)
VALUES ("Angela Isabel Marin", "+34638590648", "C/Mi casa");

-- Añadir primary key
ALTER TABLE prueba1 ADD PRIMARY KEY(nombre_apellidos);

-- Update
UPDATE prueba1
set tlf = "+12435678765"
where nombre_apellidos = "Angela Isabel Marin";

-- DELETE
DELETE from prueba1 where nombre_apellidos = "Alejandro Gómez Martín";

-- DROP
DROP TABLE prueba1;

-- __________FIN_DE_LO_QUE_ENTRA_____________ --

-- SELECT
select * from prueba1;
select * from bombero;
select * from equipos where nombre LIKE "Equipo de_%";
select * from equipos where nombre REGEXP "re(s|c)" AND cod_equipo > 20 ORDER BY cod_equipo DESC;
-- OR cod_equipo > 20  ORDER BY nombre ;
-- NOT cod_equipo > 20  ORDER BY cod_equipo;
-- LIMITAR
select * from equipos ORDER BY cod_equipo LIMIT 10;
-- MINIMO DE NUMERO DE EQUIPO
select MIN(cod_equipo) from bombero;
-- MAXIMO DE NUMERO DE EQUIPO
select MAX(cod_equipo) from bombero;
-- CONTAR ELEMENTOS
select * from bomberos;
select COUNT(idBombero) from bombero where cod_equipo = 1;
-- MEDIA Ejemplo
-- select * from peticiones;
-- select AVG(nota) from examenes where cod_asignatura = 2;
-- SUMA TODOS LOS ID
select SUM(idParque) from bombero;
-- CONCADENACION
select * from bombero where nombre in (select nombre from bombero where cod_equipo = 1);
-- BETWEEN
select * from bombero where cod_equipo BETWEEN 2 AND 5 order by cod_equipo;
select * from bombero where cod_equipo BETWEEN 2 AND 5 order by cod_equipo,idBombero;
-- ALIAS 
select * from bombero AS b where cod_equipo between 2 and 5 and b.nombre = 'Angela';
select Nombre,Apellidos,Fec_Nac AS Fecha_Nacimiento,Cod_Equipo from bombero where cod_equipo between 2 and 5;

