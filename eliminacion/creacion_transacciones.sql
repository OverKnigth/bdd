--Tabla Transacciones

create table transacciones(
	codigo int not null,
	numero_cuenta char(5) not null,
	monto money not null,
	tipo char(1),
	fecha date,
	hora time,
	constraint transacciones_pk primary key(codigo)
);

drop table transacciones

--Inserciones
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(100, '12345', 200, 'C', '12/05/2025', '09:00')

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(101, '12346', 250, 'D', '15/05/2025', '13:10')

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(102, '12347', 2, 'C', '15/05/2025', '10:00')

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(103, '12348', 14, 'D', '18/05/2025', '08:45')

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(104, '12349', 25, 'D', '19/05/2025', '07:26')

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(105, '12310', 85, 'C', '20/05/2025', '09:48')

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(106, '12311', 260, 'C', '20/05/2025', '09:7')

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(107, '12312', 200, 'C', '21/05/2025', '09:00')

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(108, '12313', 240, 'D', '22/05/2025', '09:00')

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(109, '12314', 150, 'C', '22/05/2025', '09:00')

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(110, '12325', 1500, 'C', '26/05/2025', '09:36')

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(111, '12341', 155, 'D', '25/05/2025', '15:58')

insert into transacciones(codigo, numero_cuenta, monto, tipo, hora)
values(112, '12398', 115, 'C', '15:20')

insert into transacciones(codigo, numero_cuenta, monto, tipo, hora)
values(113, '12386', 185, 'D', '16:42')

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(114, '12347', 350, 'D', '02/09/2025', '14:00')

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(115, '12348', 485, 'C', '15/09/2025', '15:58')

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(116, '12349', 1500, 'D', '23/09/2025', '19:58')

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(117, '12349', 10, 'C', '23/08/2025', '10:58')

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(118, '12349', 150, 'D', '23/08/2025', '19:00')

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(119, '12349', 15, 'D', '24/08/2025', '14:50')

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(120, '12349', 200, 'D', '25/08/2025', '16:00')

--Consulta
select * from transacciones 

--Consultar todas las transacciones de tipo D
select * from transacciones where tipo = 'D'

--Consultar todas las transacciones con motos entre 200 y 2000
select * from transacciones where monto between money(200) and money(2000)

--Consultar el codigo, monto, tipo y fecha de las transacciones que tengan fecha distinta de null
select codigo, monto, tipo, fecha from transacciones where fecha is not null

--ACTUALIZACIONES
--Actualizar el tipo de todos los registros que tengan una transaccion mayor a 100 y menor que 500
--Que haya sido realizada en septiembre entre las 14:00 y 20:00, por T
update transacciones set tipo='T' where monto > money(100) and monto < money(500) and fecha between '01/09/2025' and '30/09/2025' and hora between '14:00' and '20:00'

--ELIMINACION
--Eliminar las transacciones que se hayan hecho entre 14:00 y 18:00 del mes de agosto
delete from transacciones where hora between '14:00' and '18:00' and fecha between '01/08/2025' and '31/08/2025'