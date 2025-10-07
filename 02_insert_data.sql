USE renta_video;

-- Categorias
INSERT INTO categorias (CodC, Categorias) VALUES
('C001', 'Comedia'),
('C002', 'Infantiles'),
('C003', 'Suspenso'),
('C004', 'Drama'),
('C005', 'Accion'),
('C006', 'Juegos'),
('C007', 'Sonidos'),
('C008', 'Romance'),
('C009', 'Terror'),
('C010', 'Anime');

-- Tipos
INSERT INTO tipos (CodT, Nombre_Tipo) VALUES
('T001', 'DVD'),
('T002', 'VHS'),
('T003', 'CASSETTE');

-- Clientes
INSERT INTO clientes (DUI, Nombres, Apellidos, Fecha_Afiliacion, Edad) VALUES
('00224432-3', 'Miguel Armando', 'Cardoza Sosa', '2008-04-21', 17),
('00278283-2', 'Maria Elena', 'Sánchez Campos', '2008-04-24', 24),
('00455594-0', 'Carlos', 'Alfaro', '2022-11-05', 30),
('00900082-9', 'Jorge Ernesto', 'Manzanero Vásquez', '2008-08-06', 28),
('00901133-2', 'José Antonio', 'Juárez Blanco', '2008-04-08', 19),
('01433949-8', 'Herson', 'Serrano', '2007-06-14', 29),
('01503949-2', 'Raúl Ernesto', 'Barraza Sorto', '2008-06-14', 29),
('01850173-9', 'Juan José', 'Recinos Ayala', '2008-03-14', 28),
('01900683-1', 'Pedro Arias', 'Rivas Cisneros', '2008-05-22', 26),
('02829380-9', 'Ana Epifania', 'López Durango', '2008-07-15', 24);

-- Peliculas
INSERT INTO peliculas (CodP, Nombre, CodT, CodC, Fecha_Ingreso, Disponible) VALUES
('P001', 'Ace Ventura', 'T001', 'C001', '2003-02-12', 3),
('P002', 'El Mundo de los Quien', 'T001', 'C002', '2006-10-01', 4),
('P003', 'El Ultimo Guerrero', 'T002', 'C005', '2005-12-11', 5),
('P004', 'Aguas Turbias', 'T001', 'C003', '2005-11-21', 6),
('P005', 'Terminator III', 'T003', 'C006', '2002-06-14', 5),
('P006', 'La Sociedad de los Poetas', 'T002', 'C004', '2004-09-12', 4),
('P007', 'Final Fantasy III', 'T003', 'C006', '2006-08-23', 5),
('P008', 'Little Frog', 'T001', 'C002', '2007-01-18', 6),
('P009', 'Halo 2', 'T001', 'C006', '2007-07-07', 7),
('P010', 'Ace Ventura 2', 'T001', 'C001', '2006-06-14', 4),
('P011', 'Oraciones y alabanzas', 'T003', 'C007', '2006-12-12', 3),
('P012', 'Donde hay llanto hay risa', 'T003', 'C007', '2007-03-11', 3),
('P013', 'Rambo III', 'T003', 'C006', '2004-08-27', 5),
('P014', 'Terminator I', 'T001', 'C006', '2003-02-12', 3),
('P015', 'Como agua para chocolate', 'T001', 'C008', '2022-05-18', 2),
('P016', 'Black Adam', 'T001', 'C005', '2022-11-05', 2);

-- Rentas
INSERT INTO rentas (CodR, CodP, DUI, Fecha_Ingreso, Fecha_Devolucion, Cobro, Mora) VALUES
('R001', 'P003', '00900082-9', '2003-02-12', '2003-02-16', 1.50, 0.50),
('R002', 'P006', '00224432-3', '2006-10-01', '2006-10-08', 1.50, 0.00),
('R003', 'P001', '00901133-2', '2005-12-11', '2005-12-14', 1.50, 0.00),
('R004', 'P012', '02829380-9', '2005-11-21', '2005-11-24', 1.50, 0.00),
('R005', 'P008', '00278283-2', '2003-12-26', '2003-12-28', 1.50, 0.00),
('R006', 'P004', '00224432-3', '2002-09-12', '2002-09-20', 1.50, 0.50),
('R007', 'P002', '01503949-2', '2007-01-18', '2007-01-21', 1.50, 0.00),
('R008', 'P007', '00901133-2', '2007-08-23', '2007-08-26', 1.50, 0.00),
('R009', 'P009', '01900683-1', '2006-06-14', '2006-06-24', 1.50, 0.50),
('R010', 'P010', '01900683-1', '2006-06-14', '2006-06-20', 1.50, 0.00),
('R011', 'P011', '01850173-9', '2006-12-12', '2006-12-21', 1.50, 0.00),
('R012', 'P005', '00900082-9', '2007-03-10', '2007-03-13', 1.50, 0.00),
('R013', 'P013', '01900683-1', '2004-08-27', '2004-08-30', 1.50, 0.00),
('R014', 'P014', '01850173-9', '2003-04-22', '2003-04-24', 1.50, 0.00),
('R015', 'P015', '00224432-3', '2002-05-18', '2002-05-29', 1.50, 0.50);
