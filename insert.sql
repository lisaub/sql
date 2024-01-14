-- Inserting data into the 'departments' table
INSERT INTO departments (id, name, description, employees_associated, budget, expenses)
VALUES 
(1, 'Sales', 'Handles sales', 0, 50000.00, 0.00),
(2, 'Marketing', 'Handles marketing', 0, 40000.00, 0.00),
(3, 'HR', 'Handles human resources', 0, 30000.00, 0.00),
(4, 'IT', 'Handles information technology', 0, 60000.00, 0.00),
(5, 'Finance', 'Handles finances', 0, 70000.00, 0.00);

-- Inserting data into the 'performance_evaluations' table
INSERT INTO performance_evaluations (id, employee_id, evaluation_date, rating, comments)
VALUES 
(1, NULL, CURRENT_TIMESTAMP, 3, 'Good'),
(2, NULL, CURRENT_TIMESTAMP, 4, 'Very Good'),
(3, NULL, CURRENT_TIMESTAMP, 5, 'Excellent'),
(4, NULL, CURRENT_TIMESTAMP, 2, 'Fair'),
(5, NULL, CURRENT_TIMESTAMP, 1, 'Poor');

-- Inserting data into the 'vacation_history' table
INSERT INTO vacation_history (id, employee_id, start_date, end_date, duration, status)
VALUES 
(1, NULL, '2024-01-01', '2024-01-07', 6.00, 'Approved'),
(2, NULL, '2024-02-01', '2024-02-07', 6.00, 'Approved'),
(3, NULL, '2024-03-01', '2024-03-07', 6.00, 'Approved'),
(4, NULL, '2024-04-01', '2024-04-07', 6.00, 'Approved'),
(5, NULL, '2024-05-01', '2024-05-07', 6.00, 'Approved');

-- Inserting data into the 'positions' table
INSERT INTO positions (id, name, description, base_salary, employees_associated, required_skills, performance_evaluation_id)
VALUES 
(1, 'Sales Manager', 'Manages sales team', 5000.00, 0, 'Leadership, Sales', 1),
(2, 'Marketing Manager', 'Manages marketing team', 4500.00, 0, 'Leadership, Marketing', 2),
(3, 'HR Manager', 'Manages HR team', 4000.00, 0, 'Leadership, HR', 3),
(4, 'IT Manager', 'Manages IT team', 5500.00, 0, 'Leadership, IT', 4),
(5, 'Finance Manager', 'Manages finance team', 6000.00, 0, 'Leadership, Finance', 5);

-- Inserting data into the 'employees' table
INSERT INTO employees (id, first_name, last_name, birth_date, address, phone_number, email, salary, hire_date, department_id, position_id, skills, performance_evaluation_id, vacation_history_id)
VALUES 
(1, 'John', 'Doe', '1980-01-01', '123 Main St', '1234567890', 'john.doe@example.com', 5000.00, CURRENT_TIMESTAMP, 1, 1, 'Leadership, Sales', 1, 1),
(2, 'Jane', 'Doe', '1981-01-01', '456 Main St', '0987654321', 'jane.doe@example.com', 4500.00, CURRENT_TIMESTAMP, 2, 2, 'Leadership, Marketing', 2, 2),
(3, 'Jim', 'Doe', '1982-01-01', '789 Main St', '1122334455', 'jim.doe@example.com', 4000.00, CURRENT_TIMESTAMP, 3, 3, 'Leadership, HR', 3, 3),
(4, 'Jill', 'Doe', '1983-01-01', '321 Main St', '5544332211', 'jill.doe@example.com', 5500.00, CURRENT_TIMESTAMP, 4, 4, 'Leadership, IT', 4, 4),
(5, 'Joe', 'Doe', '1984-01-01', '654 Main St', '6677889900', 'joe.doe@example.com', 6000.00, CURRENT_TIMESTAMP, 5, 5, 'Leadership, Finance', 5, 5);

-- Updating the 'performance_evaluations' table to set the 'employee_id'
UPDATE performance_evaluations SET employee_id = 1 WHERE id = 1;
UPDATE performance_evaluations SET employee_id = 2 WHERE id = 2;
UPDATE performance_evaluations SET employee_id = 3 WHERE id = 3;
UPDATE performance_evaluations SET employee_id = 4 WHERE id = 4;
UPDATE performance_evaluations SET employee_id = 5 WHERE id = 5;

-- Updating the 'vacation_history' table to set the 'employee_id'
UPDATE vacation_history SET employee_id = 1 WHERE id = 1;
UPDATE vacation_history SET employee_id = 2 WHERE id = 2;
UPDATE vacation_history SET employee_id = 3 WHERE id = 3;
UPDATE vacation_history SET employee_id = 4 WHERE id = 4;
UPDATE vacation_history SET employee_id = 5 WHERE id = 5;

