--Tabla Videojuegos

create table videojuegos(
	codigo int not null,
	nombre varchar(100) not null,
	descripcion varchar(300),
	valoracion int not null,
	constraint videojuegos_pk primary key(codigo)
);

drop table videojuegos


--Consulta
select * from videojuegos
select * from plataformas

--Tabla Plataformas
create table plataformas(
	id_plataforma int not null,
	nombre_plataforma varchar(50) not null,
	codigo_videojuego int,
	constraint plataformas_pk primary key(id_plataforma)
);

--Union
alter table plataformas
add constraint viodejuegos_fk foreign key(codigo_videojuego)
references videojuegos(codigo)

--Inserciones
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(1, 'Halo', 'Juego de accion de Xbox', 8);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(2, 'God Of War', 'Juego de Guerra', 10);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(3, 'Call Of Dutty', 'Juego de Guerra', 9);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(4, 'Mario Kart', 'Juego de carreras', 7);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(5, 'Fortnite', 'Juego tipo Battle Royale', 10);

insert into videojuegos(codigo, nombre, valoracion)
values(6, 'Pokemon', 10);

insert into videojuegos(codigo, nombre, valoracion)
values(7, 'Dragon Ball Figthers', 9);

insert into videojuegos(codigo, nombre, valoracion)
values(8, 'Mortal Kombat', 4);

insert into videojuegos(codigo, nombre, valoracion)
values(9, 'Cooking Mama', 6);

insert into videojuegos(codigo, nombre, valoracion)
values(10, 'Zelda', 5);

insert into plataformas(id_plataforma, nombre_plataforma, codigo_videojuego)
values(1, 'Nintendo', 10);

insert into plataformas(id_plataforma, nombre_plataforma, codigo_videojuego)
values(2, 'Nintendo', 9);

insert into plataformas(id_plataforma, nombre_plataforma, codigo_videojuego)
values(3, 'Nintendo', 8);

insert into plataformas(id_plataforma, nombre_plataforma, codigo_videojuego)
values(4, 'Nintendo', 7);

insert into plataformas(id_plataforma, nombre_plataforma, codigo_videojuego)
values(5, 'PlayStation', 6);

insert into plataformas(id_plataforma, nombre_plataforma, codigo_videojuego)
values(6, 'PlayStation', 5);

insert into plataformas(id_plataforma, nombre_plataforma, codigo_videojuego)
values(7, 'PlayStation', 4);

insert into plataformas(id_plataforma, nombre_plataforma, codigo_videojuego)
values(8, 'Xbox', 3);

insert into plataformas(id_plataforma, nombre_plataforma, codigo_videojuego)
values(9, 'Xbox', 2);

insert into plataformas(id_plataforma, nombre_plataforma, codigo_videojuego)
values(10, 'Xbox', 1);

--Consultas Tablas Relacionadas
select v.*, p.*
from videojuegos v, plataformas p
where p.codigo_videojuego = v.codigo
and ((v.descripcion like '%Guerra%') and (v.valoracion > 7))
or ((v.nombre like 'C%') and (v.valoracion > 8))
or (v.nombre like 'D%');

select p.*
from videojuegos v, plataformas p
where p.codigo_videojuego = v.codigo
and v.nombre = 'God Of War'

--Consultas con Funciones de Agregacion
select p.codigo_videojuego, count(p.id_plataforma) as total_plataformas
from plataformas p
group by p.codigo_videojuego

select Round(AVG(cast(v.valoracion as decimal)),2) as promedio_valoracion
from videojuegos v