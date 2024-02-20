DROP DATABASE IF EXISTS tienda;
CREATE DATABASE tienda CHARACTER SET utf8mb4;
USE tienda;

CREATE TABLE fabricante (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL
);

CREATE TABLE producto (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  precio DOUBLE NOT NULL,
  id_fabricante INT UNSIGNED NOT NULL,
  FOREIGN KEY (id_fabricante) REFERENCES fabricante(id)
);

INSERT INTO fabricante VALUES(1, 'Asus');
INSERT INTO fabricante VALUES(2, 'Lenovo');
INSERT INTO fabricante VALUES(3, 'Hewlett-Packard');
INSERT INTO fabricante VALUES(4, 'Samsung');
INSERT INTO fabricante VALUES(5, 'Seagate');
INSERT INTO fabricante VALUES(6, 'Crucial');
INSERT INTO fabricante VALUES(7, 'Gigabyte');
INSERT INTO fabricante VALUES(8, 'Huawei');
INSERT INTO fabricante VALUES(9, 'Xiaomi');

INSERT INTO producto VALUES(1, 'Disco duro SATA3 1TB', 86.99, 5);
INSERT INTO producto VALUES(2, 'Memoria RAM DDR4 8GB', 120, 6);
INSERT INTO producto VALUES(3, 'Disco SSD 1 TB', 150.99, 4);
INSERT INTO producto VALUES(4, 'GeForce GTX 1050Ti', 185, 7);
INSERT INTO producto VALUES(5, 'GeForce GTX 1080 Xtreme', 755, 6);
INSERT INTO producto VALUES(6, 'Monitor 24 LED Full HD', 202, 1);
INSERT INTO producto VALUES(7, 'Monitor 27 LED Full HD', 245.99, 1);
INSERT INTO producto VALUES(8, 'Portátil Yoga 520', 559, 2);
INSERT INTO producto VALUES(9, 'Portátil Ideapd 320', 444, 2);
INSERT INTO producto VALUES(10, 'Impresora HP Deskjet 3720', 59.99, 3);
INSERT INTO producto VALUES(11, 'Impresora HP Laserjet Pro M26nw', 180, 3);

-- 16
SELECT * 
FROM fabricante LIMIT 5;

-- 17
SELECT * 
FROM fabricante LIMIT 2 OFFSET 3;

-- 18
SELECT nombre, precio 
FROM producto 
ORDER BY precio LIMIT 1;

-- 19
SELECT nombre, precio 
FROM producto 
ORDER BY precio DESC LIMIT 1;

-- 20
SELECT producto.nombre
FROM producto
JOIN fabricante ON producto.id_fabricante = fabricante.id
WHERE fabricante.id = 2;

-- 21
SELECT nombre
FROM producto
WHERE precio <= 120;

-- 22
SELECT nombre
FROM producto
WHERE precio >= 400;

-- 23
SELECT nombre
FROM producto
WHERE precio < 400;

-- 24
SELECT *
FROM producto
WHERE precio >= 80 AND precio <= 300;

-- 25
SELECT *
FROM producto
WHERE precio BETWEEN 60 AND 200;

-- 26
SELECT *
FROM producto
WHERE precio > 200 AND id_fabricante = 6;