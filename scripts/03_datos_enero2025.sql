-- 03_datos_enero2025.sql
USE EmbargosJudiciales;
GO

INSERT INTO Enero2025 (
    FechaIngreso, Expediente, NombreDemandado, NumeroIdentificacion,
    CuentaBancaria, Moneda, Monto, Actor, Juzgado, SumaEmbargable, NumeroCliente
)
VALUES
('2025-01-03', '10020030011CJ', 'Carlos Ure�a', '0102030405','159753468','USD',4200.00,'Banco Uno','Juzgado Penal 1 San Jos�',6500.00,'78421'),
-- (a�ade los 19 registros restantes aqu� siguiendo la sintaxis anterior)
-- ...
('2025-01-24', '80808080808LA', 'Rebeca Segura', '9201820830','321654987','USD',1900.00,'Mutual Heredia','Juzgado Civil Lim�n',2000.00,'708920'); 
