 -- 02_creacion_tablas.sql
-- Tabla Enero2025
DROP TABLE IF EXISTS Enero2025;
CREATE TABLE Enero2025 (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    FechaIngreso DATE CHECK (YEAR(FechaIngreso)=2025 AND MONTH(FechaIngreso)=1),
    Expediente VARCHAR(15) CHECK (
        LEN(Expediente)=13 AND 
        ISNUMERIC(LEFT(Expediente,11))=1 AND 
        RIGHT(Expediente,2) IN('CJ','LA')
    ),
    NombreDemandado VARCHAR(100),
    NumeroIdentificacion VARCHAR(20),
    CuentaBancaria CHAR(9) CHECK (ISNUMERIC(CuentaBancaria)=1),
    Moneda CHAR(3) CHECK (Moneda='USD'),
    Monto DECIMAL(18,2),
    Actor VARCHAR(100),
    Juzgado VARCHAR(100),
    SumaEmbargable DECIMAL(18,2),
    NumeroCliente VARCHAR(9) CHECK (
        LEN(NumeroCliente) BETWEEN 5 AND 9 AND 
        ISNUMERIC(NumeroCliente)=1
    ),
    CONSTRAINT chk_Monto_vs_Suma_E25 CHECK (Monto <= SumaEmbargable)
);

-- Tabla Historico2024
DROP TABLE IF EXISTS Historico2024;
CREATE TABLE Historico2024 (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    FechaIngreso DATE CHECK (YEAR(FechaIngreso)=2024),
    Expediente VARCHAR(15) CHECK (
        LEN(Expediente)=13 AND 
        ISNUMERIC(LEFT(Expediente,11))=1 AND 
        RIGHT(Expediente,2) IN('CJ','LA')
    ),
    NombreDemandado VARCHAR(100),
    NumeroIdentificacion VARCHAR(20),
    CuentaBancaria CHAR(9) CHECK (ISNUMERIC(CuentaBancaria)=1),
    Moneda CHAR(3) CHECK (Moneda='USD'),
    Monto DECIMAL(18,2),
    Actor VARCHAR(100),
    Juzgado VARCHAR(100),
    SumaEmbargable DECIMAL(18,2),
    NumeroCliente VARCHAR(9) CHECK (
        LEN(NumeroCliente) BETWEEN 5 AND 9 AND 
        ISNUMERIC(NumeroCliente)=1
    ),
    Status VARCHAR(100),
    CONSTRAINT chk_Monto_vs_Suma_H24 CHECK (Monto <= SumaEmbargable)
);
