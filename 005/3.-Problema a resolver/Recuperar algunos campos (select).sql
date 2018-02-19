-- Problema 1-------------------------------------------------------------------------------
-- Usamos la base de datos.
USE wi520641_sqlserverya;
GO

-- Verificar si existe la tabla y borrarla
IF OBJECT_ID('peliculas') IS NOT NULL
	DROP TABLE peliculas;

-- Crear la tabla peliculas.
CREATE TABLE peliculas(
	titulo varchar(20),
	actor varchar(20),
	duracion integer,
	cantidad integer
);

-- Ver la estructura de la tabla.
SP_COLUMNS peliculas;

--Ingresar registros.
INSERT INTO peliculas (titulo, actor, duracion, cantidad) VALUES ('Mision imposible', 'Tom Cruise', 128, 3);
INSERT INTO peliculas (titulo, actor, duracion, cantidad) VALUES ('Mision imposible 2', 'Tom Cruise', 130, 2);
INSERT INTO peliculas (titulo, actor, duracion, cantidad) VALUES ('Mujer bonita', 'Julia Roberts', 118, 3);
INSERT INTO peliculas (titulo, actor, duracion, cantidad) VALUES ('Elsa y Fred', 'China Zorrilla', 110, 2);

-- Visualizar titulo y actor
SELECT titulo, actor FROM peliculas;

-- Visualizar titulo y cantidad.
SELECT titulo, cantidad FROM peliculas;

-- Problema 2-------------------------------------------------------------------------------
-- Usamos la base de datos.
USE wi520641_sqlserverya;
GO

-- Verificar si existe la tabla y borrarla
IF OBJECT_ID('empleados') IS NOT NULL
	DROP TABLE empleados;

-- Crear la tabla empleados.
CREATE TABLE empleados(
	nombre			VARCHAR(20),
	documento		VARCHAR(8),
	sexo			VARCHAR(1),
	domicilio		VARCHAR(30),
	sueldobasico	FLOAT
);

-- Visualizar la estructura.
SP_COLUMNS empleados;

-- Insertar registros.
 INSERT INTO empleados (nombre, documento, sexo, domicilio, sueldobasico) VALUES ('Juan Juarez','22333444','m','Sarmiento 123',500);
 INSERT INTO empleados (nombre, documento, sexo, domicilio, sueldobasico) VALUES ('Ana Acosta','27888999','f','Colon 134',700);
 INSERT INTO empleados (nombre, documento, sexo, domicilio, sueldobasico) VALUES ('Carlos Caseres','31222333','m','Urquiza 479',850);

 -- Mostrar todos los datos del empleado.
 SELECT * FROM empleados;

 -- Mostrar el nombre, documento y domicilio.
 SELECT nombre, documento, domicilio FROM empleados;

 -- Mostrar el documento, sexo y sueldo basico.
 SELECT documento, sexo, sueldobasico FROM empleados;
