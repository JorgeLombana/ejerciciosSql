CREATE DATABASE IF NOT EXISTS ejercicio4;

USE ejercicio4;

CREATE TABLE clientes (
id_cliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
direccion VARCHAR(100) NOT NULL,
ciudad VARCHAR(100),
telefono VARCHAR(10) NOT NULL
)ENGINE=InnoDB;

CREATE TABLE carros (
id_carro INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
matricula VARCHAR(10) NOT NULL UNIQUE,
marca VARCHAR(50) NOT NULL,
modelo VARCHAR(50) NOT NULL,
color VARCHAR(25),
precio_venta DECIMAL(10,2) NOT NULL DEFAULT 0.00
)ENGINE=InnoDB;

CREATE TABLE revisiones (
id_revision INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
codigo INT NOT NULL ,
cambio_filtro TINYINT NOT NULL,
cambio_aceite TINYINT NOT NULL,
cambio_frenos TINYINT NOT NULL,
id_carro INT NOT NULL,
CONSTRAINT Fk_id_carro_revision FOREIGN KEY (id_carro) REFERENCES carros(id_carro)
)ENGINE=InnoDB;

CREATE TABLE compras(
id_compra INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
id_cliente INT,
id_carro INT,
CONSTRAINT fk_id_cliente_compras FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
CONSTRAINT fk_id_carro_compras FOREIGN KEY (id_carro) REFERENCES carros(id_carro)
)ENGINE=InnoDB;

-- cliente compra carros, carro comprado 1cliente    m a 1
-- carros tienen muchas revisiones    1 a m

INSERT INTO clientes (nombre, direccion, ciudad, telefono)
VALUES('ana garcía', 'calle 123', 'garzón', '1234567890'),
('juan pérez', 'carrera 45', 'garzón', '9876543210'),
('maría rodríguez', 'avenida 7', 'garzón', '5554443333'),
('carlos martínez', 'calle 20', 'garzón', '1112223333'),
('laura gómez', 'carrera 12', 'garzón', '9998887777');

INSERT INTO carros (matricula, marca, modelo, color, precio_venta)
VALUES('abc123', 'toyota', 'corolla', 'azul', 25000.00),
('def456', 'honda', 'civic', 'gris', 22000.00),
('ghi789', 'ford', 'focus', 'rojo', 18000.00),
('jkl012', 'chevrolet', 'cruze', 'blanco', 20000.00),
('mno345', 'nissan', 'sentra', 'negro', 23000.00);

INSERT INTO revisiones (codigo, cambio_filtro, cambio_aceite, cambio_frenos, id_carro)
VALUES (1, 1, 1, 0, 1),
(2, 1, 1, 1, 2),
(3, 0, 1, 0, 3),
(4, 1, 0, 1, 4),
(5, 0, 0, 0, 5);

INSERT INTO compras (id_cliente, id_carro)
VALUES(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);



