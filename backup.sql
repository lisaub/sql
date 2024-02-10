--Abrir command line with administrator rights y navega a cd C:\Program Files\MySQL\MySQL Server 8.0\bin
mysqldump -u root -p --no-create-info company_db > company_db_backup.sql


-- SQL Data Dump
-- Database: company_db
-- Tables included in the data backup:
-- departments
-- performance_evaluations
-- vacation_history
-- positions
-- employees
-- capacitacion
-- beneficio
-- incidente_laboral
-- reclutamiento
-- viaje_laboral
-- employees_log
-- performance_evaluations_log
-- Generated on: 10/02/24


-- MySQL dump 10.13  Distrib 8.0.35, for Win64 (x86_64)
--
-- Host: localhost    Database: company_db_copy
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
INSERT INTO `beneficio` VALUES (1,'Beneficio 1','Descripcion 1',100.00,1),(2,'Beneficio 2','Descripcion 2',200.00,2),(3,'Beneficio 3','Descripcion 3',300.00,3),(4,'Beneficio 4','Descripcion 4',400.00,4),(5,'Beneficio 5','Descripcion 5',500.00,5);
/*!40000 ALTER TABLE `beneficio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `capacitacion`
--

LOCK TABLES `capacitacion` WRITE;
/*!40000 ALTER TABLE `capacitacion` DISABLE KEYS */;
INSERT INTO `capacitacion` VALUES (1,'Capacitacion 1','Descripcion 1','2024-01-01','2024-01-07',6.00,100.00,1,'Buena'),(2,'Capacitacion 2','Descripcion 2','2024-02-01','2024-02-07',6.00,200.00,2,'Muy Buena'),(3,'Capacitacion 3','Descripcion 3','2024-03-01','2024-03-07',6.00,300.00,3,'Excelente'),(4,'Capacitacion 4','Descripcion 4','2024-04-01','2024-04-07',6.00,400.00,4,'Regular'),(5,'Capacitacion 5','Descripcion 5','2024-05-01','2024-05-07',6.00,500.00,5,'Mala');
/*!40000 ALTER TABLE `capacitacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Sales','Handles sales',1,50000.00,20000.00),(2,'Marketing','Handles marketing',1,60000.00,25000.00),(3,'HR','Handles human resources',1,40000.00,15000.00),(4,'Engineering','Handles engineering',1,70000.00,30000.00),(5,'Finance','Handles finance',1,45000.00,20000.00);
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'John','Doe','1980-01-01','123 Main St','1234567890','john.doe@example.com',5000.00,'2024-02-10 22:33:22',1,1,'Leadership, Sales',1,1),(2,'Jane','Doe','1981-01-01','456 Main St','0987654321','jane.doe@example.com',4500.00,'2024-02-10 22:33:22',2,2,'Leadership, Marketing',2,2),(3,'Jim','Doe','1982-01-01','789 Main St','1122334455','jim.doe@example.com',4000.00,'2024-02-10 22:33:22',3,3,'Leadership, HR',3,3),(4,'Jill','Doe','1983-01-01','321 Main St','5544332211','jill.doe@example.com',5500.00,'2024-02-10 22:33:22',4,4,'Leadership, IT',4,4),(5,'Joe','Doe','1984-01-01','654 Main St','6677889900','joe.doe@example.com',6000.00,'2024-02-10 22:33:22',5,5,'Leadership, Finance',5,5),(6,'Alice','Smith','1990-01-01','789 Side St','1112223333','alice.smith@example.com',4500.00,'2024-02-10 23:37:24',1,2,'Communication, Marketing',NULL,NULL),(7,'Bob','Johnson','1991-02-01','987 Down St','4445556666','bob.johnson@example.com',4700.00,'2024-02-10 23:37:24',2,3,'Leadership, HR',NULL,NULL),(8,'Carol','Williams','1992-03-02','123 Up St','7778889999','carol.williams@example.com',5000.00,'2024-02-10 23:37:24',3,4,'Project Management, IT',NULL,NULL),(9,'David','Brown','1993-04-03','321 Round St','0001112222','david.brown@example.com',5200.00,'2024-02-10 23:37:24',4,5,'Analytical, Finance',NULL,NULL),(10,'Eve','Jones','1994-05-04','654 Square St','3334445555','eve.jones@example.com',4800.00,'2024-02-10 23:37:24',5,1,'Negotiation, Sales',NULL,NULL),(11,'Frank','Garcia','1995-06-05','456 Triangle St','6667778888','frank.garcia@example.com',4900.00,'2024-02-10 23:37:24',1,2,'Creativity, Marketing',NULL,NULL),(12,'Grace','Lee','1996-07-06','789 Circle St','9998887776','grace.lee@example.com',5100.00,'2024-02-10 23:37:24',2,3,'Strategic Planning, HR',NULL,NULL),(13,'Henry','Wilson','1997-08-07','123 Nonagon St','6663339999','henry.wilson@example.com',5300.00,'2024-02-10 23:37:24',3,4,'Innovation, IT',NULL,NULL);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_employee_update` BEFORE UPDATE ON `employees` FOR EACH ROW BEGIN
    INSERT INTO employees_log(operation, employee_id, user) 
    VALUES ('UPDATE', OLD.id, CURRENT_USER());
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
-- Dumping data for table `incidente_laboral`
--

LOCK TABLES `incidente_laboral` WRITE;
/*!40000 ALTER TABLE `incidente_laboral` DISABLE KEYS */;
INSERT INTO `incidente_laboral` VALUES (1,1,'2024-01-01','Tipo 1','Baja','Accion 1'),(2,2,'2024-02-01','Tipo 2','Media','Accion 2'),(3,3,'2024-03-01','Tipo 3','Alta','Accion 3'),(4,4,'2024-04-01','Tipo 4','Baja','Accion 4'),(5,5,'2024-05-01','Tipo 5','Media','Accion 5');
/*!40000 ALTER TABLE `incidente_laboral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `performance_evaluations`
--

LOCK TABLES `performance_evaluations` WRITE;
/*!40000 ALTER TABLE `performance_evaluations` DISABLE KEYS */;
INSERT INTO `performance_evaluations` VALUES (1,1,'2024-02-10 22:33:22',3,'Good'),(2,2,'2024-02-10 22:33:22',4,'Very Good'),(3,3,'2024-02-10 22:33:22',5,'Excellent'),(4,4,'2024-02-10 22:33:22',2,'Fair'),(5,5,'2024-02-10 22:33:22',1,'Poor');
/*!40000 ALTER TABLE `performance_evaluations` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_evaluation_insert` AFTER INSERT ON `performance_evaluations` FOR EACH ROW BEGIN
    INSERT INTO performance_evaluations_log(operation, evaluation_id, user)
    VALUES ('INSERT', NEW.id, CURRENT_USER());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping data for table `performance_evaluations_log`
--

LOCK TABLES `performance_evaluations_log` WRITE;
/*!40000 ALTER TABLE `performance_evaluations_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `performance_evaluations_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `positions`
--

LOCK TABLES `positions` WRITE;
/*!40000 ALTER TABLE `positions` DISABLE KEYS */;
INSERT INTO `positions` VALUES (1,'Sales Manager','Manages sales team',5000.00,1,'Leadership, Sales',1),(2,'Marketing Manager','Manages marketing team',4500.00,1,'Leadership, Marketing',2),(3,'HR Manager','Manages HR team',4000.00,1,'Leadership, HR',3),(4,'IT Manager','Manages IT team',5500.00,1,'Leadership, IT',4),(5,'Finance Manager','Manages finance team',6000.00,1,'Leadership, Finance',5);
/*!40000 ALTER TABLE `positions` ENABLE KEYS */;
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
-- Dumping data for table `vacation_history`
--

LOCK TABLES `vacation_history` WRITE;
/*!40000 ALTER TABLE `vacation_history` DISABLE KEYS */;
INSERT INTO `vacation_history` VALUES (1,1,'2024-01-01','2024-01-07',6.00,'Approved'),(2,2,'2024-02-01','2024-02-07',6.00,'Approved'),(3,3,'2024-03-01','2024-03-07',6.00,'Approved'),(4,4,'2024-04-01','2024-04-07',6.00,'Approved'),(5,5,'2024-05-01','2024-05-07',6.00,'Approved');
/*!40000 ALTER TABLE `vacation_history` ENABLE KEYS */;
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

-- Dump completed on 2024-02-11  0:38:43

