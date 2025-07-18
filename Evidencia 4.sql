Evidencia 4



CREATE TABLE Departamento( 
    id_departamento INT PRIMARY KEY,
    nombre_departamento VARCHAR(100) NOT null
);

INSERT INTO Departamento (id_departamento,nombre_departamento) VALUES (1, 'Produccion');
INSERT INTO Departamento (id_departamento, nombre_departamento) VALUES (2, 'Dise');
INSERT INTO Departamento (id_departamento, nombre_departamento) VALUES (3, 'Logistica');
INSERT INTO Departamento (id_departamento, nombre_departamento) VALUES (4, 'Ventas');
INSERT INTO Departamento (id_departamento, nombre_departamento) VALUES (5, 'Compras');
INSERT INTO Departamento (id_departamento, nombre_departamento) VALUES (6, 'Recursos Humanos');
INSERT INTO Departamento (id_departamento, nombre_departamento) VALUES (7, 'Calidad');
INSERT INTO Departamento (id_departamento, nombre_departamento) VALUES (8, 'Mantenimiento');
INSERT INTO Departamento (id_departamento, nombre_departamento) VALUES (9, 'Finanzas');
INSERT INTO Departamento (id_departamento, nombre_departamento) VALUES (10, 'Sistemas');

select * from Departamento;

CREATE TABLE Empleado (
id_empleado INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) not null,
    apellido VARCHAR(50) not null,
    fecha_nacimiento DATE not null,
    direccion VARCHAR(300) not null,
    telefono VARCHAR(30) not null,
    correo_electronico VARCHAR(100) not null,
    fecha_contratacion DATE not null,
    id_departamento INT not null,
    id_puesto INT not null,
    FOREIGN KEY (id_departamento) REFERENCES Departamento(id_departamento),
    FOREIGN KEY (id_puesto) REFERENCES Puesto(id_puesto)
);




CREATE TABLE Puesto (
    id_puesto INT PRIMARY KEY,
    nombre_puesto VARCHAR(100) NOT NULL,
    descripcion VARCHAR(255) NOT NULL,
    salario_min DECIMAL(10,2) NOT NULL,
    salario_max DECIMAL(10,2) NOT NULL
);

delete from Puesto;

INSERT INTO Puesto (id_puesto, nombre_puesto, descripcion, salario_min, salario_max) VALUES
(1, 'Operador de Producción', 'Operación de maquinaria y control de línea de producción', 32000.00, 41000.00),
(2, 'Diseñador Industrial', 'Diseño de productos y embalajes', 25500.00, 48900.00),
(3, 'Supervisor de Logística', 'Coordinación de envíos y entregas', 34700.00, 67000.00),
(4, 'Vendedor', 'Atención al cliente y ventas', 37800.00, 43500.00),
(5, 'Analista de Compras', 'Gestión de proveedores y adquisiciones', 28400.00, 41200.00),
(6, 'Especialista en RRHH', 'Gestión de talento y procesos internos', 24300.00, 60200.00),
(7, 'Inspector de Calidad', 'Supervisión de estándares de calidad', 20500.00, 48000.00),
(8, 'Técnico en Mantenimiento', 'Reparación y mantenimiento de equipos', 33000.00, 62000.00),
(9, 'Contador', 'Manejo de contabilidad y estados financieros', 31000.00, 55000.00),
(10, 'Desarrollador de Sistemas', 'Desarrollo y mantenimiento de software', 35000.00, 65000.00),
(11, 'Diseñador Industrial', 'Crea diseños de empaques funcionales atractivos y alineados con los requerimientos logísticos y de marketing', 26805.00, 46220.00),
(12, 'Ingeniero de Procesos', 'Optimiza los procesos productivos para mejorar la eficiencia y reducir costos', 37000.00, 61000.00),
(13, 'Jefe de Producción', 'Supervisa y coordina las actividades de producción en planta', 42000.00, 69000.00),
(14, 'Asistente Administrativo', 'Realiza tareas de apoyo administrativo y gestión documental', 22000.00, 33000.00),
(15, 'Encargado de Almacén', 'Administra el inventario y flujo de materiales dentro del almacén', 28000.00, 45000.00),
(16, 'Coordinador de Calidad', 'Garantiza el cumplimiento de normas de calidad en productos y procesos', 36000.00, 58000.00),
(17, 'Especialista en Seguridad e Higiene', 'Implementa medidas de seguridad laboral y condiciones sanitarias', 30000.00, 49000.00),
(18, 'Analista de Datos', 'Analiza grandes volúmenes de datos para apoyar la toma de decisiones', 34000.00, 57000.00),
(19, 'Soporte Técnico', 'Brinda asistencia técnica en hardware y software a usuarios', 27000.00, 46000.00),
(20, 'Jefe de Recursos Humanos', 'Dirige la estrategia de talento humano y relaciones laborales', 48000.00, 72000.00);

select * from Puesto;

CREATE TABLE Evaluacion (
    id_empleado INT PRIMARY KEY,
    puntualidad TINYINT NOT NULL,
    productividad TINYINT NOT NULL,
    calidad_trabajo TINYINT NOT NULL,
    cumplimiento_objetivos TINYINT NOT NULL,
    trabajo_equipo TINYINT NOT NULL,
    disciplina TINYINT NOT NULL,
    antiguedad_anios INT NOT NULL,
    capacitacion TINYINT NOT NULL,
    promedio_desempeno DECIMAL(4,2) NOT NULL,
    FOREIGN KEY (id_empleado) REFERENCES Empleado(id_empleado)
);














