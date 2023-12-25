CREATE DATABASE company_db;

USE company_db;

CREATE TABLE employees (
 id INT PRIMARY KEY,
 first_name VARCHAR(50),
 last_name VARCHAR(50),
 birth_date DATE,
 address VARCHAR(100),
 phone_number VARCHAR(20),
 email VARCHAR(100),
 salary DECIMAL(10,2),
 hire_date TIMESTAMP,
 department_id INT,
 position_id INT,
 skills VARCHAR(100),
 performance_evaluation_id INT,
 vacation_history_id INT,
 FOREIGN KEY (department_id) REFERENCES departments(id),
 FOREIGN KEY (position_id) REFERENCES positions(id),
 FOREIGN KEY (performance_evaluation_id) REFERENCES performance_evaluations(id),
 FOREIGN KEY (vacation_history_id) REFERENCES vacation_history(id)
);

CREATE TABLE departments (
 id INT PRIMARY KEY,
 name VARCHAR(50),
 description TEXT,
 employees_associated INT,
 budget DECIMAL(10,2),
 expenses DECIMAL(10,2)
);

CREATE TABLE positions (
 id INT PRIMARY KEY,
 name VARCHAR(50),
 description TEXT,
 base_salary DECIMAL(10,2),
 employees_associated INT,
 required_skills VARCHAR(100),
 performance_evaluation_id INT,
 FOREIGN KEY (performance_evaluation_id) REFERENCES performance_evaluations(id)
);

CREATE TABLE performance_evaluations (
 id INT PRIMARY KEY,
 employee_id INT,
 evaluation_date TIMESTAMP,
 rating INT,
 comments TEXT,
 FOREIGN KEY (employee_id) REFERENCES employees(id)
);

CREATE TABLE vacation_history (
 id INT PRIMARY KEY,
 employee_id INT,
 start_date DATE,
 end_date DATE,
 duration DECIMAL(10,2),
 status VARCHAR(50),
 FOREIGN KEY (employee_id) REFERENCES employees(id)
);

CREATE TABLE capacitacion (
 id INT PRIMARY KEY,
 nombre VARCHAR(50),
 descripcion TEXT,
 fecha_inicio DATE,
 fecha_finalizacion DATE,
 duracion DECIMAL(10,2),
 costo DECIMAL(10,2),
 empleados_asociados INT,
 evaluacion_satisfaccion VARCHAR(50),
 FOREIGN KEY (empleados_asociados) REFERENCES employees(id)
);

CREATE TABLE beneficio (
 id INT PRIMARY KEY,
 nombre VARCHAR(50),
 descripcion TEXT,
 costo DECIMAL(10,2),
 empleados_asociados INT,
 FOREIGN KEY (empleados_asociados) REFERENCES employees(id)
);

CREATE TABLE incidente_laboral (
 id INT PRIMARY KEY,
 empleado_asociado INT,
 fecha_incidente DATE,
 tipo_incidente VARCHAR(50),
 gravedad VARCHAR(50),
 acciones_correctivas TEXT,
 FOREIGN KEY (empleado_asociado) REFERENCES employees(id)
);

CREATE TABLE reclutamiento (
 id INT PRIMARY KEY,
 puesto_asociado INT,
 fecha_publicacion DATE,
 fecha_cierre DATE,
 numero_vacantes INT,
 candidatos_asociados VARCHAR(100),
 estado VARCHAR(50),
 FOREIGN KEY (puesto_asociado) REFERENCES positions(id)
);

CREATE TABLE viaje_laboral (
 id INT PRIMARY KEY,
 empleado_asociado INT,
 destino VARCHAR(100),
 fecha_salida DATE,
 fecha_regreso DATE,
 duracion DECIMAL(10,2),
 motivo VARCHAR(100),
 costo DECIMAL(10,2),
 FOREIGN KEY (empleado_asociado) REFERENCES employees(id)
);

