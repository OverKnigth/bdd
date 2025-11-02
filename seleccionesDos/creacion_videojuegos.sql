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
values(07563, 'Call of Duty', 'juego de terror', 9);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(85421, 'Free Fire', 'juego de accion', 7);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(93475, 'Call of Clans', 'juego de terror', 10);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(15983, 'Fornite', 'juego de suspenso', 10);

insert into videojuegos(codigo, nombre, valoracion)
values(35784, 'Minecraft', 3);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(54682, 'Tom and Jerry', 'juego de comedia', 8);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(01456, 'Ajedres', 'juego de psicoligia', 6);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(70215, 'God of Ward', 'juego de aprendisaje', 7);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(63240, 'Crash', 'juego de deprote', 9);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(63549, 'Dragon Ball', 'juego de baile', 8);

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

--Eliminaciones
--Eliminar todos los videojuegos cuya valoracion sea menor que 7
delete from videojuegos 

--SELECCIONES 2
--Seleccionar los videojuegos que su nombre contengan la letra C o una valoracion de 7
select * from videojuegos where (nombre like '%c%' or nombre like '%C%') or (valoracion = 7)

--Seleccionar los videojuegos con un codigo entre 3 y 7 o una valoracion de 7
select * from videojuegos where (codigo between 3 and 7) or (valoracion = 7)

--Seleccionar los videojuegos de guerra con una valoracion mayor a 7 y que su nombre empiece con C o los videojuegos con una valoracion mayor a 8 y su nombre empiece por D
select * from videojuegos where (valoracion > 7 and nombre like 'C%') or (valoracion > 8 and nombre like 'D%')