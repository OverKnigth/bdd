--Tabla Productos

create table productos(
	codigo int not null,
	nombre varchar(50) not null,
	descripcion varchar(200),
	precio money not null,
	stock int not null,
	constraint productos_pk primary key(codigo)
);

drop table productos

--Inserciones
insert into productos(codigo, nombre, descripcion, precio, stock)
values(1, 'Coca-Cola', 'Coca de 3 litros', 3, 100)

insert into productos(codigo, nombre, descripcion, precio, stock)
values(2, 'Pepsi', 'Pepsi de 1 litro', 0.50, 50)

insert into productos(codigo, nombre, descripcion, precio, stock)
values(3, 'Doritos', 'Snacks de Limon', 0.75, 200)

insert into productos(codigo, nombre, descripcion, precio, stock)
values(4, 'Fanta', 'Gaseosa de Naranja', 0.75, 520)

insert into productos(codigo, nombre, descripcion, precio, stock)
values(5, 'Pipas', 'Semillas de girasol sabor Limon', 0.25, 520)

insert into productos(codigo, nombre, precio, stock)
values(6, 'Fideos', 1.20, 150)

insert into productos(codigo, nombre, precio, stock)
values(7, 'Atun', 1.90, 630)

insert into productos(codigo, nombre, precio, stock)
values(8, 'Aceite', 3.50, 75)

--Consulta
select * from productos