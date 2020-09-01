CREATE TABLE acamica.persona(
id INT PRIMARY KEY AUTO_INCREMENT,
apellido VARCHAR (60),
nombre VARCHAR(60) NOT NULL,
dni INT UNSIGNED NOT NULL
);

insert acamica.persona(apellido,nombre,dni)
values
('hernandez','anny','1098700182'),
('soto','luz','1022455856'),
('herrera','melany','245545458');

select * from acamica.persona; 
select * from acamica.persona where id='1';
select * from acamica.persona where nombre like '%u%';
select * from acamica.persona where dni like '10%';
