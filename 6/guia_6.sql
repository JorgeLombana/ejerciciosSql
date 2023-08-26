CREATE SCHEMA IF NOT EXISTS salon_belleza;

USE salon_belleza;

CREATE TABLE clientes (
id_cliente INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(50)NOT NULL,
apellido VARCHAR(50) NULL,
telefono VARCHAR(10) NOT NULL,
fecha_nacimiento DATETIME NULL
);

CREATE TABLE empleados (
id_empleado INT AUTO_INCREMENT PRIMARY KEY,
cc VARCHAR(10) NOT NULL,
nombre VARCHAR(50)NOT NULL,
apellido VARCHAR(50) NULL,
telefono VARCHAR(10) NOT NULL,
fecha_nacimiento DATETIME NULL,	
fecha_contratacion DATETIME NOT NULL,
genero VARCHAR(1) NULL
);

CREATE TABLE servicios (
id_servicio INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
descripcion TEXT NOT NULL,
costo INT NOT NULL
);

CREATE TABLE empleados_servicios (
id_empleados_servicios INT AUTO_INCREMENT,
id_servicio INT,
id_empleado INT,
PRIMARY KEY (id_empleados_servicios),
CONSTRAINT FK_servicio_empleados_servicios
FOREIGN KEY (id_servicio) REFERENCES servicios(id_servicio),
CONSTRAINT FK_empleado_empleados_servicios 
FOREIGN KEY (id_empleado) REFERENCES empleados(id_empleado)  
);

CREATE TABLE cita_servicio (
id_cita_servicio INT AUTO_INCREMENT NOT NULL,
fecha_hora DATETIME NOT NULL,
id_cliente INT NOT NULL,
id_empleado INT NOT NULL,
id_servicio INT NOT NULL,
PRIMARY KEY (id_cita_servicio),
CONSTRAINT FK_cliente_cita_cervicio FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
CONSTRAINT FK_empleado_cita_servicio FOREIGN KEY (id_empleado) REFERENCES empleados(id_empleado),
CONSTRAINT FK_servicio_cita_servicio FOREIGN KEY (id_servicio) REFERENCES servicios(id_servicio)
);

INSERT INTO servicios (nombre, descripcion, costo) 
VALUES ('manicure', 'Servicio estético para manos y uñas. Involucra corte, limado, esmaltado y cuidado de uñas, mejorando su aspecto y salud.', 12000),
('pedicura', 'La pedicura es un tratamiento estético para los pies y uñas. Implica cortar, limar, embellecer uñas y suavizar la piel. Ideal para pies cuidados y atractivos.', 15000),
('corte_hombre', 'El corte de cabello para hombres es un servicio de peluquería que implica recortar y estilizar el cabello de acuerdo a preferencias personales. Se busca lograr un look deseado y favorecedor para el cliente.', 10000),
('Manicura básica', 'Corte, limado y esmaltado de uñas para manos. Incluye un masaje relajante.', 15000),
('Pedicura spa', 'Corte, limado y esmaltado de uñas para pies. Incluye exfoliación y masaje en los pies.', 18000),
('Corte de cabello', 'Corte y estilizado de cabello de acuerdo a tus preferencias. Limpieza y secado incluidos.', 12000),
('Tinte de cabello', 'Aplicación de tinte para cambiar el color del cabello. Incluye lavado y acondicionador.', 20000),
('Tratamiento facial revitalizante', 'Limpieza facial profunda, exfoliación y máscara revitalizante para la piel.', 25000),
('Depilación de cejas', 'Modelado y depilación de cejas para realzar la expresión facial.', 8000),
('Masaje de cuerpo completo', 'Masaje relajante que abarca todo el cuerpo para aliviar tensiones y estrés.', 30000),
('Maquillaje para eventos', 'Maquillaje profesional para ocasiones especiales como bodas y fiestas.', 18000),
('Tratamiento capilar hidratante', 'Hidratación profunda para el cabello seco y dañado. Incluye masaje en el cuero cabelludo.', 22000),
('Uñas acrílicas', 'Aplicación de uñas acrílicas con diseños y colores personalizados.', 25000),
('Extensiones de pestañas', 'Aplicación de pestañas postizas para lograr una mirada más intensa y definida.', 16000),
('Maquillaje de cejas semipermanente', 'Relleno de cejas con pigmentos semipermanentes para una apariencia natural.', 15000),
('En el c', 'Nuestro servicio exclusivo "En el c" te ofrece un cambio de imagen completo, incluyendo corte de cabello, maquillaje, y manicura. ¡Saldrás luciendo y sintiéndote renovado/a!', 35000);


