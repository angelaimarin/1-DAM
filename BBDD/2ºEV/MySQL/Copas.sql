-- Crear base de datos
CREATE DATABASE copas;

USE copas;

-- Crear tabla pedido
CREATE TABLE pedido (
    proveedor VARCHAR(45),  -- Corregido: "provedor" a "proveedor"
    idlocal INT,
    idbebidas INT,
    nºbotellas INT
);

INSERT INTO pedido (proveedor, idlocal, idbebidas, nºbotellas)
VALUES 
("Bebidas alcohólicas", 1, 1, 10),
("Bebidas no alcohólicas", 2, 2, 20),
("Comida", 3, 3, 30),
("Equipamiento", 4, 4, 40),
("Otros", 5, 5, 50);

-- Crear tabla consumidas
CREATE TABLE consumidas (
    idlocal INT PRIMARY KEY,
    idbebidas INT,
    nºbotellas INT,
    proveedor VARCHAR(45)
);

INSERT INTO consumidas (idlocal, idbebidas, nºbotellas, proveedor)
VALUES 
(1, 1, 10, "Bebidas alcohólicas"),
(2, 2, 20, "Bebidas no alcohólicas"),
(3, 3, 30, "Comida"),
(4, 4, 40, "Equipamiento"),
(5, 5, 50, "Otros");

-- Crear tabla bebidas
CREATE TABLE bebidas (
    precioporbotella INT,
    alcohol VARCHAR(45),
    idbebidas INT,
    proveedor VARCHAR(45)
);

INSERT INTO bebidas (precioporbotella, alcohol, idbebidas, proveedor)
VALUES 
(10, "Bebidas alcohólicas", 1, "Bebidas alcohólicas"),
(20, "Bebidas no alcohólicas", 2, "Bebidas no alcohólicas"),
(30, "Comida", 3, "Otros"),
(40, "Equipamiento", 4, "Otros"),
(50, "Otros", 5, "Otros");

-- Crear tabla empleados
CREATE TABLE empleados (
    antiguedad INT,
    idempleado INT PRIMARY KEY,
    sueldo INT,
    datospersonales VARCHAR(45),
    tiempotrabajado INT,
    idlocal INT
);

INSERT INTO empleados (antiguedad, idempleado, sueldo, datospersonales, tiempotrabajado, idlocal)
VALUES 
(1, 1, 1500, "Juan Pérez", 1, 1),
(5, 2, 1700, "María López", 5, 2),
(12, 3, 1900, "Carlos Díaz", 12, 3),
(24, 4, 2000, "Ana García", 24, 4),
(60, 5, 2500, "Luis Gómez", 60, 5);

-- Crear tabla localescomerciales
CREATE TABLE localescomerciales (
    categorias VARCHAR(45),
    nombre VARCHAR(45),
    facturacion INT,
    bebidasconsumidas INT,
    encargado VARCHAR(45),
    idencargado INT,
    discoteca VARCHAR(45),
    pub VARCHAR(45),
    terraza VARCHAR(45),
    cafe VARCHAR(45),
    horacierre TIME,  
    karaoke VARCHAR(45),
    impuestomensual INT
);

INSERT INTO localescomerciales (categorias, nombre, facturacion, bebidasconsumidas, encargado, idencargado, discoteca, pub, terraza, cafe, karaoke, impuestomensual, horacierre)
VALUES 
("Discoteca", "Disco Night", 50000, 10000, "Juan Pérez", 1, "Sí", "No", "No", "No", "Sí", 5000, "04:00"),
("Pub", "Pub Relax", 30000, 70, "María López", 2, "No", "Sí", "Sí", "No", "No", 3000, "03:00"),
("Terraza", "Terraza Sol", 20000, 50, "Carlos Díaz", 3, "No", "No", "Sí", "No", "No", 2000, "02:00"),
("Café", "Café Aroma", 15000, 30, "Ana García", 4, "No", "No", "No", "Sí", "No", 1500, "11:00"),
("Karaoke", "SingStar", 40000, 90, "Luis Gómez", 5, "No", "No", "No", "No", "Sí", 4000, "01:00");

-- Primer ejercicio: listar las horas de cierre con los locales sin que se repitan y sin columnas vacias
SELECT DISTINCT nombre, horacierre
FROM localescomerciales;

-- Ejercicio 2
SELECT datospersonales AS DNI
FROM empleados
WHERE idlocal IN (
    SELECT idlocal
    FROM localescomerciales
    WHERE categorias = 'Discoteca'
);
-- Ejercicio 3
SELECT nombre
FROM localescomerciales
WHERE bebidasconsumidas > 1000;

-- Ejercicio 4
SELECT DISTINCT idbebidas, alcohol
FROM bebidas
WHERE idbebidas IN (
    SELECT idbebidas
    FROM pedido
);

-- Ejercicio 5
SELECT DISTINCT nombre, facturacion
FROM localescomerciales
WHERE categorias = 'Karaoke';

-- Ejercicio 6
