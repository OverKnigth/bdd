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
values(78945, '75369', 200, 'C', '20/09/2023', '23:30');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(53147, '32102', 500.65, 'D', '15/06/2022', '17:55');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(32548, '21001', 1600, 'C', '17/05/2021', '16:37');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(32165, '51437', 1050, 'D', '25/04/2020', '15:48');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(78542, '02147', 300, 'D', '20/03/2019', '22:19');

insert into transacciones(codigo, numero_cuenta, monto, tipo, hora)
values(23210, '32015', 400, 'C', '13:55');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(35412, '85214', 600, 'D', '07/12/2015', '20:14');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(54193, '96325', 800, 'D', '06/11/2012', '11:00');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(95124, '74125', 900, 'D', '23/10/2002', '9:00');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(54143, '85213', 2000, 'C', '11/09/1999', '7:30');

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

--SELECCIONES 2
--Seleccionar transacciones de tipo C realizadas por los clientes con numero de cuentas entre 22004 y 22200
select * from transacciones where (tipo = 'C') and (numero_cuenta between '22004' and '22200')

--Seleccionar transacciones de tipo D realizadas el 25 de mayo y con numero de cuenta entre 22007 y 22010
select * from transacciones where (tipo = 'D') and (fecha = '25/05/2025') and (numero_cuenta between '22007' and '22010')

--Seleccionar transacciones donde el codigo este entre 1 y 5, numero de cuenta entre 22002 y 22004 que se haya realizado entre los dias 26 y 29 de mayo
select * from transacciones where (codigo between 1 and 5) and (numero_cuenta between '22002' and '22004') and (fecha between '26/05/2021' and '29/05/2021')