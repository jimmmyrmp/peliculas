-- Crear la base de datos
CREATE DATABASE renta_video;
GO

-- Usar la base
USE renta_video;
GO

-- Tabla Categorias
CREATE TABLE categorias (
    CodC VARCHAR(10) PRIMARY KEY,
    Categorias VARCHAR(50) NOT NULL
);

-- Tabla Tipos
CREATE TABLE tipos (
    CodT VARCHAR(10) PRIMARY KEY,
    Nombre_Tipo VARCHAR(20) NOT NULL,
    CONSTRAINT CK_tipos_NombreTipo CHECK (Nombre_Tipo IN ('DVD','VHS','CASSETTE'))
);

-- Tabla Clientes
CREATE TABLE clientes (
    DUI VARCHAR(10) PRIMARY KEY,
    Nombres VARCHAR(50) NOT NULL,
    Apellidos VARCHAR(50) NOT NULL,
    Fecha_Afiliacion DATE NOT NULL,
    Edad INT NOT NULL
);

-- Tabla Peliculas
CREATE TABLE peliculas (
    CodP VARCHAR(10) PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    CodT VARCHAR(10) NOT NULL,
    CodC VARCHAR(10) NOT NULL,
    Fecha_Ingreso DATE NOT NULL,
    Disponible INT,
    FOREIGN KEY (CodT) REFERENCES tipos(CodT),
    FOREIGN KEY (CodC) REFERENCES categorias(CodC)
);

-- Tabla Rentas
CREATE TABLE rentas (
    CodR VARCHAR(10) PRIMARY KEY,
    CodP VARCHAR(10) NOT NULL,
    DUI VARCHAR(10) NOT NULL,
    Fecha_Ingreso DATETIME NOT NULL,
    Fecha_Devolucion DATETIME NOT NULL,
    Cobro DECIMAL(5,2),
    Mora DECIMAL(5,2),
    FOREIGN KEY (CodP) REFERENCES peliculas(CodP),
    FOREIGN KEY (DUI) REFERENCES clientes(DUI)
);
