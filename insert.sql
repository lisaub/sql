-- Insertar datos en la tabla 'departamentos'
INSERT INTO departamentos (id, nombre, descripcion, empleados_asociados, presupuesto, gastos)
VALUES 
(1, 'Ventas', 'Maneja ventas', 10, 50000.00, 20000.00),
(2, 'Marketing', 'Maneja marketing', 15, 60000.00, 25000.00),
(3, 'Recursos Humanos', 'Maneja recursos humanos', 5, 40000.00, 15000.00),
(4, 'Ingeniería', 'Maneja ingeniería', 20, 70000.00, 30000.00),
(5, 'Finanzas', 'Maneja finanzas', 7, 45000.00, 20000.00);

-- Insertar datos en la tabla 'evaluaciones_desempenio'
INSERT INTO evaluaciones_desempenio (id, id_empleado, fecha_evaluacion, calificacion, comentarios)
VALUES 
(1, NULL, CURRENT_TIMESTAMP, 3, 'Bueno'),
(2, NULL, CURRENT_TIMESTAMP, 4, 'Muy Bueno'),
(3, NULL, CURRENT_TIMESTAMP, 5, 'Excelente'),
(4, NULL, CURRENT_TIMESTAMP, 2, 'Regular'),
(5, NULL, CURRENT_TIMESTAMP, 1, 'Pobre');

-- Insertar datos en la tabla 'historial_vacaciones'
INSERT INTO historial_vacaciones (id, id_empleado, fecha_inicio, fecha_fin, duracion, estado)
VALUES 
(1, NULL, '2024-01-01', '2024-01-07', 6.00, 'Aprobado'),
(2, NULL, '2024-02-01', '2024-02-07', 6.00, 'Aprobado'),
(3, NULL, '2024-03-01', '2024-03-07', 6.00, 'Aprobado'),
(4, NULL, '2024-04-01', '2024-04-07', 6.00, 'Aprobado'),
(5, NULL, '2024-05-01', '2024-05-07', 6.00, 'Aprobado');

-- Insertar datos en la tabla 'puestos'
INSERT INTO puestos (id, nombre, descripcion, salario_base, empleados_asociados, habilidades_requeridas, id_evaluacion_desempenio)
VALUES 
(1, 'Gerente de Ventas', 'Administra equipo de ventas', 5000.00, 0, 'Liderazgo, Ventas', 1),
(2, 'Gerente de Marketing', 'Administra equipo de marketing', 4500.00, 0, 'Liderazgo, Marketing', 2),
(3, 'Gerente de Recursos Humanos', 'Administra equipo de recursos humanos', 4000.00, 0, 'Liderazgo, RRHH', 3),
(4, 'Gerente de TI', 'Administra equipo de TI', 5500.00, 0, 'Liderazgo, TI', 4),
(5, 'Gerente Financiero', 'Administra equipo financiero', 6000.00, 0, 'Liderazgo, Finanzas', 5);

-- Insertar datos en la tabla 'empleados'
INSERT INTO empleados (id, nombre, apellido, fecha_nacimiento, direccion, numero_telefono, correo_electronico, salario, fecha_contratacion, id_departamento, id_puesto, habilidades, id_evaluacion_desempenio, id_historial_vacaciones)
VALUES 
(1, 'Juan', 'Pérez', '1980-01-01', 'Calle Principal 123', '1234567890', 'juan.perez@example.com', 5000.00, CURRENT_TIMESTAMP, 1, 1, 'Liderazgo, Ventas', 1, 1),
(2, 'Ana', 'López', '1981-01-01', 'Calle Principal 456', '0987654321', 'ana.lopez@example.com', 4500.00, CURRENT_TIMESTAMP, 2, 2, 'Liderazgo, Marketing', 2, 2),
(3, 'Pedro', 'Gómez', '1982-01-01', 'Calle Principal 789', '1122334455', 'pedro.gomez@example.com', 4000.00, CURRENT_TIMESTAMP, 3, 3, 'Liderazgo, RRHH', 3, 3),
(4, 'María', 'Rodríguez', '1983-01-01', 'Calle Principal 321', '5544332211', 'maria.rodriguez@example.com', 5500.00, CURRENT_TIMESTAMP, 4, 4, 'Liderazgo, TI', 4, 4),
(5, 'Carlos', 'Martínez', '1984-01-01', 'Calle Principal 654', '6677889900', 'carlos.martinez@example.com', 6000.00, CURRENT_TIMESTAMP, 5, 5, 'Liderazgo, Finanzas', 5, 5);

-- Actualizar la tabla 'evaluaciones_desempenio' para establecer el 'id_empleado'
UPDATE evaluaciones_desempenio SET id_empleado = 1 WHERE id = 1;
UPDATE evaluaciones_desempenio SET id_empleado = 2 WHERE id = 2;
UPDATE evaluaciones_desempenio SET id_empleado = 3 WHERE id = 3;
UPDATE evaluaciones_desempenio SET id_empleado = 4 WHERE id = 4;
UPDATE evaluaciones_desempenio SET id_empleado = 5 WHERE id = 5;

