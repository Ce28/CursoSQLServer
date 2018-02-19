-- Usamos la base de datos.
USE wi520641_sqlserverya;
GO

-- Insertar un registro a la tabla usuarios.
INSERT INTO usuarios (nombre, clave) VALUES ('Christian', 'CanarioSQL');

-- Para ver los registros de una tabla.
SELECT * FROM usuarios;