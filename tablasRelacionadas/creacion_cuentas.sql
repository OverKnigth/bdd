--Tabla Cuentas

create table cuentas(
	numero_cuenta char(5) not null,
	cedula_propietario char(5) not null,
	fecha_creacion date not null,
	saldo money not null,
	constraint cuentas_pk primary key(numero_cuenta)
);

drop table cuentas

--Consulta
select * from cuentas
select * from usuario

--Tabla Usuario
create table usuario(
	cedula char(5) not null,
	nombre varchar(20) not null,
	apellido varchar(20) not null,
	tipo_cuenta varchar(20),
	limite_credito decimal(10,5),
	constraint usuario_pk primary key(cedula)
);

--Union Tablas
alter table cuentas
add constraint cedula_propietario_fk 
foreign key(cedula_propietario)
references usuario(cedula)

--Nuevas Inserciones
insert into usuario(cedula, nombre, apellido)
values('12345', 'Juan', 'Perez');

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values('01478', '12345', '22/08/2022', 200);

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values('01479', '12345', '25/08/2022', 200);

insert into usuario(cedula, nombre, apellido)
values('56789', 'Max', 'Ortega');

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values('02478', '56789', '14/09/2022', 200);

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values('02479', '56789', '20/09/2022', 200);

insert into usuario(cedula, nombre, apellido)
values('90123', 'Celia', 'Landeta');

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values('02445', '90123', '02/10/2022', 700);

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values('02448', '90123', '27/10/2022', 10);

insert into usuario(cedula, nombre, apellido)
values('34567', 'Bryan', 'Lopez');

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values('02745', '34567', '10/11/2022', 800);

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values('02748', '34567', '13/11/2022', 120);

insert into usuario(cedula, nombre, apellido)
values('78901', 'Leo', 'Messi');

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values('42745', '78901', '10/05/2023', 850);

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values('42748', '78901', '16/06/2023', 240);
