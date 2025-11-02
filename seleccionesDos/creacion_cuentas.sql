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
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25569,17504,'15/01/2030',500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25570,17500,'01/11/2028',600);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25571,17501,'22/01/2023',700);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25572,17508,'30/05/2022',800);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25573,17509,'15/03/2023',900);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25574,17510,'15/05/2023',1000);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25575,17507,'15/09/2023',1500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25576,17515,'15/10/2024',2500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25577,17512,'15/08/2025',3500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25578,17503,'15/06/2017',4500);

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

--SELECCIONES 2
--Seleccionar el numero de cuenta y el saldo de todas las cuentas con saldo mayor a 100 y menor a 1000
select numero_cuenta, saldo from cuentas where saldo > money(100) and saldo < money(1000)

--Seleccionar las cuentas entre el dia de hoy hasta hace un año
select * from cuentas where fecha_creacion between '01/11/2024' and '01/11/2025'

--Seleccionar las cuentas con saldo 0 o con una cedula de propietario que termine en 2
select * from cuentas where saldo = money(0) or cedula_propietario like '%2'