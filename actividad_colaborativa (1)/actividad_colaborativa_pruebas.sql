-- Pruebas para actividad_colaborativa

-- Ver todos los motores de BD
SELECT * FROM motor_bd;

-- Ver todas las herramientas de administración
SELECT * FROM herramienta_admin;

-- Ver motores junto con sus herramientas
SELECT m.nombre AS motor, m.tipo, h.nombre AS herramienta
FROM motor_bd m
LEFT JOIN herramienta_admin h ON m.id = h.motor_id;
