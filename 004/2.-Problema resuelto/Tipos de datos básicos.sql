-- Usamos la base de datos.
USE wi520641_sqlserverya;
GO

-- Verificamos si existe y la eliminamos.
IF OBJECT_ID('libros') IS NOT NULL
	DROP TABLE libros;

-- Crear la tabla libros.
CREATE TABLE libros(
	titulo		VARCHAR(20),
	autor		VARCHAR(15),
	editorial	VARCHAR(10),
	precio		FLOAT,
	cantidad	INTEGER
);

-- Visualizar la estructura de la tabla.
SP_COLUMNS libros;

-- Ingresamos registros.
INSERT INTO libros (titulo, autor, editorial, precio, cantidad) VALUES ('El aleph', 'Borges', 'Emece', 25.50, 100);
INSERT INTO libros (titulo, autor, editorial, precio, cantidad) VALUES ('Matematica estas ahi', 'Paenza', 'Siglo XXI', 18.8, 200);

-- Visualizar todos los registrod de libros.
SELECT * FROM libros;

-- Error. Ingresar en titulo una cadena mayor a 20.
INSERT INTO libros (titulo, autor, editorial, precio, cantidad) VALUES ('Alicia en el pais de las maravillas', 'Lewis Carroll', 'Atlandida', 10, 200);

-- Acortar la cadena para permitir su registro.
INSERT INTO libros (titulo, autor, editorial, precio, cantidad) VALUES ('Alicia en el pais', 'Lewis Carroll', 'Atlandida', 10, 200);

-- Visualizar todos los registros.
SELECT * FROM libros;
