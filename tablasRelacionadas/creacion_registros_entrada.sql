--Tabla Registro de Entradas

create table registros_entrada(
	codigo_registro int not null,
	cedula_empleado char(10) not null,
	fecha date not null,
	hora time not null,
	codigo_empleado int not null,
	constraint registros_entrada_pk primary key(codigo_registro)
);

drop table registros_entrada

--Consulta
select * from registros_entrada
select * from empleado

--Tabla Empleado
create table empleado(
	codigo_empleado int not null,
	nombre varchar(25) not null,
	fecha date not null,
	hora time not null,
	constraint empleado_pk primary key(codigo_empleado)
)

--Union
alter table registros_entrada
add constraint empledo_fk foreign key(codigo_empleado)
references empleado(codigo_empleado);

--Inserciones
insert into empleado(codigo_empleado, nombre, fecha, hora)
values(2201, 'Stalin', '01/08/2023', '12:30');

insert into empleado(codigo_empleado, nombre, fecha, hora)
values(2202, 'Max', '20/08/2023', '14:30');

insert into empleado(codigo_empleado, nombre, fecha, hora)
values(2203, 'Dereck', '01/09/2023', '18:30');

insert into empleado(codigo_empleado, nombre, fecha, hora)
values(2204, 'Juan', '14/10/2023', '10:30');

insert into empleado(codigo_empleado, nombre, fecha, hora)
values(2205, 'Pablo', '12/12/2023', '06:30');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values(100, '1721870010', '01/08/2023', '12:30', 2201);

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values(101, '1721870010', '05/08/2023', '08:30', 2201);

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values(102, '1721870011', '10/09/2023', '07:00', 2202);

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values(103, '1721870011', '15/09/2023', '06:30', 2202);

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values(104, '1721870012', '01/10/2023', '13:30', 2203);

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values(105, '1721870012', '16/10/2023', '12:00', 2203);

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values(106, '1721870013', '21/11/2023', '10:00', 2204);

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values(107, '1721870013', '05/12/2023', '09:00', 2204);

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values(108, '1721870014', '12/12/2023', '10:00', 2205);

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values(109, '1721870014', '21/12/2023', '13:30', 2205);