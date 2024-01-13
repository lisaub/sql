-- Insert into departments
INSERT INTO departments (id, name, description, employees_associated, budget, expenses)
VALUES 
(1, 'Sales', 'Handles sales', 10, 50000.00, 20000.00),
(2, 'Marketing', 'Handles marketing', 15, 60000.00, 25000.00),
...

-- Insert into positions without performance_evaluation_id
INSERT INTO positions (id, name, description, base_salary, employees_associated, required_skills)
VALUES 
(1, 'Sales Manager', 'Manages sales team', 60000.00, 10, 'Sales, Management'),
(2, 'Marketing Manager', 'Manages marketing team', 65000.00, 15, 'Marketing, Management'),
...

-- Insert into employees without performance_evaluation_id and vacation_history_id
INSERT INTO employees (id, first_name, last_name, birth_date, address, phone_number, email, salary, hire_date, department_id, position_id, skills)
VALUES 
(1, 'John', 'Doe', '1980-01-01', '123 Main St', '555-555-5555', 'john.doe@example.com', 50000.00, CURRENT_TIMESTAMP, 1, 1, 'Sales, Management'),
(2, 'Jane', 'Doe', '1981-02-02', '456 Maple Ave', '555-555-5556', 'jane.doe@example.com', 55000.00, CURRENT_TIMESTAMP, 2, 2, 'Marketing, Management'),
...

-- Insert into performance_evaluations
INSERT INTO performance_evaluations (id, employee_id, evaluation_date, rating, comments)
VALUES 
(1, 1, CURRENT_TIMESTAMP, 5, 'Excellent work'),
(2, 2, CURRENT_TIMESTAMP, 4, 'Good job'),
...

-- Insert into vacation_history
INSERT INTO vacation_history (id, employee_id, start_date, end_date, duration, status)
VALUES 
(1, 1, '2024-01-01', '2024-01-07', 7, 'Approved'),
(2, 2, '2024-02-01', '2024-02-08', 8, 'Approved'),
...

-- Update positions with performance_evaluation_id
UPDATE positions SET performance_evaluation_id = 1 WHERE id = 1;
UPDATE positions SET performance_evaluation_id = 2 WHERE id = 2;
...

-- Update employees with performance_evaluation_id and vacation_history_id
UPDATE employees SET performance_evaluation_id = 1, vacation_history_id = 1 WHERE id = 1;
UPDATE employees SET performance_evaluation_id = 2, vacation_history_id = 2 WHERE id = 2;
...

-- Insert into capacitacion
INSERT INTO capacitacion (id, nombre, descripcion, fecha_inicio, fecha_finalizacion, duracion, costo, empleados_asociados, evaluacion_satisfaccion)
VALUES 
(1, 'Sales Training', 'Training for sales team', '2024-01-01', '2024-01-07', 7, 500.00, 1, 'Excellent'),
(2, 'Marketing Training', 'Training for marketing team', '2024-02-01', '2024-02-08', 8, 600.00, 2, 'Good'),
...

-- Insert into beneficio
INSERT INTO beneficio (id, nombre, descripcion, costo, empleados_asociados)
VALUES 
(1, 'Health Insurance', 'Provides health insurance', 200.00, 1),
(2, 'Life Insurance', 'Provides life insurance', 150.00, 2),
...

-- Insert into incidente_laboral
INSERT INTO incidente_laboral (id, empleado_asociado, fecha_incidente, tipo_incidente, gravedad, acciones_correctivas)
VALUES 
(1, 1, '2024-01-01', 'Injury', 'High', 'Provided medical care'),
(2, 2, '2024-02-02', 'Accident', 'Medium', 'Provided training'),
...

-- Insert into reclutamiento
INSERT INTO reclutamiento (id, puesto_asociado, fecha_publicacion, fecha_cierre, numero_vacantes, candidatos_asociados, estado)
VALUES 
(1, 1, '2024-01-01', '2024-01-07', 1, 'John Doe', 'Open'),
(2, 2, '2024-02-01', '2024-02-08', 2, 'Jane Doe', 'Closed'),
...

-- Insert into viaje_laboral
INSERT INTO viaje_laboral (id, empleado_asociado, destino, fecha_salida, fecha_regreso, duracion, motivo, costo)
VALUES 
(1, 1, 'New York', '2024-01-01', '2024-01-07', 7, 'Sales Meeting', 1000.00),
(2, 2, 'Los Angeles', '2024-02-01', '2024-02-08', 8, 'Marketing Conference', 1500.00),
...
