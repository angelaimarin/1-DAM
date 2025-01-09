create database Bomberos;

use Bomberos;


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
VALUES ("Alejandro Gómez Martín", "+34638590648", "C/Mi casa");

-- Añadir primary key
ALTER TABLE prueba1 ADD PRIMARY KEY(nombre_apellidos);

-- Update
UPDATE prueba1
set tlf = "+12435678765"
where nombre_apellidos = "Alejandro Gómez Martín";

-- DELETE

DELETE from prueba1 where nombre_apellidos = "Alejandro Gómez Martín";

-- DROP
DROP TABLE prueba1;

-- DROP DATABASE
DROP DATABASE bomberos;

-- __________FIN_DE_LO_QUE_ENTRA_____________ --

-- SELECT
select * from bombero;
select * from equipos where nombre REGEXP "re(s|c)" 
ORDER BY cod_equipo
LIMIT 10;

select MAX(cod_equipo)
from bombero;

select * from bombero;
select COUNT(idBombero)
from bombero
where cod_equipo = 1;

-- Ejemplo sacar la media --
-- select AVG(nota --
-- from examenes --
-- where cod_asignatura = 2 --

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

select * from bombero where cod_equipo = 50;
-- nombre de parque, * peticion 
select pa.nombre, pet.* from parque pa
join peticiones pe ON pa.idParque = pe.idParque

join petición pet ON pe.idPetición = pet.idPetición; 

select * from peticiones order by idParque;

select * from bombero where idParque = 1
UNION 
select * from bombero where idParque = 2;

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
select distinct(cod_equipo) from equipos;

-- DNI 24681357D
-- otros DNI
-- del mismo equipo
select DNI from bombero where cod_equipo = 2
AND DNI not like "87654321B"
;

select cod_equipo from bombero where DNI = "24681357D";

-- Listar todos los nombres de bombero que esten trabajando hoy en el turno =  TARDE.
select nombre from bombero -- Nombre de bombero (nombre y nada mas) Bombero (todos los campos)
where idTurno = 2 and fec_ini_turno = "2024-01-01";

-- Listar la dirección de los parques que no trabajaron ayer.( que no tuvieron ningún aviso)
select distinct (direccion) from parque where idparque in(select distinct (idparque) from peticiones where idPetición != 50);

select direccion from parque where idParque not in (select idParque from peticiones where idPetición in
(select idPetición from petición where fechayhora like "2024-11-20%")
); 

-- Listar los equipos que no han trabajado nunca.
select * from equipos where cod_equipo not in (select cod_equipo from petición);

-- Listar las peticiones de servicio de gravedad ALTA recibidas por el parque de bomberos  “ Parque Central”

select * from peticiones;
select * from petición;
select idPetición from petición where urgencia = 'Alta';
select * from petición pe
join peticiones pet ON pe.idPetición = pet.idPetición
join parque pa ON pet.idParque = pa.idParque
where pa.Nombre = 'Parque Ecologico'
AND pe.urgencia = 'Alta';

-- Listar los nombres de los equipos del parque de bomberos “ VALMOJADO” en valmojado no hay nada por lo q hemos puesto parque central

select e.nombre from equipos e
join bombero b on e.cod_equipo = b.cod_equipo
join parque p on b.idParque = p.idParque
where p.Nombre = 'Parque Central';








