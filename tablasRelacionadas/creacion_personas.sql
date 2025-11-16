--Tabla Personas

create table personas(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	estatura decimal,
	fecha_nacimiento date not null,
	hora_nacimiento time,
	cantidad_ahorrada money,
	numero_hijos int,
	constraint personas_pk primary key(cedula)
);

--Recuperar Informacion
select * from personas
select * from prestamo

--Tabla prestamo
create table prestamo(
	cedula char(10) not null,
	monto money,
	fecha_prestamo date,
	hora_prestamo time,
	garante varchar(40)
);

--Union
alter table prestamo
add constraint personas_fk foreign key (cedula)
references personas(cedula);

--Inserciones
insert into personas(cedula, nombre, apellido, fecha_nacimiento, cantidad_ahorrada)
values('1721548123', 'Juan', 'Perez', '12/08/2005', 200);

insert into personas(cedula, nombre, apellido, fecha_nacimiento, cantidad_ahorrada)
values('1721548799', 'Sean', 'Paul', '01/05/1985', 1500);

insert into personas(cedula, nombre, apellido, fecha_nacimiento , cantidad_ahorrada)
values('1721548790', 'Lady', 'Gaga', '12/09/1995', 100);

insert into personas(cedula, nombre, apellido, fecha_nacimiento, cantidad_ahorrada)
values('1721548791', 'Jennifer', 'Lopez', '16/04/1992', 89);

insert into personas(cedula, nombre, apellido, fecha_nacimiento, cantidad_ahorrada)
values('1721548792', 'Jennifer', 'Aniston', '21/12/1899', 120);

insert into prestamo(cedula, monto, fecha_prestamo, hora_prestamo, garante)
values('1721548123', 250, '12/05/2023', '13:50', 'Pablo');

insert into prestamo(cedula, monto, fecha_prestamo, hora_prestamo, garante)
values('1721548123', 100, '16/06/2023', '10:50', 'Sebastian');

insert into prestamo(cedula, monto, fecha_prestamo, hora_prestamo, garante)
values('1721548799', 1000, '20/07/2023', '13:00', 'Paco');

insert into prestamo(cedula, monto, fecha_prestamo, hora_prestamo, garante)
values('1721548799', 550, '22/07/2023', '18:30', 'Mario');

insert into prestamo(cedula, monto, fecha_prestamo, hora_prestamo, garante)
values('1721548790', 150, '12/08/2023', '11:50', 'Lupe');

insert into prestamo(cedula, monto, fecha_prestamo, hora_prestamo, garante)
values('1721548790', 120, '16/08/2023', '17:40', 'Francia');

insert into prestamo(cedula, monto, fecha_prestamo, hora_prestamo, garante)
values('1721548791', 80, '18/08/2023', '09:00', 'Carlos');

insert into prestamo(cedula, monto, fecha_prestamo, hora_prestamo, garante)
values('1721548791', 652, '23/08/2023', '11:50', 'Maria');

insert into prestamo(cedula, monto, fecha_prestamo, hora_prestamo, garante)
values('1721548792', 500, '21/09/2023', '13:00', 'Santiago');

insert into prestamo(cedula, monto, fecha_prestamo, hora_prestamo, garante)
values('1721548792', 290, '01/10/2023', '14:30', 'Marco');

--Consultas Tablas Relacionadas
select p.cantidad_ahorrada, pres.monto, pres.garante
from personas p, prestamo pres
where pres.cedula = p.cedula
and pres.monto between money(100) and money(1000);

select p.*
from personas p
where p.nombre = 'Sean';