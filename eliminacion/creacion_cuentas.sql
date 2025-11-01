--Tabla Cuentas

create table cuentas(
	numero_cuenta char(5) not null,
	cedula_propietario char(5) not null,
	fecha_creacion date not null,
	saldo money not null,
	constraint cuentas_pk primary key(numero_cuenta)
);

drop table cuentas

--Inserciones
insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values('17894', '17875', '02/05/2001', 200)

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values('17897', '17878', '08/07/2007', 10)

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values('17745', '17872', '12/05/2004', 2001)

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values('17893', '17845', '20/07/2000', 125)

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values('17800', '17870', '07/02/2002', 207)

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values('17741', '17024', '08/04/2008', 52)

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values('17805', '17883', '01/11/1999', 200)

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values('18894', '17875', '02/05/2001', 200)

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values('17842', '17836', '04/05/2004', 204)

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values('17882', '17864', '14/07/2005', 140)

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values('17864', '17868', '14/09/2025', 8000)

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values('17111', '17123', '01/10/2005', 15)

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values('17333', '17321', '25/08/2025', 10)

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values('17222', '17122', '01/10/2025', 150)

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values('18222', '17178', '01/11/2025', 180)

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values('18227', '17195', '12/11/2025', 1500)

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values('14222', '17142', '14/11/2025', 2500)

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values('14227', '18142', '14/11/2025', 2500)

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values('14225', '17142', '14/11/2025', 2500)

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values('14229', '12142', '14/11/2025', 2500)

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values('14274', '10147', '15/11/2025', 250)

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values('14258', '10148', '16/11/2025', 2400)

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values('14273', '10149', '17/11/2025', 2000)

--Consulta
select * from cuentas

--Consultar los Numero de Cuenta y Saldos de todas las cuentas
select numero_cuenta, saldo from cuentas

--Consultar los Registros entre el dia de hoy hasta dos meses antes
select * from cuentas where fecha_creacion between '01/09/2025' and '01/11/2025'

--Consultar el Numero de Cuneta y Saldo de las cuentas hasta dia de hoy hasta dos meses antes
select numero_cuenta, saldo from cuentas where fecha_creacion between '01/09/2025' and '01/11/2025'

--ACTUALIZACIONES
--Actualizar el saldo a 10 de las cuentas cuya cedula_propietario inicie por 17
update cuentas set saldo=10 where cedula_propietario like '17%'

--ELIMINACION
--Eliminar todas las cuentas cuya cedula_propietario empiece por 10
delete from cuentas where cedula_propietario like '10%'