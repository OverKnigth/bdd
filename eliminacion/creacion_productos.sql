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

insert into productos(codigo, nombre, precio, stock)
values(9, 'Queso', 2.80, 20)

--Consulta
select * from productos

--Consulta Productos que Inicien con Q
select * from productos where nombre like 'Q%'

--Consulta Productos con Descripcion Null
select * from productos where descripcion is null

--Consulta Prodcutos que su Precio ente entre 2 y 3
select * from productos where precio between money(2) and money(3)

--ACTUALIZACIONES
--Actualizar el stock a 0 de los productos con descripcion null
update productos set stock=0 where descripcion is null

--Eliminaciones
--Eliminar todos los productos con descripcion null
delete from productos where descripcion is null