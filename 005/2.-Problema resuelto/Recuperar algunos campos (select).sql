-- Usamos la base de datos.
USE wi520641_sqlserverya;
GO

-- Verificamos si existe la tabla y la eliminamos.
IF OBJECT_ID('libros') IS NOT NULL
	DROP TABLE libros;

-- Creamos la tabla libros.
CREATE TABLE libros(
	titulo		VARCHAR(40),
	autor		VARCHAR(30),
	editorial	VARCHAR(15),
	precio		FLOAT,
	cantidad	INTEGER
);

-- Visualizar la estructura de la tabla.
SP_COLUMNS libros;

-- Ingresamos registros.
INSERT INTO libros (titulo, autor, editorial, precio, cantidad) VALUES ('El aleph', 'Borges', 'Emece', 25.50, 100);
INSERT INTO libros (titulo, autor, editorial, precio, cantidad) VALUES ('Alicia en el pais de las maravillas', 'Lewis Carroll', 'Atlantida', 10, 200);
INSERT INTO libros (titulo, autor, editorial, precio, cantidad) VALUES ('Matematicaesta ahi', 'Paenza', 'Siglo XXI', 18.8, 200);

-- Visualizamos todos los registros.
SELECT * FROM libros;

-- Visualizar solo titulo, autor y editorial.
SELECT titulo, autor, editorial FROM libros;

-- Visualizar solo titulo y precio.
SELECT titulo, precio FROM libros;

-- Visualizar solo editorial y cantidad.
SELECT editorial, cantidad FROM libros;
