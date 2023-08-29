CREATE SCHEMA IF NOT EXISTS ejercicio5;

 USE ejercicio5;
 
 CREATE TABLE pacientes (
 id_paciente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
 codigo INT NOT NULL UNIQUE,
 nombre VARCHAR(50) NOT NULL,
 apellido VARCHAR(50) NOT NULL,
 direccion VARCHAR(100),
 poblacion VARCHAR(50),
 municipio VARCHAR(50),
 codigo_postal VARCHAR(6),
 telefono VARCHAR(10) NOT NULL,
 fecha_nacimiento DATE NOT NULL
 )ENGINE=InnoDB;
 
 CREATE TABLE medicos (
id_medico INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
codigo INT NOT NULL UNIQUE,
nombre VARCHAR(50) NOT NULL,
apellido VARCHAR(50) NOT NULL,
telefono VARCHAR(10),
especialidad VARCHAR(50) NOT NULL
 )ENGINE=InnoDB;
 
 CREATE TABLE ingresos (
id_ingreso INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
id_paciente INT NOT NULL,
id_medico INT NOT NULL,
fecha DATETIME NOT NULL,
habitacion INT NOT NULL,
cama INT NOT NULL,
CONSTRAINT fk_paciente_ingreso FOREIGN KEY (id_paciente) REFERENCES pacientes(id_paciente),
CONSTRAINT fk_medio_ingreso FOREIGN KEY (id_medico) REFERENCES medicos(id_medico)
 )ENGINE=InnoDb;
 
 -- medico antiende varios ingresos , pero el ingreso de un paciente solo puede ser 
 -- atendido por UN medico a la vez. medico muchos pacientes, paciente un solo medico 
 -- un paciente puede realizar varios ingresos a la clinica 
 
 -- medico 1 N ingresos
 -- paciente 1 N ingresos
 
INSERT INTO pacientes (codigo, nombre, apellido, direccion, poblacion, municipio, codigo_postal, telefono, fecha_nacimiento)
VALUES (1001, 'María', 'Pérez', 'Calle 10', 'Garzón', 'Garzón', '411001', '1234567890', '1990-05-15'),
(1002, 'Juan', 'Gómez', 'Carrera 8', 'Garzón', 'Garzón', '411001', '9876543210', '1985-08-21'),
(1003, 'Ana', 'Rodríguez', 'Avenida 5', 'Garzón', 'Garzón', '411001', '5554443333', '1992-11-03'),
(1004, 'Carlos', 'Martínez', 'Calle 15', 'Garzón', 'Garzón', '411001', '1112223333', '1978-02-10'),
(1005, 'Laura', 'Hernández', 'Carrera 3', 'Garzón', 'Garzón', '411001', '9998887777', '2000-07-08');

INSERT INTO medicos (codigo, nombre, apellido, telefono, especialidad)
VALUES (2001, 'Dr. Ricardo', 'Guzmán', '5551112222', 'Cardiología'),
(2002, 'Dra. María', 'López', '5553334444', 'Pediatría'),
(2003, 'Dr. Luis', 'Herrera', '5555556666', 'Cirugía General'),
(2004, 'Dra. Ana', 'Sánchez', '5557778888', 'Ginecología'),
(2005, 'Dr. Juan', 'Ramírez', '5559990000', 'Medicina Interna');

INSERT INTO ingresos (id_paciente, id_medico, fecha, habitacion, cama)
VALUES (1, 1, '2023-08-15 10:00:00', 101, 1),
(2, 2, '2023-08-16 14:30:00', 203, 2),
(3, 3, '2023-08-17 09:15:00', 105, 3),
(4, 4, '2023-08-18 16:45:00', 204, 4),
(5, 5, '2023-08-19 11:30:00', 102, 1);

 
 
 
 
 
 
 