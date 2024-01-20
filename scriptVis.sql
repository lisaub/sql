-- Vista 1: Average performance evaluations by department, filtering those departments whose average evaluation is greater than or equal to 4:
CREATE VIEW Promedio_Evaluaciones_Departamentos AS
SELECT d.name AS department_name, AVG(p.rating) AS avg_rating
FROM employees e
JOIN departments d ON e.department_id = d.id
JOIN performance_evaluations p ON e.performance_evaluation_id = p.id
GROUP BY d.name
HAVING AVG(p.rating) >= 4;

-- Vista 2: Employees who have been in the company for more than 5 years:
CREATE VIEW Empleados_Antiguos AS
SELECT e.first_name, e.last_name
FROM employees e
WHERE TIMESTAMPDIFF(YEAR, e.hire_date, CURRENT_DATE) > 5;


-- Vista 3: Total vacation days by employee, grouping by first and last name, and filtering those whose total vacation days are greater than 20:
CREATE VIEW Total_Vacaciones_Empleados AS
SELECT e.first_name, e.last_name, SUM(v.duration) AS total_vacation_days
FROM employees e
JOIN vacation_history v ON e.vacation_history_id = v.id
GROUP BY e.first_name, e.last_name
HAVING SUM(v.duration) > 20;

-- Vista 4: Empleados y sus departamentos
CREATE VIEW Empleados_Departamentos AS
SELECT e.first_name, e.last_name, d.name AS department_name
FROM employees e
JOIN departments d ON e.department_id = d.id;

-- Vista 5: Evaluaciones de rendimiento de los empleados
CREATE VIEW Evaluaciones_Empleados AS
SELECT e.first_name, e.last_name, p.evaluation_date, p.rating, p.comments
FROM employees e
JOIN performance_evaluations p ON e.performance_evaluation_id = p.id;

-- Vista 6: Historial de vacaciones de los empleados
CREATE VIEW Vacaciones_Empleados AS
SELECT e.first_name, e.last_name, v.start_date, v.end_date, v.duration, v.status
FROM employees e
JOIN vacation_history v ON e.vacation_history_id = v.id;

-- Vista 7: Capacitaciones y empleados asociados
CREATE VIEW Capacitaciones_Empleados AS
SELECT c.nombre AS capacitacion_nombre, e.first_name, e.last_name
FROM capacitacion c
JOIN employees e ON c.empleados_asociados = e.id;

-- Vista 8: Beneficios y empleados asociados
CREATE VIEW Beneficios_Empleados AS
SELECT b.nombre AS beneficio_nombre, e.first_name, e.last_name
FROM beneficio b
JOIN employees e ON b.empleados_asociados = e.id;
