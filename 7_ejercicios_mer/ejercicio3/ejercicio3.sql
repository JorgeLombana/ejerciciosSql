CREATE SCHEMA IF NOT EXISTS ejercicio3;
USE ejercicio3;
CREATE TABLE profesores (
id_profesor INT NOT NULL AUTO_INCREMENT,
dni INT,
nombre VARCHAR(25),
direccion VARCHAR(50),
telefono VARCHAR(10),
PRIMARY KEY (id_profesor)
); 

CREATE TABLE alumnos (
id_alumno INT NOT NULL AUTO_INCREMENT,
n_expedientes INT,
nombre VARCHAR(25),
apellido VARCHAR(25),
fecha_nacimiento DATE,
id_curso TINYINT,
delegado TINYINT,
PRIMARY KEY (id_alumno)
);

CREATE TABLE modulos (
id_modulo INT NOT NULL AUTO_INCREMENT,
codigo INT,
nombre VARCHAR(25),
id_profesor INT,
id_alumno INT,
PRIMARY KEY (id_modulo),
CONSTRAINT fk_profesor_modulo FOREIGN KEY (id_profesor) REFERENCES profesores(id_profesor),
CONSTRAINT fk_alumno_modulo FOREIGN KEY (id_alumno) REFERENCES alumnos(id_alumno)
);

INSERT INTO profesores (dni, nombre, direccion, telefono) VALUES
(123456789, 'Juan Pérez', 'Calle 123, Bogotá', '3211234567'),
(987654321, 'María Gómez', 'Avenida 456, Medellín', '3109876543'),
(567890123, 'Carlos Rodríguez', 'Carrera 789, Cali', '3155678901'),
(345678901, 'Ana López', 'Calle 456, Barranquilla', '3003456789'),
(678901234, 'Luis Ramírez', 'Diagonal 567, Cartagena', '3186789012');


INSERT INTO alumnos (id_alumno, n_expedientes, nombre, apellido, fecha_nacimiento) VALUES
(default,1001, 'Camila', 'García', '2000-05-10'),
(default,1002, 'Mateo', 'Martínez', '2001-02-15'),
(default, 1003, 'Valentina', 'Pérez', '2000-11-20'),
(default, 1004, 'Santiago', 'Rodríguez', '2002-07-03'),
(default, 1005, 'Isabella', 'López', '2001-09-18');


INSERT INTO modulos (codigo, nombre, id_profesor, id_alumno) VALUES
(101, 'Matemáticas', 1, 1),
(102, 'Historia', 3, 2),
(103, 'Ciencias Naturales', 2, 3),
(104, 'Lenguaje', 4, 4),
(105, 'Arte', 5, 5);

-- profes imparten modulos, un módulo imparte un profe
-- alumno matriculado 1/más módulos
-- curso tiene alumnos, curso tiene 1 delegado









