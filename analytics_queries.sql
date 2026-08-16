--AGREGANDO MÉCIDOS A LA DATABASE
INSERT INTO schema.medicos(nombre, colegiatura, especialidad)
VALUES
('Pepe', 5, 'Cirujano'),
('María', 6, 'Odontólogo'),
('Carlos', 7, 'General'),
('Ana', 8, 'Cardiólogo'),
('Luis', 9, 'Dermatólogo'),
('Laura', 10, 'Pediatra'),
('Jorge', 11, 'Ginecólogo'),
('Sofía', 12, 'Traumatólogo'),
('Miguel', 13, 'Neurólogo'),
('Elena', 14, 'Oftalmólogo'),
('Roberto', 15, 'Psiquiatra'),
('Patricia', 16, 'Radiólogo'),
('Andrés', 17, 'Cardiólogo'),
('Carmen', 18, 'Dermatólogo'),
('Fernando', 19, 'Pediatra'),
('Isabel', 20, 'Ginecólogo'),
('Ricardo', 21, 'Traumatólogo'),
('Teresa', 22, 'Neurólogo'),
('Alberto', 23, 'Oftalmólogo'),
('Marta', 24, 'Psiquiatra'),
('Diego', 25, 'Radiólogo');
--AGREGANDO PACIENTES
INSERT INTO schema.pacientes(nombre, dni, correo, edad)
VALUES
('Luis', '67235190', 'luis_@gmail.com', 31),
('María', '78451236', 'maria_@outlook.com', 45),
('Javier', '89123457', 'javier_@hotmail.com', 29),
('Lucía', '64578912', 'lucia_@gmail.com', 33),
('Antonio', '72345689', 'antonio_@yahoo.com', 52),
('Cristina', '85612347', 'cristina_@outlook.com', 27),
('Francisco', '93456781', 'francisco_@gmail.com', 38),
('Elena', '67891234', 'elena2_@hotmail.com', 22),
('Manuel', '74567891', 'manuel_@yahoo.com', 46),
('Paula', '81234567', 'paula_@gmail.com', 19),
('David', '95678123', 'david_@outlook.com', 34),
('Rosa', '68912345', 'rosa_@hotmail.com', 56),
('Sergio', '73456789', 'sergio_@gmail.com', 41),
('Ana', '86791234', 'ana3_@yahoo.com', 28),
('Pablo', '92345678', 'pablo_@outlook.com', 37),
('Nuria', '75689123', 'nuria_@gmail.com', 30),
('Emilio', '84561237', 'emilio_@hotmail.com', 43),
('Clara', '97812345', 'clara_@yahoo.com', 25),
('Hugo', '68913456', 'hugo_@gmail.com', 39),
('Irene', '73425678', 'irene_@outlook.com', 32),
('Sara', '89234561', 'sara_@hotmail.com', 26);
--AGREGANDI CITAS
INSERT INTO schema.citas(id_medico, id_paciente, fecha, estado)
VALUES
(1, 1, '2026-05-01 08:00:00', 'Sano'),
(3, 2, '2026-05-01 09:30:00', 'Sospecha'),
(4, 3, '2026-05-01 11:00:00', 'Sano'),
(5, 4, '2026-05-02 08:30:00', 'Crítico'),
(6, 5, '2026-05-02 10:00:00', 'Sano'),
(7, 6, '2026-05-02 14:00:00', 'Sospecha'),
(1, 7, '2026-05-03 09:00:00', 'Sano'),
(3, 8, '2026-05-03 11:30:00', 'Crítico'),
(4, 9, '2026-05-03 16:00:00', 'Sano'),
(5, 10, '2026-05-04 08:15:00', 'Sospecha'),
(6, 11, '2026-05-04 10:45:00', 'Sano'),
(7, 12, '2026-05-04 13:30:00', 'Crítico'),
(1, 13, '2026-05-05 09:30:00', 'Sano'),
(3, 14, '2026-05-05 11:00:00', 'Sospecha'),
(4, 15, '2026-05-05 15:00:00', 'Sano'),
(5, 16, '2026-05-06 08:00:00', 'Crítico'),
(6, 17, '2026-05-06 10:30:00', 'Sano'),
(7, 18, '2026-05-06 14:30:00', 'Sospecha'),
(1, 19, '2026-05-07 09:00:00', 'Sano'),
(3, 20, '2026-05-07 11:45:00', 'Crítico'),
(4, 21, '2026-05-07 16:30:00', 'Sano'),
(5, 22, '2026-05-08 08:30:00', 'Sospecha'),
(6, 1, '2026-05-08 10:00:00', 'Sano'),
(7, 2, '2026-05-08 14:30:00', 'Crítico'),
(1, 3, '2026-05-09 09:15:00', 'Sano'),
(3, 4, '2026-05-09 11:30:00', 'Sospecha'),
(4, 5, '2026-05-09 15:45:00', 'Sano'),
(5, 6, '2026-05-10 08:00:00', 'Crítico'),
(6, 7, '2026-05-10 10:30:00', 'Sano'),
(7, 8, '2026-05-10 13:00:00', 'Sospecha'),
(1, 9, '2026-05-11 09:00:00', 'Sano'),
(3, 10, '2026-05-11 11:15:00', 'Crítico'),
(4, 11, '2026-05-11 16:00:00', 'Sano'),
(5, 12, '2026-05-12 08:45:00', 'Sospecha'),
(6, 13, '2026-05-12 10:30:00', 'Sano'),
(7, 14, '2026-05-12 14:15:00', 'Crítico'),
(1, 15, '2026-05-13 09:30:00', 'Sano'),
(3, 16, '2026-05-13 11:45:00', 'Sospecha'),
(4, 17, '2026-05-13 15:30:00', 'Sano'),
(5, 18, '2026-05-14 08:15:00', 'Crítico'),
(6, 19, '2026-05-14 10:00:00', 'Sano'),
(7, 20, '2026-05-14 13:45:00', 'Sospecha'),
(1, 21, '2026-05-15 09:00:00', 'Sano'),
(3, 22, '2026-05-15 11:30:00', 'Crítico'),
(4, 1, '2026-05-15 14:30:00', 'Sano'),
(5, 2, '2026-05-16 08:30:00', 'Sospecha'),
(6, 3, '2026-05-16 10:45:00', 'Sano'),
(7, 4, '2026-05-16 15:00:00', 'Crítico'),
(1, 5, '2026-05-17 09:15:00', 'Sano'),
(3, 6, '2026-05-17 11:00:00', 'Sospecha'),
(4, 7, '2026-05-17 16:30:00', 'Sano'),
(1, 1, '2026-06-01 08:00:00', 'Sano'),
(3, 2, '2026-06-01 09:30:00', 'Sospecha'),
(4, 3, '2026-06-01 11:00:00', 'Sano'),
(5, 4, '2026-06-02 08:30:00', 'Crítico'),
(6, 5, '2026-06-02 10:00:00', 'Sano'),
(7, 6, '2026-06-02 14:00:00', 'Sospecha'),
(8, 7, '2026-06-03 09:00:00', 'Sano'),
(9, 8, '2026-06-03 11:30:00', 'Crítico'),
(10, 9, '2026-06-03 16:00:00', 'Sano'),
(11, 10, '2026-06-04 08:15:00', 'Sospecha'),
(12, 11, '2026-06-04 10:45:00', 'Sano'),
(13, 12, '2026-06-04 13:30:00', 'Crítico'),
(14, 13, '2026-06-05 09:30:00', 'Sano'),
(15, 14, '2026-06-05 11:00:00', 'Sospecha'),
(16, 15, '2026-06-05 15:00:00', 'Sano'),
(17, 16, '2026-06-06 08:00:00', 'Crítico'),
(18, 17, '2026-06-06 10:30:00', 'Sano'),
(19, 18, '2026-06-06 14:30:00', 'Sospecha'),
(20, 19, '2026-06-07 09:00:00', 'Sano'),
(21, 20, '2026-06-07 11:45:00', 'Crítico'),
(22, 21, '2026-06-07 16:30:00', 'Sano'),
(23, 22, '2026-06-08 08:30:00', 'Sospecha'),
(24, 23, '2026-06-08 10:00:00', 'Sano'),
(1, 24, '2026-06-08 14:30:00', 'Crítico'),
(3, 2, '2026-06-09 09:15:00', 'Sano'),
(4, 1, '2026-06-09 11:30:00', 'Sospecha'),
(5, 2, '2026-06-09 15:45:00', 'Sano'),
(6, 3, '2026-06-10 08:00:00', 'Crítico'),
(7, 4, '2026-06-10 10:30:00', 'Sano'),
(8, 5, '2026-06-10 13:00:00', 'Sospecha'),
(9, 6, '2026-06-11 09:00:00', 'Sano'),
(10, 7, '2026-06-11 11:15:00', 'Crítico'),
(11, 8, '2026-06-11 16:00:00', 'Sano'),
(12, 9, '2026-06-12 08:45:00', 'Sospecha'),
(13, 10, '2026-06-12 10:30:00', 'Sano'),
(14, 11, '2026-06-12 14:15:00', 'Crítico'),
(15, 12, '2026-06-13 09:30:00', 'Sano'),
(16, 13, '2026-06-13 11:45:00', 'Sospecha'),
(17, 14, '2026-06-13 15:30:00', 'Sano'),
(18, 15, '2026-06-14 08:15:00', 'Crítico'),
(19, 16, '2026-06-14 10:00:00', 'Sano'),
(20, 17, '2026-06-14 13:45:00', 'Sospecha'),
(21, 18, '2026-06-15 09:00:00', 'Sano'),
(22, 19, '2026-06-15 11:30:00', 'Crítico'),
(23, 20, '2026-06-15 14:30:00', 'Sano'),
(24, 21, '2026-06-16 08:30:00', 'Sospecha'),
(1, 22, '2026-06-16 10:45:00', 'Sano'),
(3, 23, '2026-06-16 15:00:00', 'Crítico'),
(4, 24, '2026-06-17 09:15:00', 'Sano'),
(5, 21, '2026-06-17 11:00:00', 'Sospecha');
-- 1. PRODUCTIVIDAD MÉDICA (Con GROUP BY estricto)
SELECT 
    md.nombre AS medico, 
    md.especialidad, 
    COUNT(ct.id) AS citas_totales
