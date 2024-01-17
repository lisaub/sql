-- Vista 1: Empleados y sus departamentos
CREATE VIEW Empleados_Departamentos AS
SELECT e.first_name, e.last_name, d.name AS department_name
FROM employees e
JOIN departments d ON e.department_id = d.id;

-- Vista 2: Evaluaciones de rendimiento de los empleados
CREATE VIEW Evaluaciones_Empleados AS
SELECT e.first_name, e.last_name, p.evaluation_date, p.rating, p.comments
FROM employees e
JOIN performance_evaluations p ON e.performance_evaluation_id = p.id;

-- Vista 3: Historial de vacaciones de los empleados
CREATE VIEW Vacaciones_Empleados AS
SELECT e.first_name, e.last_name, v.start_date, v.end_date, v.duration, v.status
FROM employees e
JOIN vacation_history v ON e.vacation_history_id = v.id;

-- Vista 4: Capacitaciones y empleados asociados
CREATE VIEW Capacitaciones_Empleados AS
SELECT c.nombre AS capacitacion_nombre, e.first_name, e.last_name
FROM capacitacion c
JOIN employees e ON c.empleados_asociados = e.id;

-- Vista 5: Beneficios y empleados asociados
CREATE VIEW Beneficios_Empleados AS
SELECT b.nombre AS beneficio_nombre, e.first_name, e.last_name
FROM beneficio b
JOIN employees e ON b.empleados_asociados = e.id;
