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

--Consulta
select * from transacciones
select * from banco

--Tabla Banco
create table banco(
	codigo_banco int not null,
	codigo_transaccion int not null, 
	detalle varchar(100),
	constraint banco_pk primary key(codigo_banco)
);

--Union 
alter table banco
add constraint transacciones_fk foreign key(codigo_transaccion)
references transacciones(codigo);

--Inserciones
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(1, '22001', 200, 'C', '12/05/2025', '09:00');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(2, '22002', 250, 'D', '15/05/2025', '13:10');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(3, '22003', 2, 'C', '15/05/2025', '10:00');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(4, '22004', 14, 'D', '18/05/2025', '08:45');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(5, '22005', 25, 'D', '19/05/2025', '07:26');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(6, '22006', 85, 'C', '20/05/2025', '09:48');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(7, '22007', 260, 'C', '20/05/2025', '09:17');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(8, '22008', 200, 'C', '21/05/2025', '09:00');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(9, '22009', 240, 'D', '22/05/2025', '09:00');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(10, '22010', 150, 'C', '22/05/2025', '09:00');

insert into banco(codigo_banco, codigo_transaccion, detalle)
values(1, 10, 'Para comprar Pan')

insert into banco(codigo_banco, codigo_transaccion, detalle)
values(2, 9, 'Para la Colacion')

insert into banco(codigo_banco, codigo_transaccion, detalle)
values(3, 8, 'Para ir en Uber')

insert into banco(codigo_banco, codigo_transaccion, detalle)
values(4, 7, 'Para el Almuerzo')

insert into banco(codigo_banco, codigo_transaccion, detalle)
values(5, 6, 'Para comprar KFC')

insert into banco(codigo_banco, codigo_transaccion, detalle)
values(6, 5, 'Pagar pension')

insert into banco(codigo_banco, codigo_transaccion, detalle)
values(7, 4, 'Pagar Arriendo')

insert into banco(codigo_banco, codigo_transaccion, detalle)
values(8, 3, 'Pagar Agua')

insert into banco(codigo_banco, codigo_transaccion)
values(9, 2)

insert into banco(codigo_banco, codigo_transaccion)
values(10, 1)
