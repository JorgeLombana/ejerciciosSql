CREATE SCHEMA IF NOT EXISTS ejercicio7;

USE EJERCICIO7;


CREATE TABLE clientes (
id_cliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
saldo INT,
limite_credito INT CHECK(limite_credito > 3000000),
descuento INT
)ENGINE=InnoDB;

CREATE TABLE direcciones (
id_direccion INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
id_cliente INT,
numero VARCHAR(25),
calle VARCHAR(25),
comuna VARCHAR(25),
ciudad VARCHAR(50),
CONSTRAINT fK_cliente_direccion FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
)ENGINE=InnoDB;

CREATE TABLE fabricas (
id_fabrica INT UNIQUE NOT NULL AUTO_INCREMENT PRIMARY KEY,
telefono VARCHAR(10),
articulos_total_provee INT, -- ARTICULOS (TOTAL) PROVEE LA FABRICA
alternativas VARCHAR(100) -- FABRICAS QUE FABRICAN ARTICULOS PARA ESTA EMPRESA
)ENGINE=InnoDB;

CREATE TABLE articulos (
id_articulo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
id_fabrica INT, -- FABRICA QUE LO DISTRIBUYE
existencia_en_fabrica INT, -- CANTIDAD QUE TIENE LA FABRICA
descripcion TEXT,
CONSTRAINT fk_fabrica_articulo FOREIGN KEY (id_fabrica) REFERENCES fabricas(id_fabrica)
)ENGINE=InnoDb;

CREATE TABLE pedidos (
id_pedido INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
id_cliente INT,
id_direccion_envio INT,
fecha_pedido DATETIME,
id_articulo INT,
cantidad INT,
CONSTRAINT fk_cliente_pedido FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
CONSTRAINT fk_direccion_envio_pedido FOREIGN KEY (id_direccion_envio) REFERENCES direcciones(id_direccion),
CONSTRAINT fk_articulo_pedido FOREIGN KEY (id_articulo) REFERENCES articulos(id_articulo)
)ENGINE=InnoDB;

INSERT INTO clientes (saldo, limite_credito, descuento)
VALUES (50000, 3500000, 10),
(75000, 4000000, 15),
(100000, 5000000, 20),
(25000, 3200000, 5),
(80000, 3800000, 12);

INSERT INTO direcciones (id_cliente, numero, calle, comuna, ciudad)
VALUES (1, '123', 'Carrera 1', 'Usaquén', 'Bogotá'),
(2, '456', 'Avenida 2', 'La Candelaria', 'Bogotá'),
(3, '789', 'Calle Principal', 'Versalles', 'Cali'),
(4, '101', 'Calle 4', 'Centro', 'Barranquilla'),
(5, '202', 'Calle Central', 'Getsemaní', 'Cartagena');

INSERT INTO fabricas (telefono, articulos_total_provee, alternativas)
VALUES ('3131234567', 500, 'Samsung, LG'),
('3102345678', 800, 'Apple, Sony'),
('3133456789', 700, 'Huawei, Xiaomi'),
('3104567890', 600, 'Motorola, Nokia'),
('3135678901', 400, 'OnePlus, Oppo');

INSERT INTO articulos (id_fabrica, existencia_en_fabrica, descripcion)
VALUES(1, 100, 'Samsung Galaxy S21'),
(2, 150, 'iPhone 13 Pro'),
(3, 200, 'Huawei P40'),
(4, 80, 'Motorola G9 Plus'),
(5, 120, 'OnePlus 9');

INSERT INTO pedidos (id_cliente, id_direccion_envio, fecha_pedido, id_articulo, cantidad)
VALUES (1, 1, '2023-08-28 10:00:00', 1, 5),
(2, 2, '2023-08-28 11:30:00', 2, 3),
(3, 3, '2023-08-28 12:45:00', 3, 2),
(4, 4, '2023-08-28 13:15:00', 4, 1),
(5, 5, '2023-08-28 14:30:00', 5, 4);


