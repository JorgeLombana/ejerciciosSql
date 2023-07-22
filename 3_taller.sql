CREATE DATABASE comercial;
USE comercial;
CREATE TABLE oficinas(
  id_oficina INT AUTO_INCREMENT PRIMARY KEY,
  ciudad VARCHAR(30)  NOT NULL,
  telefono VARCHAR(60) NOT NULL,
  dirección VARCHAR(60)  NOT NULL,
  departamento VARCHAR(40) NOT NULL,
  pais VARCHAR(40) NOT NULL,
  creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE empleado(
  documento INT UNIQUE PRIMARY KEY,
  nombre VARCHAR(40)  NOT NULL,
  apellido VARCHAR(40) NOT NULL,
  telefono VARCHAR(60) NOT NULL,
  correo VARCHAR(60) UNIQUE NOT NULL,
  id_oficina INT NOT NULL,
  jefe TEXT NOT NULL,
  cargo VARCHAR(40) NOT NULL,
  creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE cliente(
  id_cliente INT AUTO_INCREMENT PRIMARY KEY,
  empresa VARCHAR(60) NOT NULL,
  nombre VARCHAR(40)  NOT NULL,
  apellido VARCHAR(40) NOT NULL,
  telefono VARCHAR(60) NOT NULL,
  dirección VARCHAR(60)  NOT NULL,
  departamento VARCHAR(40) NOT NULL,
  pais VARCHAR(40) NOT NULL,
  empleado_atiende VARCHAR(60),
  creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('ColombiaSoft', 'Andrés', 'Gómez', '321-555-7890', 'Calle 123 #45-67', 'Antioquia', 'Colombia', 'Laura Ramírez');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('SolucionesAndinas', 'María', 'Rodríguez', '315-555-6789', 'Avenida 456 #78-90', 'Cundinamarca', 'Colombia', 'Carlos Herrera');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('TecnologíaColombiana', 'Juan', 'Hernández', '310-555-1234', 'Carrera 789 #12-34', 'Valle del Cauca', 'Colombia', 'Ana Montoya');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('InnovaCol', 'Laura', 'García', '317-555-5678', 'Diagonal 567 #89-01', 'Atlántico', 'Colombia', 'Jorge Gutiérrez');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('AvanzadaTec', 'Carlos', 'López', '314-555-2468', 'Transversal 234 #56-78', 'Santander', 'Colombia', 'Mónica Galvis');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('SolucionesDigitales', 'Ana', 'Martínez', '318-555-7854', 'Calle 789 #23-45', 'Caldas', 'Colombia', 'Diego Vargas');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('SistemasCol', 'Luis', 'Ramírez', '310-555-3698', 'Avenida 901 #67-89', 'Risaralda', 'Colombia', 'María Rojas');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('ColSoftTech', 'Carolina', 'Suárez', '317-555-1357', 'Carrera 567 #90-12', 'Boyacá', 'Colombia', 'Sergio Sánchez');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('InnovaciónDigital', 'Pedro', 'Vargas', '312-555-8765', 'Transversal 234 #56-78', 'Nariño', 'Colombia', 'Laura Ramírez');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('TecnologíaAvanzada', 'Fernanda', 'Ospina', '315-555-7890', 'Calle 123 #45-67', 'Tolima', 'Colombia', 'Carlos Herrera');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('ServiSoft', 'Sofía', 'Castro', '310-555-2345', 'Avenida 567 #89-01', 'Quindío', 'Colombia', 'Andrés Muñoz');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('TechSoluciones', 'Gabriel', 'Rojas', '314-555-6789', 'Carrera 901 #23-45', 'Cauca', 'Colombia', 'Carolina Gómez');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('InnovaTech', 'Valentina', 'Mendoza', '312-555-5678', 'Transversal 123 #45-67', 'Huila', 'Colombia', 'Hernán Torres');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('ColombiaDigital', 'Mateo', 'Rios', '316-555-3456', 'Calle 789 #01-23', 'Magdalena', 'Colombia', 'Daniela Cárdenas');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('TecnologíaColombia', 'Luciana', 'Gutierrez', '318-555-7890', 'Avenida 234 #56-78', 'Meta', 'Colombia', 'Pedro Ramírez');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('InnovacionesAndinas', 'Martín', 'Diaz', '310-555-4321', 'Carrera 567 #89-01', 'Cesar', 'Colombia', 'Valentina Pardo');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('ColTecnoSoft', 'Camila', 'Orozco', '311-555-8765', 'Transversal 123 #45-67', 'Córdoba', 'Colombia', 'Diego Mendoza');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('TecnologíaAvante', 'Sebastián', 'Guzmán', '317-555-2345', 'Calle 789 #01-23', 'Chocó', 'Colombia', 'María García');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('SolucionesColombia', 'Antonella', 'Velez', '319-555-6789', 'Avenida 234 #56-78', 'Sucre', 'Colombia', 'Juan Herrera');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('ColTechSolutions', 'Joaquín', 'Narvaez', '320-555-7890', 'Carrera 567 #89-01', 'San Andrés y Providencia', 'Colombia', 'Laura Rojas');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('ColombiaTech', 'Ismael', 'Paz', '322-555-2345', 'Calle 123 #45-67', 'Norte de Santander', 'Colombia', 'Valeria Sánchez');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('InnovaciónColombiana', 'Celeste', 'Castaño', '324-555-6789', 'Avenida 456 #78-90', 'La Guajira', 'Colombia', 'Andrés Romero');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('TecnologíaAndina', 'Emilio', 'Parra', '326-555-3456', 'Carrera 901 #23-45', 'Caquetá', 'Colombia', 'Mariana Cruz');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('SolucionesDigitales', 'Daniela', 'Ortiz', '328-555-7890', 'Transversal 123 #45-67', 'Putumayo', 'Colombia', 'Sebastián Torres');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('TechColombia', 'Matías', 'Roa', '330-555-4321', 'Calle 789 #01-23', 'Amazonas', 'Colombia', 'María Pérez');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('InnovacionesAndinas', 'Valeria', 'Valencia', '332-555-8765', 'Avenida 234 #56-78', 'Vaupés', 'Colombia', 'Joaquín Gómez');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('TecnologíaAvanzada', 'Iker', 'Murillo', '334-555-2345', 'Carrera 567 #89-01', 'Casanare', 'Colombia', 'Luisa Guzmán');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('ColombiaSistemas', 'Catalina', 'Estrada', '336-555-6789', 'Calle 789 #01-23', 'Huila', 'Colombia', 'Carlos Cárdenas');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('SolucionesAndinas', 'Miguel', 'Castillo', '338-555-7890', 'Avenida 234 #56-78', 'Guaviare', 'Colombia', 'Daniela Vargas');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('TecnoSoftCol', 'Regina', 'Silva', '340-555-2345', 'Transversal 123 #45-67', 'Meta', 'Colombia', 'Martín Cárdenas');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('InnovaTech', 'Valentín', 'Montoya', '342-555-6789', 'Calle 789 #01-23', 'Córdoba', 'Colombia', 'Gabriela Rojas');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('ColombiaSoft', 'Irene', 'Navarro', '344-555-7890', 'Avenida 234 #56-78', 'Atlántico', 'Colombia', 'Santiago Mendoza');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('TechSoluciones', 'Diego', 'Santos', '346-555-2345', 'Transversal 123 #45-67', 'Nariño', 'Colombia', 'Emilia López');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('InnovaTechCol', 'Renata', 'Salazar', '348-555-6789', 'Calle 789 #01-23', 'Risaralda', 'Colombia', 'Matías Gutiérrez');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('ColSoftTec', 'Matías', 'Roa', '350-555-7890', 'Avenida 234 #56-78', 'Caldas', 'Colombia', 'Sofía Pardo');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('TecnologíaAndina', 'Victoria', 'Velasco', '352-555-2345', 'Transversal 123 #45-67', 'Antioquia', 'Colombia', 'Nicolás Ramírez');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('InnovacionesCol', 'Thiago', 'Giraldo', '354-555-6789', 'Calle 789 #01-23', 'Cundinamarca', 'Colombia', 'Lucía Sánchez');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('TechColombia', 'Ana', 'Henao', '356-555-7890', 'Avenida 234 #56-78', 'La Guajira', 'Colombia', 'Juan Torres');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('InnovaciónAndina', 'Simón', 'Cardona', '358-555-2345', 'Transversal 123 #45-67', 'Caquetá', 'Colombia', 'Laura Gómez');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('ColTecnoSoft', 'Catalina', 'Aguirre', '360-555-6789', 'Calle 789 #01-23', 'Magdalena', 'Colombia', 'Andrés Sánchez');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('InnovaColombia', 'Lucas', 'Pérez', '362-555-2345', 'Avenida 567 #89-01', 'Cesar', 'Colombia', 'María Rojas');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('TecnoSoftCol', 'Renata', 'Gutierrez', '364-555-6789', 'Carrera 901 #23-45', 'Santander', 'Colombia', 'Carlos Herrera');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('SolucionesAndinas', 'Joaquín', 'Valencia', '366-555-3456', 'Transversal 123 #45-67', 'Boyacá', 'Colombia', 'Daniela Vargas');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('TechColombia', 'Antonia', 'Vargas', '368-555-7890', 'Calle 789 #01-23', 'Cundinamarca', 'Colombia', 'Santiago Mendoza');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('InnovaciónDigital', 'Emilio', 'Ortiz', '370-555-2345', 'Avenida 234 #56-78', 'Huila', 'Colombia', 'María Pérez');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('ColombiaSoft', 'Isabella', 'Silva', '372-555-6789', 'Transversal 123 #45-67', 'Caquetá', 'Colombia', 'Andrés Romero');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('TecnoSoluciones', 'Matías', 'Roa', '374-555-7890', 'Calle 789 #01-23', 'Norte de Santander', 'Colombia', 'Valentina Sánchez');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('InnovaTechCol', 'Sofía', 'Estrada', '376-555-2345', 'Avenida 234 #56-78', 'Córdoba', 'Colombia', 'Nicolás Ramírez');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('TechAndina', 'Gabriel', 'Montoya', '378-555-6789', 'Transversal 123 #45-67', 'Atlántico', 'Colombia', 'Emilia López');

INSERT INTO cliente (empresa, nombre, apellido, telefono, dirección, departamento, pais, empleado_atiende) VALUES
('InnovacionesColombia', 'Camila', 'Castro', '380-555-7890', 'Calle 789 #01-23', 'Caldas', 'Colombia', 'Juan Torres');

INSERT INTO oficinas (ciudad, telefono, dirección, departamento, pais)
VALUES 
    ('Medellín', '3145678901', 'Carrera 56 #78-90', 'Finanzas', 'Colombia'),
    ('Cali', '3123456789', 'Avenida 9 #10-11', 'Recursos Humanos', 'Colombia'),
    ('Barranquilla', '3209876543', 'Calle 21 #32-43', 'Operaciones', 'Colombia'),
    ('Cartagena', '3189012345', 'Carrera 45 #67-89', 'Marketing', 'Colombia'),
    ('Bucaramanga', '3112345678', 'Avenida 7 #8-9', 'Tecnología', 'Colombia'),
    ('Santa Marta', '3178901234', 'Calle 10 #11-12', 'Logística', 'Colombia'),
    ('Pasto', '3190123456', 'Carrera 34 #45-56', 'Compras', 'Colombia'),
    ('Manizales', '3156789012', 'Avenida 5 #6-7', 'Recursos Humanos', 'Colombia'),
    ('Pereira', '3123456789', 'Calle 11 #12-13', 'Operaciones', 'Colombia'),
    ('Villavicencio', '3112233445', 'Carrera 89 #90-91', 'Ventas', 'Colombia'),
    ('Cúcuta', '3109876543', 'Avenida 3 #4-5', 'Recursos Humanos', 'Colombia'),
    ('Ibagué', '3145678901', 'Calle 67 #89-90', 'Finanzas', 'Colombia'),
    ('Neiva', '3132354646', 'Carrera 12 #34-56', 'Operaciones', 'Colombia'),
    ('Soacha', '3189012345', 'Avenida 10 #20-30', 'Marketing', 'Colombia'),
    ('Armenia', '3167890123', 'Calle 23 #45-67', 'Tecnología', 'Colombia'),
    ('Valledupar', '3123456789', 'Carrera 78 #90-91', 'Logística', 'Colombia'),
    ('Montería', '3190123456', 'Avenida 8 #9-10', 'Compras', 'Colombia'),
    ('Sincelejo', '3156789012', 'Calle 5 #6-7', 'Recursos Humanos', 'Colombia'),
    ('Popayán', '3112233445', 'Carrera 45 #67-78', 'Ventas', 'Colombia'),
    ('Riohacha', '3109876543', 'Avenida 1 #2-3', 'Finanzas', 'Colombia'),
    ('Tunja', '3134567890', 'Calle 123 #45-67', 'Recursos Humanos', 'Colombia'),
    ('Villanueva', '3145678901', 'Carrera 56 #78-90', 'Ventas', 'Colombia'),
    ('Girardot', '3123456789', 'Avenida 9 #10-11', 'Operaciones', 'Colombia'),
    ('Valledupar', '3209876543', 'Calle 21 #32-43', 'Marketing', 'Colombia'),=
    ('Yopal', '3189012345', 'Carrera 45 #67-89', 'Tecnología', 'Colombia'),
    ('Quibdó', '3112345678', 'Avenida 7 #8-9', 'Logística', 'Colombia'),
    ('Pasto', '3178901234', 'Calle 10 #11-12', 'Compras', 'Colombia'),
    ('Mocoa', '3190123456', 'Carrera 34 #45-56', 'Recursos Humanos', 'Colombia'),
    ('Florencia', '3156789012', 'Avenida 5 #6-7', 'Finanzas', 'Colombia'),
    ('Guaviare', '3123456789', 'Calle 11 #12-13', 'Operaciones', 'Colombia'),
    ('San Andrés', '3112233445', 'Carrera 89 #90-91', 'Marketing', 'Colombia'),
    ('Leticia', '3109876543', 'Avenida 3 #4-5', 'Tecnología', 'Colombia'),
    ('Mitú', '3145678901', 'Calle 67 #89-90', 'Logística', 'Colombia'),
    ('Puerto Carreño', '3132354646', 'Carrera 12 #34-56', 'Compras', 'Colombia'),
    ('Inírida', '3189012345', 'Avenida 10 #20-30', 'Recursos Humanos', 'Colombia'),
    ('San José del Guaviare', '3167890123', 'Calle 23 #45-67', 'Ventas', 'Colombia'),
    ('Mitu', '3123456789', 'Carrera 78 #90-91', 'Finanzas', 'Colombia'),
    ('Caucasia', '3190123456', 'Avenida 8 #9-10', 'Operaciones', 'Colombia'),
    ('Puerto Asís', '3156789012', 'Calle 5 #6-7', 'Marketing', 'Colombia'),
    ('Turbo', '3112233445', 'Carrera 45 #67-78', 'Tecnología', 'Colombia'),
    ('Ipiales', '3134567890', 'Calle 123 #45-67', 'Compras', 'Colombia'),
    ('Ciénaga', '3145678901', 'Carrera 56 #78-90', 'Recursos Humanos', 'Colombia'),
    ('Magangué', '3123456789', 'Avenida 9 #10-11', 'Ventas', 'Colombia'),
    ('Tolú', '3209876543', 'Calle 21 #32-43', 'Marketing', 'Colombia'),
    ('Turmequé', '3189012345', 'Carrera 45 #67-89', 'Tecnología', 'Colombia'),
    ('Sogamoso', '3112345678', 'Avenida 7 #8-9', 'Logística', 'Colombia'),
    ('Yopal', '3178901234', 'Calle 10 #11-12', 'Operaciones', 'Colombia'),
    ('Tunja', '3190123456', 'Carrera 34 #45-56', 'Finanzas', 'Colombia'),
    ('San Gil', '3156789012', 'Avenida 5 #6-7', 'Recursos Humanos', 'Colombia');




INSERT INTO empleado (nombre, apellido, telefono, correo, id_oficina, jefe, cargo) 
VALUES 
       ('Mario', 'López', '3132354646', 'mario.lopez@gmail.com', 141, 'jefe1', 'Gerente'),
       ('Laura', 'García', '3227895641', 'laura.garcia@gmail.com', 121, 'jefe2', 'Supervisor'),
       ('Carlos', 'Martínez', '3158763412', 'carlos.martinez@gmail.com', 112, 'jefe3', 'Analista'),
       ('Ana', 'Ramírez', '3005648712', 'ana.ramirez@gmail.com', 141, 'jefe1', 'Técnico'),
       ('Luis', 'Hernández', '3206758432', 'luis.hernandez@gmail.com', 121, 'jefe2', 'Consultor'),
       ('María', 'Gómez', '3179456782', 'maria.gomez@gmail.com', 112, 'jefe3', 'Analista'),
       ('Andrés', 'Pérez', '3145789021', 'andres.perez@gmail.com', 141, 'jefe1', 'Técnico'),
       ('Carolina', 'Suárez', '3016547890', 'carolina.suarez@gmail.com', 121, 'jefe2', 'Analista'),
       ('Pedro', 'Fernández', '3109876543', 'pedro.fernandez@gmail.com', 112, 'jefe3', 'Supervisor'),
       ('Gabriela', 'Torres', '3188901234', 'gabriela.torres@gmail.com', 141, 'jefe1', 'Gerente'),
       ('Javier', 'Rojas', '3124567890', 'javier.rojas@gmail.com', 121, 'jefe2', 'Consultor'),
       ('Sofía', 'Gutiérrez', '3194561230', 'sofia.gutierrez@gmail.com', 112, 'jefe3', 'Analista'),
       ('Ricardo', 'Luna', '3237894561', 'ricardo.luna@gmail.com', 141, 'jefe1', 'Supervisor'),
       ('Fernanda', 'Díaz', '3145678098', 'fernanda.diaz@gmail.com', 121, 'jefe2', 'Técnico'),
       ('Juan', 'Ortiz', '3012345678', 'juan.ortiz@gmail.com', 112, 'jefe3', 'Consultor'),
       ('Valentina', 'Castro', '3126789012', 'valentina.castro@gmail.com', 141, 'jefe1', 'Gerente'),
       ('Pablo', 'Navarro', '3178901234', 'pablo.navarro@gmail.com', 121, 'jefe2', 'Supervisor'),
       ('Elena', 'Mendoza', '3137890123', 'elena.mendoza@gmail.com', 112, 'jefe3', 'Técnico'),
       ('Roberto', 'Soto', '3201234567', 'roberto.soto@gmail.com', 141, 'jefe1', 'Analista'),
       ('Camila', 'Chávez', '3108765432', 'camila.chavez@gmail.com', 121, 'jefe2', 'Gerente'),
       ('Gustavo', 'Vargas', '3132354623', 'gustavo.vargas@gmail.com', 141, 'jefe1', 'Gerente'),
       ('Lucía', 'Rojas', '3227895621', 'lucia.rojas@gmail.com', 121, 'jefe2', 'Supervisor'),
       ('Diego', 'Mendoza', '3158763492', 'diego.mendoza@gmail.com', 112, 'jefe3', 'Analista'),
       ('Natalia', 'Hernández', '3005648742', 'natalia.hernandez@gmail.com', 141, 'jefe1', 'Técnico'),
       ('Santiago', 'Gómez', '3206758421', 'santiago.gomez@gmail.com', 121, 'jefe2', 'Consultor'),
       ('Catalina', 'López', '3179456741', 'catalina.lopez@gmail.com', 112, 'jefe3', 'Analista'),
       ('Martín', 'Suárez', '3145789123', 'martin.suarez@gmail.com', 141, 'jefe1', 'Técnico'),
       ('Valeria', 'Fernández', '3016547845', 'valeria.fernandez@gmail.com', 121, 'jefe2', 'Analista'),
       ('Hugo', 'Pérez', '3109876541', 'hugo.perez@gmail.com', 112, 'jefe3', 'Supervisor'),
       ('Carla', 'Torres', '3188901239', 'carla.torres@gmail.com', 141, 'jefe1', 'Gerente'),
       ('Federico', 'Rojas', '3124567897', 'federico.rojas@gmail.com', 121, 'jefe2', 'Consultor'),
       ('Isabella', 'Gutiérrez', '3194561280', 'isabella.gutierrez@gmail.com', 112, 'jefe3', 'Analista'),
       ('Andrea', 'Luna', '3237894501', 'andrea.luna@gmail.com', 141, 'jefe1', 'Supervisor'),
       ('Manuel', 'Díaz', '3145678022', 'manuel.diaz@gmail.com', 121, 'jefe2', 'Técnico'),
       ('Cristian', 'Ortiz', '3012345643', 'cristian.ortiz@gmail.com', 112, 'jefe3', 'Consultor'),
       ('Gabriela', 'Castro', '3126789432', 'gabriela.castro@gmail.com', 141, 'jefe1', 'Gerente'),
       ('Eduardo', 'Navarro', '3178901634', 'eduardo.navarro@gmail.com', 121, 'jefe2', 'Supervisor'),
       ('Victoria', 'Mendoza', '3137890671', 'victoria.mendoza@gmail.com', 112, 'jefe3', 'Técnico'),
       ('Andrés', 'Soto', '3201234902', 'andres.soto@gmail.com', 141, 'jefe1', 'Analista'),
       ('Sofía', 'Chávez', '3108765493', 'sofia.chavez@gmail.com', 121, 'jefe2', 'Gerente'),
       ('Jorge', 'González', '3132354620', 'jorge.gonzalez@gmail.com', 141, 'jefe1', 'Gerente'),
       ('Marina', 'Silva', '3227895612', 'marina.silva@gmail.com', 121, 'jefe2', 'Supervisor'),
       ('Ricardo', 'Cruz', '3158763498', 'ricardo.cruz@gmail.com', 112, 'jefe3', 'Analista'),
       ('Verónica', 'Pérez', '3005648741', 'veronica.perez@gmail.com', 141, 'jefe1', 'Técnico'),
       ('Julián', 'Romero', '3206758420', 'julian.romero@gmail.com', 121, 'jefe2', 'Consultor'),
       ('Camila', 'Ramírez', '3179456743', 'camila.ramirez@gmail.com', 112, 'jefe3', 'Analista'),
       ('Daniel', 'Suárez', '3145789125', 'daniel.suarez@gmail.com', 141, 'jefe1', 'Técnico'),
       ('Valentina', 'Ortega', '3016547847', 'valentina.ortega@gmail.com', 121, 'jefe2', 'Analista'),
       ('Leonardo', 'Gómez', '3109876543', 'leonardo.gomez@gmail.com', 112, 'jefe3', 'Supervisor'),
       ('Mariana', 'Martínez', '3188901236', 'mariana.martinez@gmail.com', 141, 'jefe1', 'Gerente'),
       ('Pedro', 'Pérez', '3124567896', 'pedro.perez@gmail.com', 121, 'jefe2', 'Consultor'),
       ('Luciana', 'Hernández', '3194561289', 'luciana.hernandez@gmail.com', 112, 'jefe3', 'Analista'),
       ('Germán', 'López', '3237894506', 'german.lopez@gmail.com', 141, 'jefe1', 'Supervisor'),
       ('Carolina', 'Díaz', '3145678027', 'carolina.diaz@gmail.com', 121, 'jefe2', 'Técnico'),
       ('Felipe', 'Ortiz', '3012345647', 'felipe.ortiz@gmail.com', 112, 'jefe3', 'Consultor'),
       ('Antonella', 'Castro', '3126789430', 'antonella.castro@gmail.com', 141, 'jefe1', 'Gerente'),
       ('Maximiliano', 'Navarro', '3178901635', 'maximiliano.navarro@gmail.com', 121, 'jefe2', 'Supervisor'),
       ('Isabel', 'Mendoza', '3137890675', 'isabel.mendoza@gmail.com', 112, 'jefe3', 'Técnico'),
       ('Sebastián', 'Soto', '3201234906', 'sebastian.soto@gmail.com', 141, 'jefe1', 'Analista'),
       ('Valeria', 'Chávez', '3108765495', 'valeria.chavez@gmail.com', 121, 'jefe2', 'Gerente'),
       ('Emilio', 'Morales', '3132354628', 'emilio.morales@gmail.com', 141, 'jefe1', 'Gerente'),
       ('Luciana', 'Fernández', '3227895632', 'luciana.fernandez@gmail.com', 121, 'jefe2', 'Supervisor'),
       ('Andrés', 'Sánchez', '3158763495', 'andres.sanchez@gmail.com', 112, 'jefe3', 'Analista'),
       ('Daniela', 'Gómez', '3005648748', 'daniela.gomez@gmail.com', 141, 'jefe1', 'Técnico'),
       ('Sebastián', 'Pérez', '3206758425', 'sebastian.perez@gmail.com', 121, 'jefe2', 'Consultor'),
       ('Valeria', 'Hernández', '3179456749', 'valeria.hernandez@gmail.com', 112, 'jefe3', 'Analista'),
       ('Luis', 'Suárez', '3145789128', 'luis.suarez@gmail.com', 141, 'jefe1', 'Técnico'),
       ('María', 'Ortiz', '3016547850', 'maria.ortiz@gmail.com', 121, 'jefe2', 'Analista'),
       ('Alejandro', 'García', '3109876547', 'alejandro.garcia@gmail.com', 112, 'jefe3', 'Supervisor'),
       ('Carolina', 'Martínez', '3188901240', 'carolina.martinez@gmail.com', 141, 'jefe1', 'Gerente'),
       ('Felipe', 'Rojas', '3124567898', 'felipe.rojas@gmail.com', 121, 'jefe2', 'Consultor'),
       ('Isabella', 'González', '3194561287', 'isabella.gonzalez@gmail.com', 112, 'jefe3', 'Analista'),
       ('Matías', 'Luna', '3237894509', 'matias.luna@gmail.com', 141, 'jefe1', 'Supervisor'),
       ('Valentina', 'Díaz', '3145678032', 'valentina.diaz@gmail.com', 121, 'jefe2', 'Técnico'),
       ('Mateo', 'Ortega', '3012345648', 'mateo.ortega@gmail.com', 112, 'jefe3', 'Consultor'),
       ('Renata', 'Castro', '3126789435', 'renata.castro@gmail.com', 141, 'jefe1', 'Gerente'),
       ('Gabriel', 'Navarro', '3178901638', 'gabriel.navarro@gmail.com', 121, 'jefe2', 'Supervisor'),
       ('Valeria', 'Mendoza', '3137890677', 'valeria.mendoza@gmail.com', 112, 'jefe3', 'Técnico'),
       ('Juan', 'Soto', '3201234909', 'juan.soto@gmail.com', 141, 'jefe1', 'Analista'),
       ('María', 'Chávez', '3108765499', 'maria.chavez@gmail.com', 121, 'jefe2', 'Gerente'),
       ('Emilio', 'Morales', '3132354628', 'emilio.morales@gmail.com', 141, 'jefe1', 'Gerente'),
       ('Luciana', 'Fernández', '3227895632', 'luciana.fernandez@gmail.com', 121, 'jefe2', 'Supervisor'),
       ('Andrés', 'Sánchez', '3158763495', 'andres.sanchez@gmail.com', 112, 'jefe3', 'Analista'),
       ('Daniela', 'Gómez', '3005648748', 'daniela.gomez@gmail.com', 141, 'jefe1', 'Técnico'),
       ('Sebastián', 'Pérez', '3206758425', 'sebastian.perez@gmail.com', 121, 'jefe2', 'Consultor'),
       ('Valeria', 'Hernández', '3179456749', 'valeria.hernandez@gmail.com', 112, 'jefe3', 'Analista'),
       ('Luis', 'Suárez', '3145789128', 'luis.suarez@gmail.com', 141, 'jefe1', 'Técnico'),
       ('María', 'Ortiz', '3016547850', 'maria.ortiz@gmail.com', 121, 'jefe2', 'Analista'),
       ('Alejandro', 'García', '3109876547', 'alejandro.garcia@gmail.com', 112, 'jefe3', 'Supervisor'),
       ('Carolina', 'Martínez', '3188901240', 'carolina.martinez@gmail.com', 141, 'jefe1', 'Gerente'),
       ('Felipe', 'Rojas', '3124567898', 'felipe.rojas@gmail.com', 121, 'jefe2', 'Consultor'),
       ('Isabella', 'González', '3194561287', 'isabella.gonzalez@gmail.com', 112, 'jefe3', 'Analista'),
       ('Matías', 'Luna', '3237894509', 'matias.luna@gmail.com', 141, 'jefe1', 'Supervisor'),
       ('Valentina', 'Díaz', '3145678032', 'valentina.diaz@gmail.com', 121, 'jefe2', 'Técnico'),
       ('Mateo', 'Ortega', '3012345648', 'mateo.ortega@gmail.com', 112, 'jefe3', 'Consultor'),
       ('Renata', 'Castro', '3126789435', 'renata.castro@gmail.com', 141, 'jefe1', 'Gerente'),
       ('Gabriel', 'Navarro', '3178901638', 'gabriel.navarro@gmail.com', 121, 'jefe2', 'Supervisor'),
       ('Valeria', 'Mendoza', '3137890677', 'valeria.mendoza@gmail.com', 112, 'jefe3', 'Técnico'),
       ('Juan', 'Soto', '3201234909', 'juan.soto@gmail.com', 141, 'jefe1', 'Analista'),
       ('María', 'Chávez', '3108765499', 'maria.chavez@gmail.com', 121, 'jefe2', 'Gerente'),
       ('Emilio', 'Morales', '3132354628', 'emilio.morales@gmail.com', 141, 'jefe1', 'Gerente'),
       ('Luciana', 'Fernández', '3227895632', 'luciana.fernandez@gmail.com', 121, 'jefe2', 'Supervisor');