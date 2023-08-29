CREATE SCHEMA IF NOT EXISTS ejercicio1;
USE ejercicio1;

CREATE TABLE clientes (
id_cliente INT AUTO_INCREMENT UNIQUE,
identificacion INT NOT NULL,
nombre  VARCHAR(25) NOT NULL,
apellido  VARCHAR(25) NOT NULL,
direccion VARCHAR(50),
fecha_nacimiento DATE,
PRIMARY KEY (id_cliente)
);

CREATE TABLE proveedores (
id_proveedor INT NOT NULL AUTO_INCREMENT,
nit INT NOT NULL,
nombre VARCHAR(25) NOT NULL,
direccion VARCHAR(75) NOT NULL,
PRIMARY KEY (id_proveedor)
);

CREATE TABLE productos (
id_producto INT AUTO_INCREMENT UNIQUE,
nombre VARCHAR(25) NOT NULL, 
codigo INT NOT NULL,
precio INT,
id_proveedor INT,                                                                    
PRIMARY KEY (id_producto),
CONSTRAINT fk_id_proveedor 
FOREIGN KEY (id_proveedor) REFERENCES proveedores(id_proveedor)
);


CREATE TABLE productos_clientes (
id_productos_clientes INT NOT NULL AUTO_INCREMENT,
id_producto INT,
id_cliente INT,
PRIMARY KEY (id_productos_clientes),
CONSTRAINT fk_producto_id
FOREIGN KEY (id_producto) references productos(id_producto),
CONSTRAINT FK_idcliente
FOREIGN KEY (id_cliente) references clientes(id_cliente) 	
);

INSERT INTO clientes (identificacion, nombre, apellido, direccion, fecha_nacimiento)
VALUES (123456789, 'Maria', 'García', 'carrera 1 b #4-03', '1999-05-15'),
(987654321, 'Juan', 'López', 'avenida 2 norte #10-25', '1985-12-03'),
(456789123, 'Ana', 'Rodríguez', 'calle 5 sur #8-15', '1995-08-22'),
(789123456, 'Luis', 'Martínez', 'carrera 10 este #20-30', '1988-02-10'),
(654321789, 'Carolina', 'Pérez', 'avenida central #45-60', '1992-11-18');

INSERT INTO proveedores (nit, nombre,direccion)  VALUES
(121921890, 'proveedor don juan :v', 'Calle 5 #12-32, garzon'),
(121921231, 'proveedor don pedro :v', 'Calle 1 #12-32, garzon'),
(100744327, 'proveedor don ladrador :v', 'Calle 11 #12-32, garzon'),
(100532342, 'proveedor don chepe :v', 'Calle 13 #12-32, garzon'),
(122341321, 'proveedor raro :v', 'Calle 12 #12-32, garzon'); 

INSERT INTO productos 
VALUES (default,'globitos', 12345, 100, 1),
(default,'lubricante', 54321, 150, 2),
(default,'dedos', 98765, 200, 1),
(default,'Producto secreto', 24680, 80, 3),
(default,'el  producto de jorge', 13579, 120, 4);

INSERT INTO productos_clientes (id_producto,id_cliente) 
VALUES (1,2),
(2,5),
(3,4),
(4,1),
(5,4);


-- cliente compra productos, prodcuto comprado por muchos clientes 
--  producto suministrado 1 proveedor, 1 proveedor suministra diferentes productos CREATE TABLE productos ( id_producto INT AUTO_INCREMENT UNIQUE, nombre VARCHAR(25) NOT NULL,  codigo INT NOT NULL, precio INT, id_proveedor INT,                                                                     PRIMARY KEY (id_cliente), CONSTRAINT fk_id_proveedor FOREIGN KEY (id_proveedor) REFERENCES proveedores(id_proveedor) )
