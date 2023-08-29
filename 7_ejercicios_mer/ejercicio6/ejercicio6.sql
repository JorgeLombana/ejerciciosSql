
CREATE SCHEMA IF NOT EXISTS ejercicio6;

USE EJERCICIO6;

CREATE TABLE proveedores (
id_proveedor INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
rut  INT NOT NULL,
nombre VARCHAR(50) NOT NULL,
direccion VARCHAR(100) NOT NULL, 
telefono VARCHAR(10) NOT NULL,
pagina_web TEXT
)ENGINE=InnoDB;

CREATE TABLE clientes (
id_cliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
rut  INT NOT NULL,
nombre VARCHAR(50) NOT NULL
)ENGINE=InnoDB;

CREATE TABLE telefonos (
id_telefono INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
numero_telefono VARCHAR(10) NOT NULL,
id_cliente INT,
FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
)ENGINE=InnoDB;

CREATE TABLE direcciones (
id_direccion INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
calle VARCHAR(25) NOT NULL,
numero VARCHAR(25) NOT NULL,
comuna VARCHAR(25) NOT NULL,
ciudad VARCHAR(25) NOT NULL,
id_cliente INT,
FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
)ENGINE=InnoDB;

CREATE TABLE categoria(
id_categoria INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
descripcion TEXT
)ENGINE=InnoDB;

RENAME TABLE categoria TO categorias;

CREATE TABLE productos (
id_producto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
precio_actual DECIMAL(10,2) NOT NULL,
stock INT,
id_proveedor INT,
id_categoria INT,
CONSTRAINT fk_proveedor_producto FOREIGN KEY (id_proveedor) REFERENCES proveedores(id_proveedor),
CONSTRAINT fk_categoria_producto FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
)ENGINE=InnoDB;

CREATE TABLE detalles_ventas (
id_detalle_venta INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
precio_momento_venta DECIMAL(10,2),
cantidad INT,
id_producto INT,
monto_total DECIMAL(10,2),
CONSTRAINT fk_producto_detalle_venta FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
)ENGINE=InnoDB;

CREATE TABLE ventas_general (
id_venta INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
fecha DATETIME NOT NULL,
id_cliente INT,
descuento DECIMAL(10,2),
monto_final DECIMAL(10,2),
id_detalle_venta INT,
CONSTRAINT fk_cliente_venta FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
CONSTRAINT fk_id_detalle_venta_venta_general FOREIGN KEY (id_detalle_venta) REFERENCES detalles_ventas(id_detalle_venta)
)ENGINE=InnoDB;

INSERT INTO proveedores (rut, nombre, direccion, telefono, pagina_web)
VALUES (123456789, 'proveedor uno', 'calle 123, comuna 1', '3001234567', 'www.proveedoruno.com'),
(987654321, 'proveedor dos', 'av. principal, comuna 2', '3002345678', 'www.proveedordos.com'),
(345678901, 'proveedor tres', 'carrera 4, comuna 3', '3003456789', 'www.proveedortres.com'),
(456789012, 'proveedor cuatro', 'calle 10, comuna 4', '3004567890', 'www.proveedorcuatro.com'),
(567890123, 'proveedor cinco', 'calle 20, comuna 5', '3005678901', 'www.proveedorcinco.com');

INSERT INTO clientes (rut, nombre)
VALUES (11223344, 'cliente a'),
(22334455, 'cliente b'),
(33445566, 'cliente c'),
(44556677, 'cliente d'),
(55667788, 'cliente e');

INSERT INTO telefonos (numero_telefono, id_cliente)
VALUES ('3001234567', 1),
('3002345678', 2),
('3003456789', 3),
('3004567890', 4),
('3005678901', 5);

INSERT INTO direcciones (calle, numero, comuna, ciudad, id_cliente)
VALUES ('calle 123', '123', 'comuna 1', 'garzon', 1),
('av. principal', '456', 'comuna 2', 'garzon', 2),
('carrera 4', '789', 'comuna 3', 'garzon', 3),
('calle 10', '101', 'comuna 4', 'garzon', 4),
('calle 20', '202', 'comuna 5', 'garzon', 5);

INSERT INTO categorias (nombre, descripcion)
VALUES ('electronicos', 'productos electronicos y gadgets'),
('ropa', 'ropa de moda y accesorios'),
('hogar', 'articulos para el hogar'),
('alimentacion', 'productos alimenticios'),
('juguetes', 'juguetes y entretenimiento');

INSERT INTO productos (nombre, precio_actual, stock, id_proveedor, id_categoria)
VALUES ('smartphone x', 599.99, 50, 1, 1),
('laptop y', 899.99, 30, 2, 1),
('camiseta z', 29.99, 100, 3, 2),
('mesa de centro', 149.99, 20, 4, 3),
('leche entera', 2.49, 200, 5, 4);

INSERT INTO detalles_ventas (precio_momento_venta, cantidad, id_producto, monto_total)
VALUES (599.99, 2, 1, 1199.98),
(29.99, 3, 3, 89.97),
(149.99, 1, 4, 149.99),
(2.49, 5, 5, 12.45),
(899.99, 1, 2, 899.99);

INSERT INTO ventas_general (fecha, id_cliente, descuento, monto_final, id_detalle_venta)
VALUES ('2023-08-29 10:00:00', 1, 50.00, 1149.95, 1),
('2023-08-29 11:30:00', 2, 10.00, 94.97, 2),
('2023-08-29 12:45:00', 3, 0.00, 149.99, 3),
('2023-08-29 14:15:00', 4, 25.00, 11.22, 4),
('2023-08-29 15:30:00', 5, 5.00, 855.99, 5);