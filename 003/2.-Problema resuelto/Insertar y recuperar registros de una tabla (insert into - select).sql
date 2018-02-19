-- Usamos la base de datos.
USE wi520641_sqlserverya;
GO

-- Verificamos si existe y borramos.
IF OBJECT_ID('usuarios') IS NOT NULL
	DROP TABLE usuarios;

-- Creamos la tabla usuarios.
CREATE TABLE usuarios(
	nombre	VARCHAR(30),
	clave	VARCHAR(10)
);

-- Agregamos un registro a la tabla usuarios.
INSERT INTO usuarios (nombre, clave) VALUES ('Christian', 'CanarioSQL');

-- Ver los registros de la tabla.
SELECT * FROM usuarios;

-- Agregamos otro registro.
INSERT INTO usuarios (nombre, clave) VALUES ('Melissa', 'Mesli1995');

-- Volvemos a verificar los datos.
SELECT * FROM usuarios;

-- Error logico. Los campos se colocan en diferente colomna.
INSERT INTO usuarios (nombre, clave) VALUES ('Boca', 'Luis');

-- Checamos los datos de la tabla nuevamente.
SELECT * FROM usuarios;