CREATE DATABASE sena;
USE sena;
CREATE TABLE aprendices(
id INT (20) UNIQUE PRIMARY KEY,
nombre_apellido VARCHAR (50) UNIQUE NOT NULL,
correo VARCHAR(50) UNIQUE NOT NULL,
edad INT UNSIGNED NOT NULL,
direccion VARCHAR(20) NOT NULL,
ciudad VARCHAR(20) NOT NULL,
estado ENUM('Activo', 'Inactivo') DEFAULT 'Inactivo',
creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO aprendices (id, nombre_apellido, correo, edad, direccion, ciudad, estado)
VALUES
(1, 'Juan Pérez', 'juan.perez@example.com', 22, 'Calle 123', 'Bogotá', 'Activo'),
(2, 'María Gómez', 'maria.gomez@example.com', 25, 'Carrera 45', 'Medellín', 'Activo'),
(3, 'Carlos Sánchez', 'carlos.sanchez@example.com', 23, 'Avenida 67', 'Cali', 'Activo'),
(4, 'Ana Martínez', 'ana.martinez@example.com', 24, 'Carrera 89', 'Barranquilla', 'Activo'),
(5, 'Luis Herrera', 'luis.herrera@example.com', 21, 'Calle 10', 'Cartagena', 'Activo'),
(6, 'Elena Vargas', 'elena.vargas@example.com', 26, 'Carrera 23', 'Bucaramanga', 'Inactivo'),
(7, 'Pedro Torres', 'pedro.torres@example.com', 20, 'Avenida 12', 'Cúcuta', 'Inactivo'),
(8, 'Carmen López', 'carmen.lopez@example.com', 22, 'Calle 50', 'Ibagué', 'Activo'),
(9, 'Miguel Ramírez', 'miguel.ramirez@example.com', 27, 'Carrera 78', 'Pereira', 'Activo'),
(10, 'Paola Jiménez', 'paola.jimenez@example.com', 24, 'Avenida 34', 'Santa Marta', 'Inactivo'),
(11, 'Hugo Silva', 'hugo.silva@example.com', 23, 'Calle 11', 'Pasto', 'Activo'),
(12, 'Laura Nuñez', 'laura.nunez@example.com', 21, 'Carrera 56', 'Manizales', 'Inactivo'),
(13, 'Roberto Castro', 'roberto.castro@example.com', 25, 'Avenida 98', 'Neiva', 'Activo'),
(14, 'Isabel Mendoza', 'isabel.mendoza@example.com', 22, 'Calle 78', 'Armenia', 'Activo'),
(15, 'Andrés Medina', 'andres.medina@example.com', 28, 'Carrera 12', 'Villavicencio', 'Inactivo');

SELECT id FROM aprendices;
SELECT nombre_apellido, edad FROM aprendices;
SELECT nombre_apellido, edad, estado FROM aprendices;
SELECT id FROM aprendices\G;
SELECT nombre_apellido, edad, estado FROM aprendices\G;
SELECT * FROM aprendices\G;
SELECT * FROM aprendices WHERE correo = 'isabel.mendoza@example.com';
SELECT * FROM aprendices WHERE edad >= 24;
SELECT * FROM aprendices WHERE creado > '2023-07-21 16:00:01';
SELECT * FROM aprendices WHERE id IN (5, 3);
SELECT * FROM aprendices ORDER BY edad;
SELECT * FROM aprendices ORDER BY edad DESC;
SELECT nombre_apellido, correo FROM aprendices ORDER BY edad DESC
LIMIT 1;
SELECT * FROM aprendices WHERE correo LIKE '%.com';
SELECT * FROM aprendices WHERE correo LIKE 'don%';