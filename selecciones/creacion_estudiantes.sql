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
insert into estudiantes(cedula, nombre, apellido, email, fecha_nacimiento)
values('1721870010', 'Juan', 'Torres', 'juan@gmail.com', '02/01/2000')

insert into estudiantes(cedula, nombre, apellido, email, fecha_nacimiento)
values('1721870011', 'Pedro', 'Perez', 'pedro@gmail.com', '12/08/2001')

insert into estudiantes(cedula, nombre, apellido, email, fecha_nacimiento)
values('1721870012', 'Daniel', 'Ortega', 'daniel@gmail.com', '21/05/2005')

insert into estudiantes(cedula, nombre, apellido, email, fecha_nacimiento)
values('1721870013', 'Stalin', 'Moposita', 'stalin@gmail.com', '12/05/2004')

insert into estudiantes(cedula, nombre, apellido, email, fecha_nacimiento)
values('1721870014', 'Karolina', 'Gavilema', 'karo@gmail.com', '11/12/2005')

insert into estudiantes(cedula, nombre, apellido, email, fecha_nacimiento)
values('1721870015', 'Max', 'Ortega', 'max@gmail.com', '30/04/2004')

insert into estudiantes(cedula, nombre, apellido, email, fecha_nacimiento)
values('1721870016', 'Julian', 'Alvarez', 'julian@gmail.com', '02/07/1999')

insert into estudiantes(cedula, nombre, apellido, email, fecha_nacimiento)
values('1721870017', 'Harry', 'Kane', 'harry@gmail.com', '12/01/2000')

insert into estudiantes(cedula, nombre, apellido, email, fecha_nacimiento)
values('1821870017', 'Harry', 'Potter', 'harrp@gmail.com', '12/05/2002')

insert into estudiantes(cedula, nombre, apellido, email, fecha_nacimiento)
values('1921870017', 'Dominik', 'Mysterio', 'mysterio@gmail.com', '15/06/2000')

insert into estudiantes(cedula, nombre, apellido, email, fecha_nacimiento)
values('1921870789', 'Aria', 'Stark', 'aria@gmail.com', '21/06/2005')

insert into estudiantes(cedula, nombre, apellido, email, fecha_nacimiento)
values('1921870456', 'Ariana', 'Grande', 'arig@gmail.com', '15/07/1999')

--Consulta
select * from estudiantes

--Consultas el Nombre y Cedula de todos los Estudiantes
select nombre, cedula from estudiantes

--Consultar el Nombre de todos los estudiantes cuya cedula inicie con 17
select nombre from estudiantes where cedula like '17%'

--Consultar el Nombre Completo de los estudiantes cuyo nombre empiece con A
select nombre, apellido from estudiantes where nombre like 'A%'