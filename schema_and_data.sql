-- 1. CREACIÓN DE TABLAS (DDL)
CREATE TABLE schema.medicos (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    colegiatura VARCHAR(20) NOT NULL UNIQUE,
    especialidad VARCHAR(50) NOT NULL
);

CREATE TABLE schema.pacientes (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    dni VARCHAR(8) NOT NULL UNIQUE,
    correo VARCHAR(100) NOT NULL,
    edad INT NOT NULL CHECK (edad >= 0)
);

CREATE TABLE schema.citas (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_medico INT,
    id_paciente INT,
    fecha DATETIME NOT NULL,
    estado VARCHAR(20) NOT NULL,
    CONSTRAINT fk_citas_medicos
        FOREIGN KEY (id_medico) 
        REFERENCES medicos(id)
        ON DELETE SET NULL,
    CONSTRAINT fk_citas_pacientes
        FOREIGN KEY (id_paciente) 
        REFERENCES pacientes(id)
        ON DELETE CASCADE
);

-- 2. POBLACIÓN DE DATOS (DML)
INSERT INTO schema.medicos (nombre, colegiatura, especialidad)
VALUES ('Juan', 'CMP-002', 'Odontólogo'),
       ('Pedro', 'CMP-003', 'General'),
       ('Luis', 'CMP-001', 'Cirujano');

INSERT INTO schema.pacientes (nombre, dni, correo, edad)
VALUES ('Richard', '76821693', 'richard_@gmail.com', 21),
       ('Ana', '72618921', 'ana_@hotmail.com', 31),
       ('Miriam', '67284512', 'miriam_@gmail.com', 19);

INSERT INTO schema.citas (id_medico, id_paciente, fecha, estado)
VALUES (2, 1, '2026-01-15 12:32:54', 'Sospecha'),
       (1, 1, '2026-02-11 11:51:20', 'Sano'),
       (3, 2, '2026-04-19 19:46:11', 'Crítico'),
       (1, 3, '2026-05-10 23:11:32', 'Sano');

-- 3. CONSULTAS Y PRUEBAS
-- Inner Join
SELECT pc.nombre AS paciente, md.nombre AS medico, md.especialidad, ct.fecha
FROM schema.citas AS ct 
INNER JOIN schema.medicos AS md ON ct.id_medico = md.id
INNER JOIN schema.pacientes AS pc ON ct.id_paciente = pc.id;

-- Prueba de Integridad SET NULL
DELETE FROM schema.medicos WHERE id = 2;

-- Left Join (Muestra citas aunque el médico sea NULL)
SELECT pc.nombre AS paciente, md.nombre AS medico, md.especialidad, ct.fecha
FROM schema.citas AS ct 
LEFT JOIN schema.medicos AS md ON ct.id_medico = md.id
LEFT JOIN schema.pacientes AS pc ON ct.id_paciente = pc.id;

-- Update con Subconsulta (Actualizar estado de cita buscando por DNI de paciente)
UPDATE schema.citas
SET estado = 'Sano'
WHERE id_paciente = (
    SELECT id FROM schema.pacientes WHERE dni = '76821693'
);