-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: midtermproject
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.16.04.1-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `company_data`
--

DROP TABLE IF EXISTS `company_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_data` (
  `companyid` int(5) NOT NULL AUTO_INCREMENT,
  `companyname` varchar(500) DEFAULT NULL,
  `companyaddress` varchar(5000) DEFAULT NULL,
  `maincontact` varchar(50) DEFAULT NULL,
  `contactphone` varchar(15) DEFAULT NULL,
  `contactemail` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`companyid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_data`
--

LOCK TABLES `company_data` WRITE;
/*!40000 ALTER TABLE `company_data` DISABLE KEYS */;
INSERT INTO `company_data` VALUES (1,'ABC','1001 1st Ave, NY, NY - 10033','John Smith','923-121-4567','j.smith@gmail.com'),(2,'Google','1002 2nd Ave, NY, NY - 10033','Jenna Cook','923-232-5678','j.cook@gmail.com'),(3,'Facebook','1003 3rd Ave, NY, NY - 10033','John Wick','923-007-7000','j.wick@gmail.com');
/*!40000 ALTER TABLE `company_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_data`
--

DROP TABLE IF EXISTS `employee_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_data` (
  `employeeid` int(5) NOT NULL AUTO_INCREMENT,
  `employeename` varchar(50) DEFAULT NULL,
  `employeeaddress` varchar(5000) DEFAULT NULL,
  `employeephone` varchar(15) DEFAULT NULL,
  `employeeemail` varchar(100) DEFAULT NULL,
  `employeeinitial` varchar(3) DEFAULT NULL,
  `employeestatus` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`employeeid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_data`
--

LOCK TABLES `employee_data` WRITE;
/*!40000 ALTER TABLE `employee_data` DISABLE KEYS */;
INSERT INTO `employee_data` VALUES (1,'Tim Cook','4100 First Ave, Paramus, NJ - 07088','201-675-9876','t.cook@yahoo.com','TCC','Active'),(2,'Steve Jobs','4200 Second Ave, Paramus, NJ - 07088','201-234-5678','s.jobs@yahoo.com','SJJ','Inactive');
/*!40000 ALTER TABLE `employee_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_system`
--

DROP TABLE IF EXISTS `ticket_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_system` (
  `ticketnumber` int(5) NOT NULL AUTO_INCREMENT,
  `companyname` varchar(200) DEFAULT NULL,
  `contactname` varchar(200) DEFAULT NULL,
  `contactemail` varchar(200) DEFAULT NULL,
  `contactnumber` varchar(15) DEFAULT NULL,
  `techrequested` varchar(10) DEFAULT NULL,
  `techassigned` varchar(10) DEFAULT NULL,
  `issue` varchar(10000) DEFAULT NULL,
  `notes` varchar(10000) DEFAULT NULL,
  `revieweddate` date DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ticketnumber`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_system`
--

LOCK TABLES `ticket_system` WRITE;
/*!40000 ALTER TABLE `ticket_system` DISABLE KEYS */;
INSERT INTO `ticket_system` VALUES (1,'ABC','John Smith','j.smith@gmail.com','923-121-4567','Tim','TCC','Printer is not working correctly.','Contacted John to schedule a meeting for Monday @ 10:00am.','2017-10-15','Pending'),(2,'Google','Jenna Cook','j.cook@gamil.com','923-232-5678','Tim','TCC','Printer usb cable broken.','Shipped new usb cable on Tuesday(10/15) - tracking #Z1485608','2017-10-12','Closed');
/*!40000 ALTER TABLE `ticket_system` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-14 13:55:30
