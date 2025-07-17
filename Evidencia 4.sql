Evidencia 4.md

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
