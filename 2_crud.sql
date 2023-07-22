--CREATE DATABASE nombreDB;(creamos una base de datos)
CREATE DATABASE claseSQL;

--SHOW DATABASES; (Nos muestra las bases de datos creadas)
SHOW DATABASES;

--USE databaseName;(Usamos una bases de datos existente)
USE claseSQL;

--SHOW TABLES; (Nos muestra las tablas que hay en la bases de datos seleccionada)
SHOW TABLES;

--CREATE TABLE nombreTabla(todos los datos);(creamos una tabla en la db seleccionada)
CREATE TABLE aprendices(
  id INT,
  nombre_usuario VARCHAR(50),
  correo VARCHAR(50),
  edad INT,
  estado ENUM('activo','inactivo'),
  intereses TEXT,
  creado TIMESTAMP
);

-- INT (Para tipos de datos enteros)
-- VARCHAR (Nos permite limitar la cantidad de caracteres alfanuméricos de
-- una cadena al ingresar)
-- ENUM (permite limitar las opciones de ingreso ejemplo: Si o No, Activo o Inactivo, Aprobado o Rechazado)
-- TEXT (Nos permite almacenar un mayor número de caracteres)
-- TIMESTAMP (Nos permite almacenar la fecha exacta,
-- Año-Mes-Día-Hora-Minutos-Segundos)

--DESC tablaName; (DESC aprendices; para analizar como está creada la tabla, evidenciando cantidad de columnas, tipos de datos entre otros, )
DESC aprendices;

--DROP TABLE tablaName; (DROP TABLE se usa para eliminar una tabla existente en una base de datos. )
DROP TABLE arpendices;


CREATE TABLE aprendices(
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre_usuario VARCHAR(50) UNIQUE NOT NULL,
  correo VARCHAR(50) UNIQUE NOT NULL,
  edad INT UNSIGNED NOT NULL,
  estado ENUM('activo','inactivo') DEFAULT 'inactivo',
  intereses TEXT,
  creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO aprendices (nombre_usuario, correo, edad,estado, intereses)
VALUES('jorge', 'jorge@gmail.com',12,'activo','con todo el power');

SELECT * FROM aprendices;

INSERT INTO aprendices (nombre_usuario, correo, edad, estado, intereses)
VALUES ('maria', 'maria@gmail.com', 25, 'activo', 'aprendizaje constante');

INSERT INTO aprendices (nombre_usuario, correo, edad, estado, intereses)
VALUES ('carlos', 'carlos@gmail.com', 18, 'inactivo', 'programación y música');

INSERT INTO aprendices (nombre_usuario, correo, edad, estado, intereses)
VALUES ('laura', 'laura@gmail.com', 30, 'activo', 'arte y pintura');

INSERT INTO aprendices (nombre_usuario, correo, edad, estado, intereses)
VALUES ('pedro', 'pedro@gmail.com', 22, 'activo', 'deportes y viajes');

INSERT INTO aprendices (nombre_usuario, correo, edad, estado, intereses)
VALUES ('ana', 'ana@gmail.com', 19, 'inactivo', 'lectura y cine');

DROP DATABASE claseSQL;