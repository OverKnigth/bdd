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

--Consulta
select * from estudiantes