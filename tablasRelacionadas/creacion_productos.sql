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

--Consulta
select * from productos;
select * from ventas;

--Tabla Ventas
create table ventas(
	id_venta int not null,
	codigo_producto int not null,
	fecha_venta date not null,
	cantidad int,
	constraint ventas_pk primary key(id_venta)
);

--Union
alter table ventas
add constraint productos_fk foreign key(codigo_producto)
references productos(codigo);

--Inserciones
insert into productos(codigo, nombre, descripcion, precio, stock)
values(1, 'Coca-Cola', 'Coca de 3 litros', 3, 100);

insert into productos(codigo, nombre, descripcion, precio, stock)
values(2, 'Pepsi', 'Pepsi de 1 litro', 0.50, 50);

insert into productos(codigo, nombre, descripcion, precio, stock)
values(3, 'Doritos', 'Snacks de Limon', 0.75, 200);

insert into productos(codigo, nombre, descripcion, precio, stock)
values(4, 'Fanta', 'Gaseosa de Naranja', 0.75, 520);

insert into productos(codigo, nombre, descripcion, precio, stock)
values(5, 'Pipas', 'Semillas de girasol sabor Limon', 0.25, 520);

insert into productos(codigo, nombre, descripcion, precio, stock)
values(6, 'Mantequilla', 'Margarina multiusos', 1, 530);

insert into productos(codigo, nombre, descripcion, precio, stock)
values(7, 'Comino', 'Especia para cocinar', 0.25, 750);

insert into productos(codigo, nombre, precio, stock)
values(8, 'Manteca', 1.20, 150);

insert into productos(codigo, nombre, precio, stock)
values(9, 'Atun', 1.90, 630);

insert into productos(codigo, nombre, precio, stock)
values(10, 'Aceite', 3.50, 75);

insert into ventas(id_venta, codigo_producto, fecha_venta, cantidad)
values(1, 10, '01/10/2025', 5);

insert into ventas(id_venta, codigo_producto, fecha_venta, cantidad)
values(2, 9, '11/10/2025', 8);

insert into ventas(id_venta, codigo_producto, fecha_venta, cantidad)
values(3, 8, '15/10/2025', 2);

insert into ventas(id_venta, codigo_producto, fecha_venta, cantidad)
values(4, 7, '20/10/2025', 1);

insert into ventas(id_venta, codigo_producto, fecha_venta, cantidad)
values(5, 6, '01/11/2025', 10);

insert into ventas(id_venta, codigo_producto, fecha_venta, cantidad)
values(6, 5, '05/11/2025', 3);

insert into ventas(id_venta, codigo_producto, fecha_venta, cantidad)
values(7, 4, '10/11/2025', 2);

insert into ventas(id_venta, codigo_producto, fecha_venta, cantidad)
values(8, 3, '11/11/2025', 1);

insert into ventas(id_venta, codigo_producto, fecha_venta, cantidad)
values(9, 2, '15/11/2025', 6);

insert into ventas(id_venta, codigo_producto, fecha_venta, cantidad)
values(10, 1, '15/11/2025', 9);

--Consulta Tablas Relacionadas
select p.nombre, p.stock, v.cantidad
from productos p, ventas v
where v.codigo_producto = p.codigo
and (p.descripcion is null) or (p.nombre like '%m%');

select p.nombre, p.stock
from productos p, ventas v
where v.codigo_producto = p.codigo
and v.codigo_producto = 5