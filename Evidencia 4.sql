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

INSERT INTO Empleado (id_empleado, nombre, apellido, fecha_nacimiento, direccion, telefono, correo_electronico, fecha_contratacion, id_departamento, id_puesto) VALUES
('1', 'Maite', 'Márquez', '1992-06-05', 'Via Roberto Arias 43 Piso 5 ', '+34 814 58 68 50', 'gaspar94@camps.es', '2021-04-16', '2', '2'),
('2', 'Luisina', 'Mir', '1994-02-08', 'Callejón Arsenio Rubio 9 Puerta 3 ', '34946564823', 'ndavila@hotmail.com', '2020-07-12', '4', '10'),
('3', 'Santiago', 'Abad', '1985-02-01', 'Camino de Elvira Montserrat 87', '+34 731 34 33 20', 'aitanabeltran@ribas-ferreras.es', '2023-10-26', '2', '8'),
('4', 'Salomón', 'Hervás', '1974-06-14', 'Urbanización de Gabriel Villaverde 90', '+34 727 98 68 72', 'wjove@gmail.com', '2020-02-16', '2', '13'),
('5', 'María Dolores', 'Vázquez', '1997-05-21', 'Avenida de Leyre Macias 64 Piso 8 ', '+34706 587 603', 'waller@hotmail.com', '2021-11-17', '5', '15'),
('6', 'Albina', 'Aguado', '1988-05-07', 'Paseo de Mariana Giménez 53 Piso 7 ', '34700699016', 'despada@pinilla-moran.net', '2023-02-22', '6', '6'),
('7', 'Nacho', 'Nebot', '1990-03-18', 'Avenida de Adoración Aliaga 405 Puerta 1 ', '+34 627193745', 'cespedesmaria@amigo.es', '2022-02-26', '6', '12'),
('8', 'Ligia', 'Fiol', '1969-07-31', 'Via de Natividad Armengol 78', '+34 672 62 84 98', 'uruano@hotmail.com', '2019-12-22', '4', '9'),
('9', 'Mohamed', 'Higueras', '1970-04-23', 'Pasaje Clotilde Pinilla 80 Piso 2 ', '34710831367', 'ctudela@buendia.net', '2022-04-15', '2', '20'),
('10', 'Jesusa', 'Hervia', '1985-03-31', 'Ronda de Marcia Muro 57 Piso 4 ', '+34 737498941', 'javi52@alcala-castaneda.org', '2016-03-07', '3', '18'),
('11', 'Baltasar', 'Manzano', '1973-01-01', 'Camino Lucas Soria 67', '+34 729 022 941', 'ricoeloisa@gonzalez.es', '2022-12-09', '4', '6'),
('12', 'Manuel', 'Romeu', '1985-03-11', 'Glorieta Juan Luis Bertrán 33', '+34 703 447 134', 'icardona@company.com', '2016-08-15', '8', '13'),
('13', 'Benito', 'Daza', '1985-05-05', 'Pasaje Jennifer Mateu 94 Puerta 7 ', '+34 733 990 490', 'pvillena@lobo-escudero.es', '2023-10-10', '5', '18'),
('14', 'Ciriaco', 'Soriano', '1988-02-02', 'Via de Rosa Cuevas 86 Piso 6 ', '34908760385', 'naznar@yahoo.com', '2024-10-01', '4', '11'),
('15', 'Eleuterio', 'Maestre', '1994-03-23', 'Urbanización Leire Cuadrado 18', '+34734 84 67 73', 'rodolfofarre@hotmail.com', '2024-01-21', '1', '8'),
('16', 'Margarita', 'Cerezo', '1969-02-28', 'Pasadizo de Juanito Acedo 84 Apt. 78 ', '+34 723963605', 'qpolo@hotmail.com', '2017-12-30', '1', '11'),
('17', 'Ana Sofía', 'Arco', '1972-12-31', 'Via de Begoña Saura 3', '+34726 15 86 57', 'guitartevangelina@madrigal.es', '2017-01-30', '7', '9'),
('18', 'Martirio', 'Cabrera', '1994-08-08', 'Calle Moreno Barba 65 Piso 2 ', '34669379237', 'qjara@gmail.com', '2023-04-28', '2', '7'),
('19', 'Valentina', 'Maestre', '2001-08-09', 'Acceso de Diana Martínez 84', '+34 749 44 06 40', 'xmacias@ortuno.net', '2019-09-03', '10', '11'),
('20', 'Irene', 'Cerro', '1971-01-09', 'Calle de Cruz Patiño 51 Piso 6 ', '+34 704745171', 'rosalinapuerta@paz.com', '2019-11-28', '4', '16'),
('21', 'Brunilda', 'Casals', '1995-05-11', 'Acceso de Cándido Guillen 90 Piso 9 ', '+34 700 471 138', 'xsantiago@rius.com', '2023-09-25', '7', '15'),
('22', 'Encarnación', 'Raya', '1983-06-12', 'Pasaje Victor Guzman 61 Puerta 5 ', '+34890 05 32 93', 'deliagarzon@moya.com', '2020-02-15', '3', '9'),
('23', 'Rosa María', 'Coca', '1973-04-03', 'Plaza Eleuterio Alcolea 63', '+34617 75 89 17', 'vazquezmarcial@anguita-barrera.es', '2022-03-29', '3', '8'),
('24', 'Teodosio', 'Campoy', '1997-10-09', 'Alameda Ema Colomer 3', '34996118367', 'dnicolau@ricart-bustamante.es', '2022-09-01', '9', '18'),
('25', 'Matías', 'Jara', '1989-11-18', 'Avenida Paz Blázquez 7 Apt. 52 ', '+34 709 45 19 83', 'ggomez@pedrero-cardona.org', '2025-03-05', '5', '19'),
('26', 'Jaime', 'Romeu', '2002-08-01', 'Rambla Leandro Mendizábal 15 Apt. 29 ', '+34707 525 459', 'cortesfausto@ayala.es', '2022-08-15', '7', '19'),
('27', 'Amalia', 'Salamanca', '1992-08-05', 'Acceso Tito Cantero 89', '+34 713 24 45 10', 'iechevarria@yahoo.com', '2024-06-20', '7', '12'),
('28', 'Juliana', 'Grau', '1998-06-15', 'Calle de Tristán Alfonso 61', '+34 722 97 51 61', 'hperez@priego.es', '2019-03-06', '4', '5'),
('29', 'Nazario', 'Diéguez', '1969-08-10', 'Acceso de Lucía Coloma 31', '+34739 979 955', 'ebayo@mateo-llobet.com', '2021-05-24', '9', '16'),
('30', 'Anunciación', 'Benavent', '1985-07-14', 'Calle Rafa Madrid 2 Puerta 9 ', '+34748 207 151', 'huguetlaura@saavedra-zamora.com', '2021-08-07', '2', '2'),
('31', 'Ramón', 'Luna', '1990-10-10', 'Alameda Blas Murcia 9 Puerta 6 ', '+34 716 29 14 86', 'herminiazurita@gmail.com', '2022-08-11', '2', '5'),
('32', 'Apolonia', 'Paredes', '1965-08-26', 'Glorieta Néstor Torre 33 Apt. 14 ', '+34 822927065', 'wlopez@sanchez.org', '2023-05-22', '3', '14'),
('33', 'Vera', 'Ferrera', '1989-06-10', 'C. de Ani Álamo 42 Puerta 2 ', '+34 701 24 78 26', 'olgasanmartin@amor-ribera.com', '2022-02-25', '10', '3'),
('34', 'Ani', 'Pereira', '1980-06-15', 'Urbanización de Amaro Montalbán 6', '34601043289', 'maldonadojordan@yahoo.com', '2017-06-25', '7', '13'),
('35', 'Asdrubal', 'Gómez', '1992-12-23', 'Cuesta Edelmira Alegre 393', '+34 711851888', 'csoriano@pombo.com', '2021-06-25', '10', '15'),
('37', 'Rosenda', 'Mármol', '1983-01-01', 'C. de Mar Sabater 35 Piso 7 ', '+34 718451154', 'krojas@hotmail.com', '2022-12-17', '9', '1'),
('38', 'Pascual', 'Salvador', '1967-04-17', 'Calle de Carlito Ramis 38 Apt. 29 ', '34720927557', 'benitapedraza@miralles-lopez.net', '2017-05-03', '2', '18'),
('39', 'Ariel', 'Viña', '1987-10-09', 'Camino de Mónica Oliver 11 Piso 2 ', '+34 717 41 40 70', 'paola91@torres.com', '2022-09-23', '1', '1');

	select * from Empleado;


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














