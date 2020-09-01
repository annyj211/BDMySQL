# Creación de tablas
CREATE TABLE acamica.bandas(
id INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR (60) NOT NULL,
integrantes INT(2) NOT NULL,
fecha_inicio date NOT NULL,
fecha_separacion date,
pais VARCHAR(60) NOT NULL
);

CREATE TABLE acamica.canciones(
id INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR (60) NOT NULL,
duracion INT(10) NOT NULL,
album INT(10) NOT NULL,
banda INT(10) NOT NULL,
fecha_publicacion date NOT NULL
);

CREATE TABLE acamica.albumes(
id INT PRIMARY KEY AUTO_INCREMENT,
nombre_album VARCHAR(500) NOT NULL,
banda INT(10) NOT NULL,
fecha_publicacion date NOT NULL
);
# Insertar información en las tablas 
insert acamica.bandas(nombre,integrantes,fecha_inicio,fecha_separacion,pais)
values
('Dream Theater',5,'1985-10-01',null,'EEUU'),
('Guns N Roses',7,'1985-10-01',null,'EEUU');
select * from acamica.bandas;

insert acamica.canciones(nombre,duracion,album,banda,fecha_publicacion)
values
('Sweet Child o Mine','555',1,2,'1988-10-01'),
('Out Ta Get Me','420',1,2,'1988-10-01'),
('A Change Of Seasons','2306',3,1,'1990-06-09'),
('A Fortune in Lies','512',2,1,'1990-06-09');
select * from acamica.canciones;

insert acamica.albumes(nombre_album,banda,fecha_publicacion)
values
('Sweet Child o Mine',2,'1988-10-01'),
('Mechanic Records',1,'1990-06-09'),
('East West',1,'1990-06-09');
select * from acamica.albumes;

# Consultar información en las tablas 
select * from acamica.bandas;
select * from acamica.bandas 
where pais='Colombia';
select * from acamica.bandas
where integrantes=1;
select * from acamica.canciones
where fecha_publicacion >='2015-01-01' ;
select * from acamica.canciones
where duracion >='300' ;
select * from acamica.albumes;






