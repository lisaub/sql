-- Abrir command line with administrator rights y navega a cd C:\Program Files\MySQL\MySQL Server 8.0\bin
mysqldump -u root -p --no-create-info company_db_hr > company_db_hr_backup.sql


-- SQL Data Dump
-- Database: company_db
-- Tablas incluidas en el backup de datos:
-- departamentos
-- evaluaciones_desempenio
-- historial_vacaciones
-- puestos
-- empleados
-- capacitacion
-- beneficio
-- incidente_laboral
-- reclutamiento
-- viaje_laboral
-- employees_log
-- performance_evaluations_log
-- Generated on: 21/02/24


-- MySQL dump 10.13  Distrib 8.0.35, for Win64 (x86_64)
--
-- Host: localhost    Database: company_db_hr
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `beneficio`
--

LOCK TABLES `beneficio` WRITE;
/*!40000 ALTER TABLE `beneficio` DISABLE KEYS */;
INSERT INTO `beneficio` VALUES (1,'Beneficio 1','Descripción 1',100.00,1),(2,'Beneficio 2','Descripción 2',200.00,2),(3,'Beneficio 3','Descripción 3',300.00,3),(4,'Beneficio 4','Descripción 4',400.00,4),(5,'Beneficio 5','Descripción 5',500.00,5);
/*!40000 ALTER TABLE `beneficio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `capacitacion`
--

LOCK TABLES `capacitacion` WRITE;
/*!40000 ALTER TABLE `capacitacion` DISABLE KEYS */;
INSERT INTO `capacitacion` VALUES (1,'Capacitación 1','Descripción 1','2024-01-01','2024-01-07',6.00,100.00,1,'Buena'),(2,'Capacitación 2','Descripción 2','2024-02-01','2024-02-07',6.00,200.00,2,'Muy Buena'),(3,'Capacitación 3','Descripción 3','2024-03-01','2024-03-07',6.00,300.00,3,'Excelente'),(4,'Capacitación 4','Descripción 4','2024-04-01','2024-04-07',6.00,400.00,4,'Regular'),(5,'Capacitación 5','Descripción 5','2024-05-01','2024-05-07',6.00,500.00,5,'Mala');
/*!40000 ALTER TABLE `capacitacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `departamentos`
--

LOCK TABLES `departamentos` WRITE;
/*!40000 ALTER TABLE `departamentos` DISABLE KEYS */;
INSERT INTO `departamentos` VALUES (1,'Ventas','Maneja ventas',1,50000.00,20000.00),(2,'Marketing','Maneja marketing',1,60000.00,25000.00),(3,'Recursos Humanos','Maneja recursos humanos',1,40000.00,15000.00),(4,'Ingeniería','Maneja ingeniería',1,70000.00,30000.00),(5,'Finanzas','Maneja finanzas',1,45000.00,20000.00);
/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Juan','Pérez','1980-01-01','Calle Principal 123','1234567890','juan.perez@example.com',5000.00,'2024-02-21 20:24:40',2,1,'Liderazgo, Ventas',1,1),(2,'Ana','López','1981-01-01','Calle Principal 456','0987654321','ana.lopez@example.com',4500.00,'2024-02-21 20:24:40',2,2,'Liderazgo, Marketing',2,2),(3,'Pedro','Gómez','1982-01-01','Calle Principal 789','1122334455','pedro.gomez@example.com',4000.00,'2024-02-21 20:24:40',3,3,'Liderazgo, RRHH',3,3),(4,'María','Rodríguez','1983-01-01','Calle Principal 321','5544332211','maria.rodriguez@example.com',5500.00,'2024-02-21 20:24:40',4,4,'Liderazgo, TI',4,4),(5,'Carlos','Martínez','1984-01-01','Calle Principal 654','6677889900','carlos.martinez@example.com',6000.00,'2024-02-21 20:24:40',5,5,'Liderazgo, Finanzas',5,5);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `antes_actualizacion_empleado` BEFORE UPDATE ON `empleados` FOR EACH ROW BEGIN
    INSERT INTO employees_log(operacion, id_empleado, usuario) 
    VALUES ('ACTUALIZAR', OLD.id, CURRENT_USER());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping data for table `employees_log`
--

