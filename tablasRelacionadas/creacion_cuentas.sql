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
insert into usuario(cedula, nombre, apellido, tipo_cuenta)
values('12345', 'Juan', 'Perez', 'Ahorros');

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values('01478', '12345', '22/08/2022', 2000);

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values('01479', '12345', '25/08/2022', 1200);


insert into usuario(cedula, nombre, apellido, tipo_cuenta)
values('56789', 'Max', 'Ortega', 'Corriente');

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values('02478', '56789', '14/09/2022', 200);

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values('02479', '56789', '20/09/2022', 210);


insert into usuario(cedula, nombre, apellido, tipo_cuenta)
values('90123', 'Celia', 'Landeta', 'Ahorros');

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values('02445', '90123', '02/10/2022', 700);

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values('02448', '90123', '27/10/2022', 10);


insert into usuario(cedula, nombre, apellido, tipo_cuenta)
values('34567', 'Bryan', 'Lopez', 'Corriente');

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values('02745', '34567', '10/11/2022', 800);

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values('02748', '34567', '13/11/2022', 12);


insert into usuario(cedula, nombre, apellido, tipo_cuenta)
values('78901', 'Leo', 'Messi', 'Ahorros');

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values('42745', '78901', '10/05/2023', 850);

insert into cuentas(numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values('42748', '78901', '16/06/2023', 24);

--Consultas Tablas Relacionadas
select cu.numero_cuenta, us.nombre 
from usuario us, cuentas cu
where cu.cedula_propietario = us.cedula
and cu.saldo between money(100) and money(1000);

select cu.numero_cuenta, cu.fecha_creacion, cu.saldo, us.cedula
from usuario us, cuentas cu
where cu.cedula_propietario = us.cedula
and cu.fecha_creacion between '21/09/2022' and '21/09/2023';

--Consultas con Funciones de Agregacion
select AVG (cast (saldo as numeric)) as saldo_promedio
from usuario us, cuentas cu
where cu.cedula_propietario = us.cedula

select Count(us.tipo_cuenta), us.tipo_cuenta
from usuario us, cuentas cu
where cu.cedula_propietario = us.cedula
group by us.tipo_cuenta