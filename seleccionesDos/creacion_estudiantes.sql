--Tabla Estudiantes

create table estudiantes(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	email varchar(50) not null,
	fecha_nacimiento date,
	constraint estudiantes_pk primary key(cedula)
);

drop table estudiantes

--Inserciones
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476801,'Raul','Martínez','raumart01@gmail.com','04/02/2003');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476802,'Mario','Guaman','MarioG25@gmail.com', '08/12/2000');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476803,'Roberto','Quishpe','RobQuishpe64@gmail.com','29/06/2005');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476804,'Paul','Noguera','PaulNog55@gmail.com','22/07/2002');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476805,'Marcelo','Ramos','MarceloR72@gmail.com','15/08/2008');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476806,'Anthony','Agual','KAgual22@gmail.com','25/03/2002');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476807,'Paula','Celi','PauCeli31@gmail.com','30/09/2010' );
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476808,'Mónica','Martínez','MoniMar15@gmail.com','22/01/2001');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476809,'Anabel','Perlaza','WPerlaza18@gmail.com','12/04/2000');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476810,'Sofía','Jimenez','SofiJz22@gmail.com','22/01/2001');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1835473810,'Sofía','Marquez','SofiMr22@gmail.com','24/05/2001');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1832473810,'Pedro','Marquez','PedroMr22@gmail.com','25/08/2002');

--Consulta
select * from estudiantes

--Consultas el Nombre y Cedula de todos los Estudiantes
select nombre, cedula from estudiantes

--Consultar el Nombre de todos los estudiantes cuya cedula inicie con 17
select nombre from estudiantes where cedula like '17%'

--Consultar el Nombre Completo de los estudiantes cuyo nombre empiece con A
select nombre, apellido from estudiantes where nombre like 'A%'

--ACTUALIZACIONES
--Actualizar el apellido a Hernandez de todos los estudiantes cuya dedula empiece por 17
update estudiantes set apellido='Hernandez' where cedula like '17%'

--ELIMINACION
--Eliminar todos los estudiante cuya cedula termine en 05
delete from estudiantes where cedula like '%05'

--SELECCIONES 2
--Seleccionar el nombre y apellido de los estudiantes cuyos nombre empiecen con M o si su apellido termina en Z
select nombre, apellido from estudiantes where nombre like 'M%' or apellido like '%z'

--Seleccionar los nombres de todos los estudiantes que tengan un numero 32 en la cedula y empiecen por 18
select nombre, apellido from estudiantes where cedula like '18%' and cedula like '%32%'

--Seleccionar los nombres de todos los estudiantes cuya cedula empiece en 17 y termine en 06
select nombre, apellido from estudiantes where cedula like '17%' and cedula like '%06'