LOCK TABLES `employees_log` WRITE;
/*!40000 ALTER TABLE `employees_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `employees_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `evaluaciones_desempenio`
--

LOCK TABLES `evaluaciones_desempenio` WRITE;
/*!40000 ALTER TABLE `evaluaciones_desempenio` DISABLE KEYS */;
INSERT INTO `evaluaciones_desempenio` VALUES (1,1,'2024-02-21 20:24:40',3,'Bueno'),(2,2,'2024-02-21 20:24:40',4,'Muy Bueno'),(3,3,'2024-02-21 20:24:40',5,'Excelente'),(4,4,'2024-02-21 20:24:40',2,'Regular'),(5,5,'2024-02-21 20:24:40',1,'Pobre');
/*!40000 ALTER TABLE `evaluaciones_desempenio` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `despues_insercion_evaluacion` AFTER INSERT ON `evaluaciones_desempenio` FOR EACH ROW BEGIN
    INSERT INTO performance_evaluations_log(operacion, id_evaluacion, usuario)
    VALUES ('INSERTAR', NEW.id, CURRENT_USER());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping data for table `historial_vacaciones`
--

LOCK TABLES `historial_vacaciones` WRITE;
/*!40000 ALTER TABLE `historial_vacaciones` DISABLE KEYS */;
INSERT INTO `historial_vacaciones` VALUES (1,1,'2024-01-01','2024-01-07',6.00,'Aprobado'),(2,2,'2024-02-01','2024-02-07',6.00,'Aprobado'),(3,3,'2024-03-01','2024-03-07',6.00,'Aprobado'),(4,4,'2024-04-01','2024-04-07',6.00,'Aprobado'),(5,5,'2024-05-01','2024-05-07',6.00,'Aprobado');
/*!40000 ALTER TABLE `historial_vacaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `incidente_laboral`
--

LOCK TABLES `incidente_laboral` WRITE;
/*!40000 ALTER TABLE `incidente_laboral` DISABLE KEYS */;
INSERT INTO `incidente_laboral` VALUES (1,1,'2024-01-01','Tipo 1','Baja','Acción 1'),(2,2,'2024-02-01','Tipo 2','Media','Acción 2'),(3,3,'2024-03-01','Tipo 3','Alta','Acción 3'),(4,4,'2024-04-01','Tipo 4','Baja','Acción 4'),(5,5,'2024-05-01','Tipo 5','Media','Acción 5');
/*!40000 ALTER TABLE `incidente_laboral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `performance_evaluations_log`
--

LOCK TABLES `performance_evaluations_log` WRITE;
/*!40000 ALTER TABLE `performance_evaluations_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `performance_evaluations_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `puestos`
--

LOCK TABLES `puestos` WRITE;
/*!40000 ALTER TABLE `puestos` DISABLE KEYS */;
INSERT INTO `puestos` VALUES (1,'Gerente de Ventas','Administra equipo de ventas',5000.00,1,'Liderazgo, Ventas',1),(2,'Gerente de Marketing','Administra equipo de marketing',4500.00,1,'Liderazgo, Marketing',2),(3,'Gerente de Recursos Humanos','Administra equipo de recursos humanos',4000.00,1,'Liderazgo, RRHH',3),(4,'Gerente de TI','Administra equipo de TI',5500.00,1,'Liderazgo, TI',4),(5,'Gerente Financiero','Administra equipo financiero',6000.00,1,'Liderazgo, Finanzas',5);
/*!40000 ALTER TABLE `puestos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `reclutamiento`
--

LOCK TABLES `reclutamiento` WRITE;
/*!40000 ALTER TABLE `reclutamiento` DISABLE KEYS */;
INSERT INTO `reclutamiento` VALUES (1,1,'2024-01-01','2024-01-07',1,'Candidato 1','Abierto'),(2,2,'2024-02-01','2024-02-07',1,'Candidato 2','Cerrado'),(3,3,'2024-03-01','2024-03-07',1,'Candidato 3','Abierto'),(4,4,'2024-04-01','2024-04-07',1,'Candidato 4','Cerrado'),(5,5,'2024-05-01','2024-05-07',1,'Candidato 5','Abierto');
/*!40000 ALTER TABLE `reclutamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `viaje_laboral`
--

LOCK TABLES `viaje_laboral` WRITE;
/*!40000 ALTER TABLE `viaje_laboral` DISABLE KEYS */;
INSERT INTO `viaje_laboral` VALUES (1,1,'Destino 1','2024-01-01','2024-01-07',6.00,'Motivo 1',100.00),(2,2,'Destino 2','2024-02-01','2024-02-07',6.00,'Motivo 2',200.00),(3,3,'Destino 3','2024-03-01','2024-03-07',6.00,'Motivo 3',300.00),(4,4,'Destino 4','2024-04-01','2024-04-07',6.00,'Motivo 4',400.00),(5,5,'Destino 5','2024-05-01','2024-05-07',6.00,'Motivo 5',500.00);
/*!40000 ALTER TABLE `viaje_laboral` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-21 21:36:44
