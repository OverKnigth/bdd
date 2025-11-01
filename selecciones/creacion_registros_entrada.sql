--Tabla Registro de Entradas

create table registros_entrada(
	codigo_registro int not null,
	cedula_empleado char(10) not null,
	fecha date not null,
	hora time not null,
	constraint registros_entrada_pk primary key(codigo_registro)
);

drop table registros_entrada

--Inserciones
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(100, '1721870010', '01/02/2025', '12:30')

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(101, '1721870010', '02/02/2025', '09:35')

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(102, '1721870010', '03/02/2025', '13:30')

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(103, '1721870010', '04/02/2025', '15:30')

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(104, '1721870010', '05/02/2025', '08:00')

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(105, '1721870010', '06/02/2025', '07:30')

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(106, '1721870010', '07/02/2025', '08:30')

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(107, '1721870010', '08/02/2025', '12:30')

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(108, '1721870010', '09/02/2025', '14:30')

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(109, '1721870010', '10/02/2025', '17:30')

--Consulta
select * from registros_entrada