FROM schema.citas AS ct
INNER JOIN schema.medicos AS md ON ct.id_medico = md.id
GROUP BY md.id, md.nombre, md.especialidad
HAVING citas_totales > 1
ORDER BY citas_totales DESC;


-- 2. PACIENTES FRECUENTES (Subconsulta impecable en HAVING)
SELECT 
    pc.nombre AS paciente, 
    pc.correo, 
    COUNT(ct.id) AS total_citas
FROM schema.citas AS ct 
INNER JOIN schema.pacientes AS pc ON ct.id_paciente = pc.id 
GROUP BY pc.id, pc.nombre, pc.correo
HAVING total_citas > (
    SELECT AVG(conteo)
    FROM (
        SELECT COUNT(*) AS conteo
        FROM schema.citas
        GROUP BY id_paciente
    ) AS tabla_promedios
)
ORDER BY total_citas DESC;


-- 3. CITAS POR ESTADO MULTINIVEL (Ordenado para reporte)
SELECT 
    md.especialidad, 
    ct.estado, 
    COUNT(ct.id) AS total_citas
FROM schema.citas AS ct
INNER JOIN schema.medicos AS md ON ct.id_medico = md.id
GROUP BY md.especialidad, ct.estado
ORDER BY md.especialidad ASC, total_citas DESC;