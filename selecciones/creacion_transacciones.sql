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

--Consulta
select * from transacciones

--Consultar todas las transacciones de tipo D
select * from transacciones where tipo = 'D'

--Consultar todas las transacciones con motos entre 200 y 2000
select * from transacciones where monto between money(200) and money(2000)

--Consultar el codigo, monto, tipo y fecha de las transacciones que tengan fecha distinta de null
select codigo, monto, tipo, fecha from transacciones where fecha is not null