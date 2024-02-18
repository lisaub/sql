-- Vista 1: Promedio de evaluaciones de desempeño por departamento, filtrando aquellos departamentos cuyo promedio de evaluación sea mayor o igual a 4:
CREATE VIEW Promedio_Evaluaciones_Departamentos AS
SELECT d.nombre AS nombre_departamento, AVG(p.calificacion) AS calificacion_promedio
FROM empleados e
JOIN departamentos d ON e.id_departamento = d.id
JOIN evaluaciones_desempenio p ON e.id_evaluacion_desempenio = p.id
GROUP BY d.nombre
HAVING AVG(p.calificacion) >= 4;

-- Vista 2: Empleados que han estado en la empresa por más de 5 años:
CREATE VIEW Empleados_Antiguos AS
SELECT e.nombre, e.apellido
FROM empleados e
WHERE TIMESTAMPDIFF(YEAR, e.fecha_contratacion, CURRENT_DATE) > 5;

-- Vista 3: Total de días de vacaciones por empleado, agrupando por nombre y apellido, y filtrando aquellos cuyo total de días de vacaciones sea mayor a 20:
CREATE VIEW Total_Vacaciones_Empleados AS
SELECT e.nombre, e.apellido, SUM(v.duracion) AS total_dias_vacaciones
FROM empleados e
JOIN historial_vacaciones v ON e.id_historial_vacaciones = v.id
GROUP BY e.nombre, e.apellido
HAVING SUM(v.duracion) > 20;

-- Vista 4: Empleados y sus departamentos
CREATE VIEW Empleados_Departamentos AS
SELECT e.nombre, e.apellido, d.nombre AS nombre_departamento
FROM empleados e
JOIN departamentos d ON e.id_departamento = d.id;

-- Vista 5: Evaluaciones de rendimiento de los empleados
CREATE VIEW Evaluaciones_Empleados AS
SELECT e.nombre, e.apellido, p.fecha_evaluacion, p.calificacion, p.comentarios
FROM empleados e
JOIN evaluaciones_desempenio p ON e.id_evaluacion_desempenio = p.id;

-- Vista 6: Historial de vacaciones de los empleados
CREATE VIEW Vacaciones_Empleados AS
SELECT e.nombre, e.apellido, v.fecha_inicio, v.fecha_fin, v.duracion, v.estado
FROM empleados e
JOIN historial_vacaciones v ON e.id_historial_vacaciones = v.id;

-- Vista 7: Capacitaciones y empleados asociados
CREATE VIEW Capacitaciones_Empleados AS
SELECT c.nombre AS nombre_capacitacion, e.nombre, e.apellido
FROM capacitacion c
JOIN empleados e ON c.empleados_asociados = e.id;

-- Vista 8: Beneficios y empleados asociados
CREATE VIEW Beneficios_Empleados AS
SELECT b.nombre AS nombre_beneficio, e.nombre, e.apellido
FROM beneficio b
JOIN empleados e ON b.empleados_asociados = e.id;