-- Actualizar la tabla 'historial_vacaciones' para establecer el 'id_empleado'
UPDATE historial_vacaciones SET id_empleado = 1 WHERE id = 1;
UPDATE historial_vacaciones SET id_empleado = 2 WHERE id = 2;
UPDATE historial_vacaciones SET id_empleado = 3 WHERE id = 3;
UPDATE historial_vacaciones SET id_empleado = 4 WHERE id = 4;
UPDATE historial_vacaciones SET id_empleado = 5 WHERE id = 5;

-- Actualizar la tabla 'departamentos' para establecer el 'empleados_asociados'
UPDATE departamentos SET empleados_asociados = 1 WHERE id = 1;
UPDATE departamentos SET empleados_asociados = 1 WHERE id = 2;
UPDATE departamentos SET empleados_asociados = 1 WHERE id = 3;
UPDATE departamentos SET empleados_asociados = 1 WHERE id = 4;
UPDATE departamentos SET empleados_asociados = 1 WHERE id = 5;

-- Actualizar la tabla 'puestos' para establecer el 'empleados_asociados'
UPDATE puestos SET empleados_asociados = 1 WHERE id = 1;
UPDATE puestos SET empleados_asociados = 1 WHERE id = 2;
UPDATE puestos SET empleados_asociados = 1 WHERE id = 3;
UPDATE puestos SET empleados_asociados = 1 WHERE id = 4;
UPDATE puestos SET empleados_asociados = 1 WHERE id = 5;

-- Insertar datos en la tabla 'capacitacion'
INSERT INTO capacitacion (id, nombre, descripcion, fecha_inicio, fecha_finalizacion, duracion, costo, empleados_asociados, evaluacion_satisfaccion)
VALUES 
(1, 'Capacitación 1', 'Descripción 1', '2024-01-01', '2024-01-07', 6.00, 100.00, 1, 'Buena'),
(2, 'Capacitación 2', 'Descripción 2', '2024-02-01', '2024-02-07', 6.00, 200.00, 2, 'Muy Buena'),
(3, 'Capacitación 3', 'Descripción 3', '2024-03-01', '2024-03-07', 6.00, 300.00, 3, 'Excelente'),
(4, 'Capacitación 4', 'Descripción 4', '2024-04-01', '2024-04-07', 6.00, 400.00, 4, 'Regular'),
(5, 'Capacitación 5', 'Descripción 5', '2024-05-01', '2024-05-07', 6.00, 500.00, 5, 'Mala');

-- Insertar datos en la tabla 'beneficio'
INSERT INTO beneficio (id, nombre, descripcion, costo, empleados_asociados)
VALUES 
(1, 'Beneficio 1', 'Descripción 1', 100.00, 1),
(2, 'Beneficio 2', 'Descripción 2', 200.00, 2),
(3, 'Beneficio 3', 'Descripción 3', 300.00, 3),
(4, 'Beneficio 4', 'Descripción 4', 400.00, 4),
(5, 'Beneficio 5', 'Descripción 5', 500.00, 5);

-- Insertar datos en la tabla 'incidente_laboral'
INSERT INTO incidente_laboral (id, empleado_asociado, fecha_incidente, tipo_incidente, gravedad, acciones_correctivas)
VALUES 
(1, 1, '2024-01-01', 'Tipo 1', 'Baja', 'Acción 1'),
(2, 2, '2024-02-01', 'Tipo 2', 'Media', 'Acción 2'),
(3, 3, '2024-03-01', 'Tipo 3', 'Alta', 'Acción 3'),
(4, 4, '2024-04-01', 'Tipo 4', 'Baja', 'Acción 4'),
(5, 5, '2024-05-01', 'Tipo 5', 'Media', 'Acción 5');

-- Insertar datos en la tabla 'reclutamiento'
INSERT INTO reclutamiento (id, puesto_asociado, fecha_publicacion, fecha_cierre, numero_vacantes, candidatos_asociados, estado)
VALUES 
(1, 1, '2024-01-01', '2024-01-07', 1, 'Candidato 1', 'Abierto'),
(2, 2, '2024-02-01', '2024-02-07', 1, 'Candidato 2', 'Cerrado'),
(3, 3, '2024-03-01', '2024-03-07', 1, 'Candidato 3', 'Abierto'),
(4, 4, '2024-04-01', '2024-04-07', 1, 'Candidato 4', 'Cerrado'),
(5, 5, '2024-05-01', '2024-05-07', 1, 'Candidato 5', 'Abierto');

-- Insertar datos en la tabla 'viaje_laboral'
INSERT INTO viaje_laboral (id, empleado_asociado, destino, fecha_salida, fecha_regreso, duracion, motivo, costo)
VALUES 
(1, 1, 'Destino 1', '2024-01-01', '2024-01-07', 6.00, 'Motivo 1', 100.00),
(2, 2, 'Destino 2', '2024-02-01', '2024-02-07', 6.00, 'Motivo 2', 200.00),
(3, 3, 'Destino 3', '2024-03-01', '2024-03-07', 6.00, 'Motivo 3', 300.00),
(4, 4, 'Destino 4', '2024-04-01', '2024-04-07', 6.00, 'Motivo 4', 400.00),
(5, 5, 'Destino 5', '2024-05-01', '2024-05-07', 6.00, 'Motivo 5', 500.00);
