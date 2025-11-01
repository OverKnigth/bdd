--Tabla Videojuegos

create table videojuegos(
	codigo int not null,
	nombre varchar(100) not null,
	descripcion varchar(300),
	valoracion int not null,
	constraint videojuegos_pk primary key(codigo)
);

drop table videojuegos

--Inserciones
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(100, 'Halo', 'Juego de accion de Xbox', 8)

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(101, 'God Of War', 'Juego de accion de PlayStation', 10)

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(102, 'WWE 2K25', 'Juego de Lucha Libre', 9)

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(103, 'Mario Kart', 'Juego de carreras', 9)

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(104, 'Fortnite', 'Juego tipo Battle Royale', 10)

insert into videojuegos(codigo, nombre, valoracion)
values(105, 'Pokemon', 10)

insert into videojuegos(codigo, nombre, valoracion)
values(106, 'Fifa', 9)

insert into videojuegos(codigo, nombre, valoracion)
values(107, 'Mortal Kombat', 10)

insert into videojuegos(codigo, nombre, valoracion)
values(108, 'COD', 10)

insert into videojuegos(codigo, nombre, valoracion)
values(109, 'Crash Bandicoot', 9)

insert into videojuegos(codigo, nombre, valoracion)
values(110, 'Plantas vs Zombies', 7)

insert into videojuegos(codigo, nombre, valoracion)
values(111, 'Free Fire', 8)

--Consulta
select * from videojuegos

--Consultar todos los videojuegos que inicien con la letra C
select * from videojuegos where nombre like 'C%'

--Consultar todos los videojuegos cuya valoracion este entre 9 y 10
select * from videojuegos where valoracion between '9' and '10'

--Consultar todos los videojuegos con descripcion NULL
select * from videojuegos where descripcion is null

--ACTUALIZACIONES
--Actualizar todas las descripciones de los juego con valaracion mayor a 9 por Mejor Puntuado
update videojuegos set descripcion='Mejor Puntuado' where valoracion > 9