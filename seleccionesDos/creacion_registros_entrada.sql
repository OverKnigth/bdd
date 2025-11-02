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
values(12345, '1754416489', '18/06/2023', '7:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12355, '1758254591', '03/08/2023', '14:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12346, '1715974492', '25/03/2022', '23:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12347, '1735642583', '28/12/2015', '16:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12389, '1707416984', '16/07/2012', '8:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12349, '1778541235', '17/03/2013', '10:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12310, '1742158637', '14/05/2017', '19:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12311, '1756321784', '15/05/2004', '20:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12358, '1712546328', '07/07/2008', '21:00');

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora)
values(12378, '1725785413', '02/09/2023', '4:00');

--Consulta
select * from registros_entrada

--Consultar todas las Cedulas de empleado, Fecha y Hora de los Registros
select cedula_empleado, fecha, hora from registros_entrada 

--Consultar los registros que esten entre 07:00 y 14:00
select * from registros_entrada where hora between '07:00' and '14:00'

--Consultar los registros que tengas horas superiores a 08:00
select * from registros_entrada where hora > '08:00'

--ACTUALIZACIONES
--Actualizar todas las cedula_empleado a 082345679 para todos los registros de agosto
update registros_entrada set cedula_empleado='0823456790' where fecha between '01/08/2025' and '31/08/2025'

--ELIMACION
--Eliminar todos los registros del mes de junio
delete from registros_entrada where fecha between '01/06/2025' and '30/06/2025'

--SELECCIONES 2 
--Seleccionar los registros de septiembre o realizados por las cedulas que inician en 17
select * from registros_entrada where cedula_empleado like '17%' or fecha between '01/09/2025' and '30/09/2025'

--Seleccionar los registros de agosto realizados por las cedulas que inician en 17 y realizamos entre las 8:00 a 12:00
select * from registros_entrada where cedula_empleado like '17%' and fecha between '01/08/2023' and '31/08/2023' and hora between '08:00' and '12:00'

--Seleccionar los registros de agosto realizados por las cedulas que inician con 17 y realizados entre las 08:00 a 12:00
--O los registros de septiembre realizados por las cedulas que incian con 08 realizadas entre las 09:00 a 13:00 
select * from registros_entrada where (cedula_empleado like '17%' and fecha between '01/08/2023' and '31/08/2023' and hora between '08:00' and '12:00') or (cedula_empleado like '08%' and fecha between '01/09/2023' and '30/09/2023' and hora between '09:00' and '13:00')