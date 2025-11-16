--Crear Tabla Clientes

create table clientes(
	cedula char (10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	constraint clientes_pk primary key(cedula)
);

drop table clientes

--Consulta 
select * from clientes;
select * from compras;
select * from clientes, compras;

--Tabla Compras
create table compras(
	id_compra int not null,
	cedula char(10) not null,
	fecha_compra date not null,
	monto decimal(10,2) not null,
	constraint compras_pk primary key(id_compra)
);

--Union
alter table compras
add constraint compras_fk foreign key(cedula)
references clientes(cedula)

--Inserciones
insert into clientes(cedula, nombre, apellido)
values('1234568900', 'Juan', 'Perez');

insert into compras(id_compra, cedula, fecha_compra, monto)
values(1, '1234568900', '12/12/2024', 12.50);

insert into compras(id_compra, cedula, fecha_compra, monto)
values(2, '1234568900', '25/12/2024', 100);

insert into clientes(cedula, nombre, apellido)
values('1734567891', 'Pablo', 'Perez');

insert into compras(id_compra, cedula, fecha_compra, monto)
values(3, '1734567891', '11/02/2025', 15.25);

insert into compras(id_compra, cedula, fecha_compra, monto)
values(4, '1734567891', '16/03/2025', 180.36);

insert into clientes(cedula, nombre, apellido)
values('1734567821', 'Monica', 'Paz');

insert into compras(id_compra, cedula, fecha_compra, monto)
values(5, '1734567821', '03/04/2025', 1.25);

insert into compras(id_compra, cedula, fecha_compra, monto)
values(6, '1734567821', '21/05/2025', 18.75);

insert into clientes(cedula, nombre, apellido)
values('1734567321', 'Monica', 'Andrade');

insert into compras(id_compra, cedula, fecha_compra, monto)
values(7, '1734567321', '01/06/2025', 0.25);

insert into compras(id_compra, cedula, fecha_compra, monto)
values(8, '1734567321', '20/07/2025', 31.18);

insert into clientes(cedula, nombre, apellido)
values('1834564321', 'Leo', 'Messi');

insert into compras(id_compra, cedula, fecha_compra, monto)
values(9, '1834564321', '12/08/2025', 8.32);

insert into compras(id_compra, cedula, fecha_compra, monto)
values(10, '1834564321', '24/09/2025', 59);

--Consultas Tablas Relacionadas
select cli.nombre, cli.apellido
from clientes cli
where cli.cedula like '%7%';

select cli.cedula, cli.nombre, cli.apellido
from clientes cli
where cli.nombre = 'Monica';