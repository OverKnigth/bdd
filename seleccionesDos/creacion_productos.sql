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
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (1,'Jabón','Lava todo',3.50,10);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (2,'Shampoo','Savital',2.50,20);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (3,'Deja','Deja',1.50,30);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (4,'Pasta dental','Fortident',3.0,40);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (5,'Cera','Cera de piso',2.50,50);
insert into productos(codigo,nombre,precio,stock) 
values (6,'Pan',1.50,50);
insert into productos(codigo,nombre,precio,stock) 
values (7,'Queso',5.50,60);
insert into productos(codigo,nombre,precio,stock)
values (8,'Leche',2.50,70);
insert into productos(codigo,nombre,precio,stock)
values (9,'Jamon',1.00,120);
insert into productos(codigo,nombre,precio,stock)
values (10,'Coca Cola',3.50,300);

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
update productos set stock=0 where nombre = 'Deja'

--Eliminaciones
--Eliminar todos los productos con descripcion null
delete from productos where descripcion is nul

--SELECCIONES 2
--Seleccionar todos los productos con stock igual a 10 y precio menor a 10
select * from productos where stock = 10 and precio < money(10)

--Seleccionar los Nombre y Stock de todos los productos con un m en su nombre o un espacio en blanco en su descripcion
select nombre, stock from productos where nombre like '%m%' or descripcion like '% %'

--Seleccionar el Nombre de todos los productos que tenga descripcion null o stock de 0
select nombre from productos where descripcion is null or stock = 0