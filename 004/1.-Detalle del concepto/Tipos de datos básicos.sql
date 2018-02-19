/*******************************************************************************
Tipos de datos

varchar: 
se usa para almacenar cadenas de caracteres. Una cadena es una secuencia de caracteres. 
Se coloca entre comillas (simples); ejemplo: 'Hola', 'Juan Perez'. El tipo "varchar" define una 
cadena de longitud variable en la cual determinamos el máximo de caracteres entre paréntesis. 
Puede guardar hasta 8000 caracteres. Por ejemplo, para almacenar cadenas de hasta 30 caracteres, 
definimos un campo de tipo varchar(30), es decir, entre paréntesis, junto al nombre del campo 
colocamos la longitud.
Si asignamos una cadena de caracteres de mayor longitud que la definida, la cadena no se carga, 
aparece un mensaje indicando tal situación y la sentencia no se ejecuta.
Por ejemplo, si definimos un campo de tipo varchar(10) e intentamos asignarle la cadena 'Buenas 
tardes', aparece un mensaje de error y la sentencia no se ejecuta.

integer: 
se usa para guardar valores numéricos enteros, de -2000000000 a 2000000000 aprox. 
Definimos campos de este tipo cuando queremos representar, por ejemplo, cantidades.

float: 
se usa para almacenar valores numéricos con decimales. Se utiliza como separador el 
punto (.). Definimos campos de este tipo para precios, por ejemplo.
********************************************************************************/
