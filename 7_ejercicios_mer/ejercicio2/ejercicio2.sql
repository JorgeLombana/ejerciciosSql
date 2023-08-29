CREATE SCHEMA IF NOT EXISTS ejercicio2;
USE ejercicio2;

CREATE TABLE camioneros (
id_camionero INT NOT NULL AUTO_INCREMENT,
dni INT NOT NULL,
nombre VARCHAR(25),
telefono VARCHAR(10),
direccion VARCHAR(50),
salario INT,
poblacion VARCHAR(50),
PRIMARY KEY (id_camionero)
);

CREATE TABLE camiones (
id_camion INT AUTO_INCREMENT,
modelo_matricula DATE,
tipo VARCHAR(100),
potencia VARCHAR(25),
placa INT,
PRIMARY KEY (id_camion)
);

CREATE TABLE provincias (
id_provincia INT AUTO_INCREMENT,
codigo_provincia INT,
nombre VARCHAR(25),
PRIMARY KEY (id_provincia)
);

CREATE TABLE paquetes (
id_paquete INT NOT NULL AUTO_INCREMENT,
codigo INT,
descripcion TEXT,
destinatario VARCHAR(25),
direccion_destinatario VARCHAR(50),
id_camionero INT,
id_provincia INT,
PRIMARY KEY (id_paquete),
FOREIGN KEY (id_camionero) REFERENCES camioneros(id_camionero),
FOREIGN KEY (id_provincia) REFERENCES provincias(id_provincia)
);

CREATE TABLE uso_camiones_camioneros (
id_uso_camiones_camioneros INT AUTO_INCREMENT,
id_camion INT,
id_camionero INT,
fecha_uso_camion DATETIME UNIQUE,
PRIMARY KEY (id_uso_camiones_camioneros),
FOREIGN KEY (id_camion) REFERENCES camiones(id_camion),
FOREIGN KEY (id_camionero) REFERENCES camioneros(id_camionero)
);


INSERT INTO camioneros (dni, nombre, telefono, direccion, salario, poblacion)
VALUES
(123456789, 'Juan Pérez', '325556789', 'Carrera 123 #45-67', 1500000, 'Bogotá'),
(987654321, 'María Rodríguez', '314447890', 'Calle 56 #12-34', 1300000, 'Medellín'),
(456789123, 'Andrés Gómez', '300772345', 'Av. Principal #98-76', 1400000, 'Cali'),
(654321987, 'Laura López', '315995678', 'Diagonal 10 #32-21', 1600000, 'Barranquilla'),
(789123456, 'Carlos Ramírez', '320883456', 'Ruta 5 Km 45', 1450000, 'Cartagena');


INSERT INTO camiones (modelo_matricula, tipo, potencia, placa)
VALUES ('2022-05-10', 'Carga General', '300 HP', '123'),
('2021-11-20', 'Refrigerado', '250 HP', '456'),
('2023-03-15', 'Volquete', '350 HP', '789'),
('2020-08-05', 'Cisterna', '280 HP', '012'),
('2023-01-30', 'Plataforma', '320 HP', '345');



INSERT INTO provincias (codigo_provincia, nombre)
VALUES (1, 'Bogotá'),
(2, 'Antioquia'),
(3, 'Valle'),
(4, 'costeño mamaburra'),
(5, 'Bolívar');


INSERT INTO paquetes (codigo, descripcion, destinatario, direccion_destinatario, id_camionero)
VALUES (1001, 'accesorios', 'Ana Martínez', 'Calle 78 #23-45', 1),
(1002, 'Ropa', 'Luis García', 'Carrera 56 #10-21', 2),
(1003, 'Productos electrónicos', 'Marcela Rojas', 'Diagonal 15 #67-89', 3),
(1004, 'Juguetes', 'Diego Pérez', 'Av. Central #76-54', 4),
(1005, 'Herramientas', 'Sandra López', 'Calle 34 #5-67', 5);


INSERT INTO uso_camiones_camioneros (id_camion, id_camionero, fecha_uso_camion)
VALUES (default, default, '2023-08-15 08:00:00'),
(default, default, '2023-08-16 10:30:00'),
(default, default, '2023-08-17 12:15:00'),
(default, default, '2023-08-18 15:45:00'),
(default, default, '2023-08-19 09:20:00'); 

select * from uso_camiones_camioneros;

