-- Usamos la base de datos.
USE wi520641_sqlserverya;
GO

-- Si existe la tabla la borramos.
IF OBJECT_ID('usuarios') IS NOT NULL
	DROP TABLE usuarios;


-- Creamos la tabla 'usuarios'.
CREATE TABLE usuarios(
	nombre VARCHAR(30),
	clave VARCHAR(10)
);


-- Veamos las tablas existentes en la BD.
SP_TABLES @TABLE_OWNER = 'dbo';


-- Veamos la estructura de la tabla 'usuarios'.
SP_COLUMNS usuarios;

