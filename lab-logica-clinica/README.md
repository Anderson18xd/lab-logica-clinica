# Sistema de Gestión Clínica - DB Architecture V1.0

##  Descripción del Proyecto
Este repositorio va a contener la arquitectura de la base de datos para un sistema de un hospital funcional donde hay citas médicas. Se está desarrollando en MySQL 8.0. El objetivo es garantizar la integridad referencial y modelar las relaciones entre médicos, pacientes y también con sus respectivas citas médicas.
---

##  Modelo Entidad-Relación y Decisiones de Diseño

Este modelo está compuesto por tres tablas.

1. **`medicos`**: Almacena el nombre del médico, su colegiatura y su especialidad, validando su colegiatura como (`UNIQUE`).
2. **`pacientes`**: Almacena su nombre, su DNI, su correo y su edad, aplicando las respectivas restricciones como una edad no negativa (`CHECK (edad > 0)`) y DNI único (`UNIQUE`).
3. **`citas`**: Es transaccional porque conecta la tabla de pacientes con la tabla de médicos por llaves foráneas (`FOREIGN KEY`).

###  Justificación de Reglas de Integridad Referencial

* **`ON DELETE CASCADE` en Pacientes:**
  Si un paciente se elimina de la base de datos (por políticas de privacidad, retiro definitivo, etc), no es viable almacenar citas huérfanas en el sistema. Se eliminan automáticamente todas sus citas registradas para evitar registros inválidos.

* **`ON DELETE SET NULL` en Médicos:**
  Si un médico renuncia o se desvincula de la clínica, el historial médico y las citas agendadas **no deben perderse**. La cita permanece registrada para fines auditorables y contables, pero el campo `medico_id` pasa a ser `NULL`, permitiendo reasignar un nuevo médico profesional futuramente.

---

##  Tecnologías Utilizadas

* **Motor de Base de Datos:** MySQL 8.0 / MariaDB
* **Entorno de Desarrollo:** Visual Studio Code
* **Extensiones:** SQLTools, MySQL IntelliSense

---

##  Instrucciones de Ejecución

1. Clonar el repositorio:
   ```bash
   git clone [https://github.com/tu-usuario/lab-logica-sql-clinica.git](https://github.com/tu-usuario/lab-logica-sql-clinica.git)

## AUTOR

* Anderson J. Hinojosa Huaracha - Estudiante de Ingeniería de Sistemas