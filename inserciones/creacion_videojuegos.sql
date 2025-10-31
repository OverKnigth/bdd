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

--Consulta
select * from videojuegos