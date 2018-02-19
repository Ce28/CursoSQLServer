-- Problema 1-------------------------------------------------------------------------------
-- Usamos la base de datos.
USE wi520641_sqlserverya;
GO

-- Eliminar la tabla agenda si existe.
IF OBJECT_ID('agenda') IS NOT NULL
	DROP TABLE agenda;

-- Crear la tabla agenda.
CREATE TABLE agenda(
	apellido	VARCHAR(30),
	nombre		VARCHAR(20),
	domicilio	VARCHAR(30),
	telefono	VARCHAR(11)
);

-- Verificar si esta la tabla.
SP_TABLES @TABLE_OWNER = 'dbo';

-- Visualizar la estructura de la tabla.
SP_COLUMNS agenda;

-- Insertar registros.
INSERT INTO agenda (apellido, nombre, domicilio, telefono) VALUES ('Sapien', 'Christian', 'Miguel Barragan', '6671433253');
INSERT INTO agenda (apellido, nombre, domicilio, telefono) VALUES ('Zazueta', 'Melissa', '5 de febrero', '6671274528');

-- Visualizamos los registros de la tabla.
SELECT * FROM agenda;

-- Eliminar la tabla agenda.
DROP TABLE agenda;

-- Eliminar nuevamente la tabla.
DROP TABLE agenda;

-- Problema 2-------------------------------------------------------------------------------
-- Usamos la base de datos.
USE wi520641_sqlserverya;
GO

-- Verificar y eliminar la tabla.
IF OBJECT_ID('libros') IS NOT NULL
	DROP TABLE libros;

-- Crear la tabla libros.
CREATE TABLE libros(
	titulo		VARCHAR(20),
	autor		VARCHAR(30),
	editorial	VARCHAR(15)
);

-- Visualizar las tablas existentes.
SP_TABLES @TABLE_OWNER = 'dbo';

-- Visualizar la estructura de la tabla libros.
SP_COLUMNS libros;

-- Ingresar registros.
INSERT INTO libros (titulo, autor, editorial) VALUES ('El aleph', 'Borges', 'Planeta');
INSERT INTO libros (titulo, autor, editorial) VALUES ('Martin Fierro', 'Jose Hernandez', 'Emece');
INSERT INTO libros (titulo, autor, editorial) VALUES ('Aprenda PHP', 'Mario Molina', 'Emece');

-- Mostrar todos los registros.
SELECT * FROM libros;