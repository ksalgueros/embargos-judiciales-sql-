-- 04_historico2024.sql
USE EmbargosJudiciales;
GO

INSERT INTO Historico2024 (
    FechaIngreso, Expediente, NombreDemandado, NumeroIdentificacion,
    CuentaBancaria, Moneda, Monto, Actor, Juzgado, SumaEmbargable,
    NumeroCliente, Status
)
VALUES
('2024-01-05','10000000001CJ','Laura Araya','1010101010','123456789','USD',4800.00,'Crédito Fácil','Juzgado Penal San José',6000.00,'8401201','Proceso Pendiente - Saldo: $1200.00'),
-- (añade aquí los ~60 casos históricos + 20 extras + 10 duplicados corregidos)
-- ...
('2024-12-18','10000000060LA','Sergio Delgado','6161616161','102938475','USD',5700.00,'Cooperativa Viz','Juzgado Menor Cartago',5700.00,'3948273','Proceso Cubierto'); 