-- Updating the 'departments' table to set the 'employees_associated'
UPDATE departments SET employees_associated = 1 WHERE id = 1;
UPDATE departments SET employees_associated = 1 WHERE id = 2;
UPDATE departments SET employees_associated = 1 WHERE id = 3;
UPDATE departments SET employees_associated = 1 WHERE id = 4;
UPDATE departments SET employees_associated = 1 WHERE id = 5;

-- Updating the 'positions' table to set the 'employees_associated'
UPDATE positions SET employees_associated = 1 WHERE id = 1;
UPDATE positions SET employees_associated = 1 WHERE id = 2;
UPDATE positions SET employees_associated = 1 WHERE id = 3;
UPDATE positions SET employees_associated = 1 WHERE id = 4;
UPDATE positions SET employees_associated = 1 WHERE id = 5;



-- Inserting data into the 'capacitacion' table
INSERT INTO capacitacion (id, nombre, descripcion, fecha_inicio, fecha_finalizacion, duracion, costo, empleados_asociados, evaluacion_satisfaccion)
VALUES 
(1, 'Capacitacion 1', 'Descripcion 1', '2024-01-01', '2024-01-07', 6.00, 100.00, 1, 'Buena'),
(2, 'Capacitacion 2', 'Descripcion 2', '2024-02-01', '2024-02-07', 6.00, 200.00, 2, 'Muy Buena'),
(3, 'Capacitacion 3', 'Descripcion 3', '2024-03-01', '2024-03-07', 6.00, 300.00, 3, 'Excelente'),
(4, 'Capacitacion 4', 'Descripcion 4', '2024-04-01', '2024-04-07', 6.00, 400.00, 4, 'Regular'),
(5, 'Capacitacion 5', 'Descripcion 5', '2024-05-01', '2024-05-07', 6.00, 500.00, 5, 'Mala');

-- Inserting data into the 'beneficio' table
INSERT INTO beneficio (id, nombre, descripcion, costo, empleados_asociados)
VALUES 
(1, 'Beneficio 1', 'Descripcion 1', 100.00, 1),
(2, 'Beneficio 2', 'Descripcion 2', 200.00, 2),
(3, 'Beneficio 3', 'Descripcion 3', 300.00, 3),
(4, 'Beneficio 4', 'Descripcion 4', 400.00, 4),
(5, 'Beneficio 5', 'Descripcion 5', 500.00, 5);

-- Inserting data into the 'incidente_laboral' table
INSERT INTO incidente_laboral (id, empleado_asociado, fecha_incidente, tipo_incidente, gravedad, acciones_correctivas)
VALUES 
(1, 1, '2024-01-01', 'Tipo 1', 'Baja', 'Accion 1'),
(2, 2, '2024-02-01', 'Tipo 2', 'Media', 'Accion 2'),
(3, 3, '2024-03-01', 'Tipo 3', 'Alta', 'Accion 3'),
(4, 4, '2024-04-01', 'Tipo 4', 'Baja', 'Accion 4'),
(5, 5, '2024-05-01', 'Tipo 5', 'Media', 'Accion 5');

-- Inserting data into the 'reclutamiento' table
INSERT INTO reclutamiento (id, puesto_asociado, fecha_publicacion, fecha_cierre, numero_vacantes, candidatos_asociados, estado)
VALUES 
(1, 1, '2024-01-01', '2024-01-07', 1, 'Candidato 1', 'Abierto'),
(2, 2, '2024-02-01', '2024-02-07', 1, 'Candidato 2', 'Cerrado'),
(3, 3, '2024-03-01', '2024-03-07', 1, 'Candidato 3', 'Abierto'),
(4, 4, '2024-04-01', '2024-04-07', 1, 'Candidato 4', 'Cerrado'),
(5, 5, '2024-05-01', '2024-05-07', 1, 'Candidato 5', 'Abierto');

-- Inserting data into the 'viaje_laboral' table
INSERT INTO viaje_laboral (id, empleado_asociado, destino, fecha_salida, fecha_regreso, duracion, motivo, costo)
VALUES 
(1, 1, 'Destino 1', '2024-01-01', '2024-01-07', 6.00, 'Motivo 1', 100.00),
(2, 2, 'Destino 2', '2024-02-01', '2024-02-07', 6.00, 'Motivo 2', 200.00),
(3, 3, 'Destino 3', '2024-03-01', '2024-03-07', 6.00, 'Motivo 3', 300.00),
(4, 4, 'Destino 4', '2024-04-01', '2024-04-07', 6.00, 'Motivo 4', 400.00),
(5, 5, 'Destino 5', '2024-05-01', '2024-05-07', 6.00, 'Motivo 5', 500.00);
