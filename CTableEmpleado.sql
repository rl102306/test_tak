CREATE TABLE EMPLEADOS(
id_empleado int identity(1,1) primary key,
nombre varchar(250),
direccion varchar(250),
fecha_nacimiento datetime,
estado_civil varchar(250),
grado_academico varchar(250),
)