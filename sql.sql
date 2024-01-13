CREATE DATABASE company_db;
USE company_db;

CREATE TABLE departments (
 id INT PRIMARY KEY,
 name VARCHAR(50),
 description VARCHAR(255),
 employees_associated INT,
 budget DECIMAL(10,2),
 expenses DECIMAL(10,2)
) ENGINE=INNODB;

CREATE TABLE performance_evaluations (
 id INT PRIMARY KEY,
 employee_id INT,
 evaluation_date TIMESTAMP,
 rating INT,
 comments VARCHAR(255)
) ENGINE=INNODB;

CREATE TABLE vacation_history (
 id INT PRIMARY KEY,
 employee_id INT,
 start_date DATE,
 end_date DATE,
 duration DECIMAL(10,2),
 status VARCHAR(50)
) ENGINE=INNODB;

CREATE TABLE positions (
 id INT PRIMARY KEY,
 name VARCHAR(50),
 description VARCHAR(255),
 base_salary DECIMAL(10,2),
 employees_associated INT,
 required_skills VARCHAR(100),
 performance_evaluation_id INT
) ENGINE=INNODB;

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
 vacation_history_id INT
) ENGINE=INNODB;

ALTER TABLE employees
ADD FOREIGN KEY (department_id) REFERENCES departments(id),
ADD FOREIGN KEY (position_id) REFERENCES positions(id),
ADD FOREIGN KEY (performance_evaluation_id) REFERENCES performance_evaluations(id),
ADD FOREIGN KEY (vacation_history_id) REFERENCES vacation_history(id);

ALTER TABLE positions
ADD FOREIGN KEY (performance_evaluation_id) REFERENCES performance_evaluations(id);

ALTER TABLE performance_evaluations
ADD FOREIGN KEY (employee_id) REFERENCES employees(id);

ALTER TABLE vacation_history
ADD FOREIGN KEY (employee_id) REFERENCES employees(id);

CREATE TABLE capacitacion (
 id INT PRIMARY KEY,
 nombre VARCHAR(50),
 descripcion VARCHAR(255),
 fecha_inicio DATE,
 fecha_finalizacion DATE,
 duracion DECIMAL(10,2),
 costo DECIMAL(10,2),
 empleados_asociados INT,
 evaluacion_satisfaccion VARCHAR(50)
) ENGINE=INNODB;

ALTER TABLE capacitacion
ADD FOREIGN KEY (empleados_asociados) REFERENCES employees(id);

CREATE TABLE beneficio (
 id INT PRIMARY KEY,
 nombre VARCHAR(50),
 descripcion VARCHAR(255),
 costo DECIMAL(10,2),
 empleados_asociados INT
) ENGINE=INNODB;

ALTER TABLE beneficio
ADD FOREIGN KEY (empleados_asociados) REFERENCES employees(id);

CREATE TABLE incidente_laboral (
 id INT PRIMARY KEY,
 empleado_asociado INT,
 fecha_incidente DATE,
 tipo_incidente VARCHAR(50),
 gravedad VARCHAR(50),
 acciones_correctivas VARCHAR(255)
) ENGINE=INNODB;

ALTER TABLE incidente_laboral
ADD FOREIGN KEY (empleado_asociado) REFERENCES employees(id);

CREATE TABLE reclutamiento (
 id INT PRIMARY KEY,
 puesto_asociado INT,
 fecha_publicacion DATE,
 fecha_cierre DATE,
 numero_vacantes INT,
 candidatos_asociados VARCHAR(100),
 estado VARCHAR(50)
) ENGINE=INNODB;

ALTER TABLE reclutamiento
ADD FOREIGN KEY (puesto_asociado) REFERENCES positions(id);

CREATE TABLE viaje_laboral (
 id INT PRIMARY KEY,
 empleado_asociado INT,
 destino VARCHAR(100),
 fecha_salida DATE,
 fecha_regreso DATE,
 duracion DECIMAL(10,2),
 motivo VARCHAR(100),
 costo DECIMAL(10,2)
) ENGINE=INNODB;

ALTER TABLE viaje_laboral
ADD FOREIGN KEY (empleado_asociado) REFERENCES employees(id);
