-- Problema 1-------------------------------------------------------------------------------
-- Usamos la base de datos.
USE wi520641_sqlserverya;
GO

-- Verificar si existe la tabla y borrarla
IF OBJECT_ID('peliculas') IS NOT NULL
	DROP TABLE peliculas;

-- Crear la tabla peliculas.
CREATE TABLE peliculas(
	nombre		VARCHAR(20),
	actor		VARCHAR(20),
	duracion	INTEGER,
	cantidad	INTEGER
);

-- Ver la estructura de la tabla.
SP_COLUMNS peliculas;

--Ingresar registros.
INSERT INTO peliculas (nombre, actor, duracion, cantidad) VALUES ('Mision imposible', 'Tom Cruise', 128, 3);
INSERT INTO peliculas (nombre, actor, duracion, cantidad) VALUES ('Mision imposible 2', 'Tom Cruise', 130, 2);
INSERT INTO peliculas (nombre, actor, duracion, cantidad) VALUES ('Mujer bonita', 'Julia Roberts', 118, 3);
INSERT INTO peliculas (nombre, actor, duracion, cantidad) VALUES ('Elsa y Fred', 'China Zorrilla', 110, 2);

-- Mostrar todos los registros.
SELECT * FROM peliculas;

-- Problema 2-------------------------------------------------------------------------------
-- Usamos la base de datos.
USE wi520641_sqlserverya;
GO

-- Verificar si existe la tabla y eliminarla.
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

-- Ver la estructura de la tabla.
SP_COLUMNS empleados;

-- Ingresar registros.
INSERT INTO empleados (nombre, documento, sexo, domicilio, sueldobasico) VALUES ('Christian Sapien', '22333444', 'm', 'Miguel Barragan', 500);
INSERT INTO empleados (nombre, documento, sexo, domicilio, sueldobasico) VALUES ('Melissa Zazueta', '22333445', 'f', '5 de febrero', 600);
INSERT INTO empleados (nombre, documento, sexo, domicilio, sueldobasico) VALUES ('Karolina Meza', '22333446', 'f', 'Barrancos', 550);

-- Mostrar todos los registros.
SELECT * FROM empleados;