INSERT INTO empleados (nombre, apellido, telefono, fecha_nacimiento, fecha_contratacion, cc, genero)
VALUES ('jorge','lombana','3132781313','2000-12-01','2022-01-23','1006223435','m'),
 ('mario','bros','3108791323','1999-06-21','2023-06-23','1002323435','m'),
 ('Ana', 'García', '3123456789', '1995-03-15', '2020-02-10', '1234567890', 'f'),
 ('Luis', 'Martínez', '3145678901', '1998-09-22', '2021-04-05', '2345678901', 'm'),
 ('María', 'López', '3101234567', '2001-11-10', '2019-08-18', '3456789012', 'f'),
 ('Carlos', 'Pérez', '3178901234', '1994-07-06', '2022-03-28', '4567890123', 'm'),
 ('Laura', 'Hernández', '3167890123', '1997-05-12', '2023-01-15', '5678901234', 'f'),
 ('Pedro', 'Gómez', '3156789012', '2000-02-28', '2020-11-20', '6789012345', 'm'),
 ('Ana', 'Ruíz', '3189012345', '1993-12-09', '2021-07-11', '7890123456', 'f'),
 ('Santiago', 'Díaz', '3145678901', '1996-08-17', '2019-05-02', '8901234567', 'm'),
 ('Valentina', 'Rodríguez', '3101234567', '1999-04-25', '2022-12-07', '9012345678', 'f'),
 ('Mateo', 'Vargas', '3178901234', '2002-10-05', '2023-09-14', '0123456789', 'm'),
 ('Isabella', 'Ramírez', '3167890123', '1991-01-08', '2020-06-30', '1234567890', 'f'),
 ('Daniel', 'López', '3156789012', '1994-06-18', '2021-03-09', '2345678901', 'm'),
 ('Mariana', 'González', '3189012345', '1997-09-14', '2019-10-22', '3456789012', 'f');
 
 
 INSERT INTO clientes (nombre, apellido, telefono, fecha_nacimiento) VALUES
 ('juana','marcela','3107812313','1978-07-23'),
 ('maria','cuki','3212891323','1998-01-09'),
 ('jorge','armando','3102829324','2001-12-23'),
 ('Carlos', 'Pérez', '3123456789', '1990-05-15'),
 ('Laura', 'González', '3145678901', '1985-11-20'),
 ('Andrés', 'Ruíz', '3189012345', '2002-02-08'),
 ('Ana', 'Hernández', '3101234567', '1996-07-12'),
 ('Luis', 'Díaz', '3178901234', '1993-04-28'),
 ('María', 'López', '3167890123', '1999-09-01'),
 ('Paula', 'Martínez', '3156789012', '2004-03-07'),
 ('Santiago', 'Vargas', '3112345678', '1992-12-15'),
 ('Valentina', 'Ramírez', '3190123456', '1997-08-22'),
 ('Daniel', 'Fernández', '3148901234', '1991-01-30'),
 ('Camila', 'Gómez', '3126789012', '2000-06-18'),
 ('Mateo', 'Pérez', '3171234567', '1994-10-25');
 
 
INSERT INTO empleados_servicios (id_empleado, id_servicio) VALUES 
(1, 2),
(5, 12),
(15, 2),
(3, 2),
(3, 7),
(14, 12),
(7, 5),
(9, 1),
(10, 9),
(2, 6),
(6, 14),
(12, 11),
(8, 8),
(11, 3),
(4, 13);


INSERT INTO cita_servicio (fecha_hora, id_cliente, id_empleado, id_servicio) VALUES ('2023-09-02 12:30:00',12,3,4),
('2023-10-04 07:00:00',4,2,14),
('2023-08-29 17:55:00',1,1,15),
('2023-08-25 15:00:00',1,14,2),
('2023-07-15 10:00:00', 7, 5, 12),
('2023-08-18 14:30:00', 8, 3, 8),
('2023-09-20 16:45:00', 6, 1, 7),
('2023-10-10 11:15:00', 9, 4, 1),
('2023-08-05 09:30:00', 11, 2, 10),
('2023-07-25 08:00:00', 5, 5, 5),
('2023-09-15 13:45:00', 3, 1, 3),
('2023-10-30 10:30:00', 12, 4, 9),
('2023-08-10 16:15:00', 10, 2, 6),
('2023-09-05 15:30:00', 4, 3, 11);

SELECT *
FROM empleados 
INNER JOIN cita_servicio ON empleados.id_empleado = cita_servicio.id_empleado;

SELECT empleados.nombre empleao, empleados.genero sex, cita_servicio.id_cliente cliente, cita_servicio.id_servicio servicio
FROM empleados 
INNER JOIN cita_servicio ON empleados.id_empleado = cita_servicio.id_empleado;

SELECT *
FROM empleados 
LEFT JOIN cita_servicio ON empleados.id_empleado = cita_servicio.id_empleado;

SELECT *
FROM empleados 
RIGHT JOIN cita_servicio ON empleados.id_empleado = cita_servicio.id_empleado;



















