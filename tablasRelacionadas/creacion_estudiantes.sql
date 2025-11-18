--Tabla Estudiantes

create table estudiantes(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	email varchar(50) not null,
	fecha_nacimiento date,
	codigo_profesor int,
	constraint estudiantes_pk primary key(cedula)
);

drop table estudiantes

--Consulta
select * from estudiantes
select * from profesores

--Tabla Profesores
create table profesores(
	codigo int not null,
	nombre varchar(50) not null,
	constraint profesores_pk primary key(codigo)
);

--Union
alter table estudiantes
add constraint profesores_fk foreign key(codigo_profesor)
references profesores(codigo);

--Inserciones
insert into profesores(codigo, nombre)
values(1, 'Francisco');

insert into profesores(codigo, nombre)
values(2, 'Monica');

insert into profesores(codigo, nombre)
values(3, 'Lupe');

insert into profesores(codigo, nombre)
values(4, 'Maximo');

insert into profesores(codigo, nombre)
values(5, 'Daniel');

insert into estudiantes(cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor)
values('1721870010', 'Juan', 'Torres', 'juan@gmail.com', '02/01/2000', 1);

insert into estudiantes(cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor)
values('1721870011', 'Pedro', 'Perez', 'pedro@gmail.com', '12/08/2001', 1);

insert into estudiantes(cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor)
values('1721870012', 'Daniel', 'Ortega', 'daniel@gmail.com', '21/05/2005', 2);

insert into estudiantes(cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor)
values('1721870013', 'Stalin', 'Moposita', 'stalin@gmail.com', '12/05/2004', 2);

insert into estudiantes(cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor)
values('1721870014', 'Karolina', 'Gavilema', 'karo@gmail.com', '11/12/2005', 3);

insert into estudiantes(cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor)
values('1721870015', 'Max', 'Ortega', 'max@gmail.com', '30/04/2004', 3);

insert into estudiantes(cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor)
values('1721870016', 'Julian', 'Alvarez', 'julian@gmail.com', '02/07/1999', 4);

insert into estudiantes(cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor)
values('1721870017', 'Harry', 'Kane', 'harry@gmail.com', '12/01/2000', 4);

insert into estudiantes(cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor)
values('1721870116', 'Francisco', 'Paez', 'paez@gmail.com', '12/07/1999', 5);

insert into estudiantes(cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor)
values('1721770017', 'Leo', 'Messi', 'messi@gmail.com', '12/12/2000', 5);

--Consultas Tablas Relacionadas
select p.codigo, e.nombre, e.apellido
from estudiantes e, profesores p
where e.codigo_profesor = p.codigo
and e.apellido like '%n%'

select e.cedula, e.nombre, e.apellido, e.fecha_nacimiento, e.codigo_profesor
from estudiantes e, profesores p
where e.codigo_profesor = p.codigo
and p.nombre = 'Francisco';

--Consultas con Funciones de Agregacion
select e.codigo_profesor, COUNT(*) as total_estudiantes
from estudiantes e, profesores p
where e.codigo_profesor = p.codigo
group by e.codigo_profesor

select ROUND(AVG(extract(year from current_date) - extract(year from e.fecha_nacimiento))) as edad_promedio
from estudiantes e, profesores p
where e.codigo_profesor = p.codigo