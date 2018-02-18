-- Problema 1-------------------------------------------------------------------------------
-- Usamos la base de datos.
USE wi520641_sqlserverya;
GO

-- Verificamos si existe la tabla y la eliminamos.
IF OBJECT_ID('agenda') IS NOT NULL
	DROP TABLE agenda;
	
-- Crear la tabla.
CREATE TABLE agenda(
	apellido	VARCHAR(30),
	nombre		VARCHAR(20),
	domicilio	VARCHAR(30),
	telefono	VARCHAR(11)
);

-- Visualizamos las tablas existentes.
SP_TABLES @TABLE_OWNER = 'dbo';

-- Visualizar las columnas.
SP_COLUMNS agenda;

-- Eliminar la tabla.
IF OBJECT_ID('agenda') IS NOT NULL
	DROP TABLE agenda;


-- Problema 2-------------------------------------------------------------------------------
-- Usamos la base de datos.
USE wi520641_sqlserverya;
GO

-- Verificamos si existe la tabla y la eliminamos.
IF OBJECT_ID('libros') IS NOT NULL
	DROP TABLE libros;

-- Verificar si la tabla existe.
SP_TABLES @TABLE_OWNER = 'dbo';

-- Crear la tabla libros.
CREATE TABLE libros(
	titulo		VARCHAR(20),
	autor		VARCHAR(30),
	editorial	VARCHAR(15)
);

-- Verificar si la tabla existe.
SP_TABLES @TABLE_OWNER = 'dbo';

-- Visulizar la estructura de la tabla.
SP_COLUMNS libros;

-- Eliminar la tabla libros.
IF OBJECT_ID('libros') IS NOT NULL
	DROP TABLE libros;