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

INSERT INTO equipos (cod_equipos)
select cod from invent ;

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
-- INNER JOIN comparten dos tablas la misma FK
select b.nombre, e.nombre from bombero b
JOIN equipos e ON b.cod_equipo = e.cod_equipo;
-- LEFT JOIN saca los atributos de la tabla contraria
select b.nombre, e.nombre from bombero b
LEFT JOIN equipos e ON b.cod_equipo = e.cod_equipo;
-- RIGHT JOIN adquiere los atributos de la tabla contraria
select b.nombre, e.nombre, e.cod_equipo from bombero b
RIGHT JOIN equipos e ON b.cod_equipo = e.cod_equipo;
-- CROSS JOIN Las dos tablas comparten todos los atributos de la contraria
-- SELF JOIN 
-- FULL OUTER TIME Si tienen los mismos atributos no se añaden a otra tabla o no los muestra
-- Utilizacion diferentes JOIN
select pa.nombre, pet.* from parque pa 
JOIN peticiones pe ON pa.idParque = pe.idParque
JOIN petición pet ON pe.idPetición = pet.idPetición;
-- UNION 
select * from bombero where idParque = 1
UNION
select * from bombero where idParque = 2;
-- COUNT
select count(*) 'Nº de bomberos', p.Nombre Nombre_Parque
from bombero b
join parque p ON b.idParque = p.idParque
group by b.idParque;
-- HAVING
select count(idBombero) as bomberos, p.Nombre Nombre_Parque
from bombero b
join parque p ON b.idParque = p.idParque
group by b.idParque
having bomberos > 37
order by bomberos;
-- IN 
select nombre, apellidos from bombero
where idParque IN (1,2,5);

select nombre, apellidos,idParque 
from bombero
where idParque IN (
	select idParque from parque
    where categoria like '%ivo');

select b.nombre, apellidos,p.nombre
from bombero b 
join parque p ON b.idParque = p.idParque
where b.idParque IN (
	select idParque from parque
    where categoria like '%tura%');
-- EXISTS
select nombre from bombero
where EXISTS (select * from parque where idParque > 200);
-- ANY
select nombre 
from bombero
where nombre = ANY (select nombre from parque where idParque > 200);
-- DISTINT
SELECT DISTINCT(DNI) from bombero;
-- NOT LIKE
select cod_equipo from bombero where DNI = "24681357D";
select DNI from bombero where cod_equipo = 4 and DNI NOT LIKE "24681357D";

-- EJERCICIO BOMBEROS
select nombre from bombero where idTurno = 2;

select Direccion from parque;
select distinct (direccion) from parque where idparque in(select distinct(idparque) from peticiones where idpetición != 50);
select distinct(idparque) from peticiones where idpetición != 50 ;
select idpetición from petición where DATE (fechayhora) = "2024-11-20";

-- EQUIPOS QUE NO TRABAJAN

select * from equipos where cod_equipo not in(select distinct (cod_equipo) from petición);

select idPetición from petición where urgencia = "Alta";
select * from petición pe
join peticiones pet on pe.idPetición = pet.idPetición
join parque pa on pet.idParque = pa.idParque
where pe.urgencia = "Alta" and pa.Nombre = "Parque de Atracciones";