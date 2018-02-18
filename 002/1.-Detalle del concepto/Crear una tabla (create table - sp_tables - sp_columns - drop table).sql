-- Crear una base de datos.
CREATE DATABASE wi520641_sqlserverya;


-- Muestra las tablas creadas por el usuario dentro de una base de datos seleccionada.
SP_TABLES @table_owner = 'dbo';


-- Seleccionamos la base de datos con la trabajaremos.
USE wi520641_sqlserverya
GO


-- Creamos la tabla usuarios.
CREATE TABLE usuarios (
	nombre VARCHAR(30),
	clave VARCHAR(10)
);


-- Para ver la estructura de una tabla usamos el siguiente procedimiento almacenado.
SP_COLUMNS usuarios;


-- Para eliminar una tabla.
DROP TABLE usuarios;


-- Instruccion para validar si una tabla existe y despues borrarla.
IF OBJECT_ID('usuarios') IS NOT NULL
	DROP TABLE usuarios;