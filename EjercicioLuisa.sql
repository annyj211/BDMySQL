CREATE TABLE nuevabd.banda(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(60) NOT NULL,
    integrantes INT NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_separacion DATE,
    pais VARCHAR(60) NOT NULL
);

CREATE TABLE nuevabd.canciones(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(60) NOT NULL,
    duracion INT NOT NULL,
    album INT NOT NULL,
    banda INT NOT NULL,
    fecha_publicacion DATE NOT NULL
);

CREATE TABLE nuevabd.albumes(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre_album VARCHAR(60) NOT NULL,
    banda INT NOT NULL,
    fecha_publicacion DATE NOT NULL
);
SELECT * FROM banda;
INSERT INTO bandas ( nombre, integrantes, fecha_inicio,fecha_separacion,pais)
VALUES ("Aterciopelados", 2, "1993-01-24",null,"Colombia"),
("The Mills", 6, "2007-04-06",null,"Colombia");

SELECT * FROM canciones;
INSERT INTO canciones ( nombre, duracion, album,banda,fecha_publicacion)
VALUES ("Baracunatana", 231,1,1,"1996-05-15"),
("Florecita rockera", 301, 2,1,"1995-06-15"),
("365", 415, 3,2,"2014-01-01"),
("Guadalupe", 430, 3,2,"2014-01-01");

SELECT * FROM albumes;
INSERT INTO albumes ( nombre_album, banda, fecha_publicacion)
VALUES ("La pipa de la paz", 1, "1996-05-15"),
("El dorado", 1, "1995-06-15"),
("Guadalupe", 2, "2014-01-01");