-- Usar la base: actividad_colaborativa

-- Tabla Motor de BD
CREATE TABLE motor_bd (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    tipo VARCHAR(30)
);

-- Tabla Herramienta de Administración
CREATE TABLE herramienta_admin (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    motor_id INT REFERENCES motor_bd(id)
);

-- Datos de ejemplo
INSERT INTO motor_bd (nombre, tipo) VALUES ('PostgreSQL', 'Relacional');
INSERT INTO motor_bd (nombre, tipo) VALUES ('MySQL', 'Relacional');
INSERT INTO motor_bd (nombre, tipo) VALUES ('Oracle', 'Relacional');
INSERT INTO motor_bd (nombre, tipo) VALUES ('MongoDB', 'No Relacional');

INSERT INTO herramienta_admin (nombre, motor_id) VALUES ('pgAdmin', 1);
INSERT INTO herramienta_admin (nombre, motor_id) VALUES ('MySQL Workbench', 2);
INSERT INTO herramienta_admin (nombre, motor_id) VALUES ('Oracle SQL Developer', 3);
INSERT INTO herramienta_admin (nombre, motor_id) VALUES ('Compass', 4);
