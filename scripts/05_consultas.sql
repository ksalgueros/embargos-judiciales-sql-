-- 05_consultas.sql
USE EmbargosJudiciales;
GO

-- 1) Reincidencias y status
SELECT 
    E.Expediente,
    E.NombreDemandado,
    E.NumeroIdentificacion,
    'Enero2025' AS TablaOrigen,
    H.Status
FROM Enero2025 E
INNER JOIN Historico2024 H ON E.Expediente=H.Expediente;

-- 2) Prioridad 1
SELECT * FROM Enero2025 WHERE SumaEmbargable > 19910;

-- 3) Prioridad 2
SELECT * FROM Enero2025 WHERE SumaEmbargable > 9960 AND SumaEmbargable <= 19910;

-- 4) Prioridad 3
SELECT * FROM Enero2025 WHERE SumaEmbargable <= 9960;

-- 5) Auditoría de montos inconsistentes
SELECT * FROM Enero2025 WHERE Monto > SumaEmbargable; 

SELECT 
    NumeroCliente,NombreDemandado,COUNT(*) AS TotalExpedientes,SUM(Monto) AS TotalEmbargado
FROM Enero2025
GROUP BY NumeroCliente,NombreDemandado
ORDER BY TotalEmbargado DESC;

SELECT *
FROM Historico2024
WHERE Status LIKE 'Proceso Pendiente%';
