CREATE DATABASE company_db_1;
-- Crear base de datos de la compañía

USE company_db_1;
-- Usar la base de datos de la compañía

CREATE TABLE departamentos (
 id INT PRIMARY KEY,
 nombre VARCHAR(50),
 descripcion VARCHAR(255),
 empleados_asociados INT,
 presupuesto DECIMAL(10,2),
 gastos DECIMAL(10,2)
) ENGINE=INNODB;
-- Crear tabla de departamentos

CREATE TABLE evaluaciones_desempenio (
 id INT PRIMARY KEY,
 id_empleado INT,
 fecha_evaluacion TIMESTAMP,
 calificacion INT,
 comentarios VARCHAR(255)
) ENGINE=INNODB;
-- Crear tabla de evaluaciones de desempeño

CREATE TABLE historial_vacaciones (
 id INT PRIMARY KEY,
 id_empleado INT,
 fecha_inicio DATE,
 fecha_fin DATE,
 duracion DECIMAL(10,2),
 estado VARCHAR(50)
) ENGINE=INNODB;
-- Crear tabla de historial de vacaciones

CREATE TABLE puestos (
 id INT PRIMARY KEY,
 nombre VARCHAR(50),
 descripcion VARCHAR(255),
 salario_base DECIMAL(10,2),
 empleados_asociados INT,
 habilidades_requeridas VARCHAR(100),
 id_evaluacion_desempenio INT
) ENGINE=INNODB;
-- Crear tabla de puestos

CREATE TABLE empleados (
 id INT PRIMARY KEY,
 nombre VARCHAR(50),
 apellido VARCHAR(50),
 fecha_nacimiento DATE,
 direccion VARCHAR(100),
 numero_telefono VARCHAR(20),
 correo_electronico VARCHAR(100),
 salario DECIMAL(10,2),
 fecha_contratacion TIMESTAMP,
 id_departamento INT,
 id_puesto INT,
 habilidades VARCHAR(100),
 id_evaluacion_desempenio INT,
 id_historial_vacaciones INT
) ENGINE=INNODB;
-- Crear tabla de empleados

ALTER TABLE empleados
ADD FOREIGN KEY (id_departamento) REFERENCES departamentos(id),
ADD FOREIGN KEY (id_puesto) REFERENCES puestos(id),
ADD FOREIGN KEY (id_evaluacion_desempenio) REFERENCES evaluaciones_desempenio(id),
ADD FOREIGN KEY (id_historial_vacaciones) REFERENCES historial_vacaciones(id);

ALTER TABLE puestos
ADD FOREIGN KEY (id_evaluacion_desempenio) REFERENCES evaluaciones_desempenio(id);

ALTER TABLE evaluaciones_desempenio
ADD FOREIGN KEY (id_empleado) REFERENCES empleados(id);

ALTER TABLE historial_vacaciones
ADD FOREIGN KEY (id_empleado) REFERENCES empleados(id);

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
-- Crear tabla de capacitacion

ALTER TABLE capacitacion
ADD FOREIGN KEY (empleados_asociados) REFERENCES empleados(id);

CREATE TABLE beneficio (
 id INT PRIMARY KEY,
 nombre VARCHAR(50),
 descripcion VARCHAR(255),
 costo DECIMAL(10,2),
 empleados_asociados INT
) ENGINE=INNODB;
-- Crear tabla de beneficio

ALTER TABLE beneficio
ADD FOREIGN KEY (empleados_asociados) REFERENCES empleados(id);

CREATE TABLE incidente_laboral (
 id INT PRIMARY KEY,
 empleado_asociado INT,
 fecha_incidente DATE,
 tipo_incidente VARCHAR(50),
 gravedad VARCHAR(50),
 acciones_correctivas VARCHAR(255)
) ENGINE=INNODB;
-- Crear tabla de incidente_laboral

ALTER TABLE incidente_laboral
ADD FOREIGN KEY (empleado_asociado) REFERENCES empleados(id);

CREATE TABLE reclutamiento (
 id INT PRIMARY KEY,
 puesto_asociado INT,
 fecha_publicacion DATE,
 fecha_cierre DATE,
 numero_vacantes INT,
 candidatos_asociados VARCHAR(100),
 estado VARCHAR(50)
) ENGINE=INNODB;
-- Crear tabla de reclutamiento

ALTER TABLE reclutamiento
ADD FOREIGN KEY (puesto_asociado) REFERENCES puestos(id);

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
-- Crear tabla de viaje_laboral

ALTER TABLE viaje_laboral
ADD FOREIGN KEY (empleado_asociado) REFERENCES empleados(id);
