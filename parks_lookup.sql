-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: parks_lookup
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `parks`
--

DROP TABLE IF EXISTS `parks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parks` (
  `Id` int DEFAULT NULL,
  `Name` text,
  `Location` text,
  `Type` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parks`
--

LOCK TABLES `parks` WRITE;
/*!40000 ALTER TABLE `parks` DISABLE KEYS */;
INSERT INTO `parks` VALUES (0,'Acadia National Park','Maine','National'),(1,'Arches National Park','Utah','National'),(2,'Badlands National Park','South Dakota','National'),(3,'Big Bend National Park','Texas','National'),(4,'Biscayne National Park','Florida','National'),(5,'Black Canyon of the Gunnison National Park','Colorado','National'),(6,'Bryce Canyon National Park','Utah','National'),(7,'Canyonlands National Park','Utah','National'),(8,'Capitol Reef National Park','Utah','National'),(9,'Carlsbad Caverns National Park','New Mexico','National'),(10,'Channel Islands National Park','California','National'),(11,'Congaree National Park','South Carolina','National'),(12,'Crater Lake National Park','Oregon','National'),(13,'Cuyahoga Valley National Park','Ohio','National'),(14,'Death Valley National Park','California','National'),(15,'Denali National Park and Preserve','Alaska','National'),(16,'Dry Tortugas National Park','Florida','National'),(17,'Everglades National Park','Florida','National'),(18,'Gates of the Arctic National Park','Alaska','National'),(19,'Gateway Arch National Park','Missouri','National'),(20,'Glacier Bay National Park','Alaska','National'),(21,'Glacier National Park','Montana','National'),(22,'Grand Canyon National Park','Arizona','National'),(23,'Grand Teton National Park','Wyoming','National'),(24,'Great Basin National Park','Nevada','National'),(25,'Great Sand Dunes National Park and Preserve','Colorado','National'),(26,'Great Smoky Mountains National Park','North Carolina, Tennessee','National'),(27,'Guadalupe Mountains National Park','Texas','National'),(28,'Haleakala National Park','Hawaii','National'),(29,'Hawaii Volcanoes National Park','Hawaii','National'),(30,'Hot Springs National Park','Arkansas','National'),(31,'Indiana Dunes National Park','Indiana','National'),(32,'Isle Royale National Park','Michigan','National'),(33,'Joshua Tree National Park','California','National'),(34,'Katmai National Park and Preserve','Alaska','National'),(35,'Kenai Fjords National Park','Alaska','National'),(36,'Kings Canyon National Park','California','National'),(37,'Kobuk Valley National Park','Alaska','National'),(38,'Lake Clark National Park','Alaska','National'),(39,'Lassen Volcanic National Park','California','National'),(40,'Mammoth Cave National Park','Kentucky','National'),(41,'Mesa Verde National Park','Colorado','National'),(42,'Mount Rainier National Park','Washington','National'),(43,'National Park of American Samoa','American Samoa','National'),(44,'New River Gorge National Park','West Virginia','National'),(45,'North Cascades National Park','Washington','National'),(46,'Olympic National Park','Washington','National'),(47,'Pinnacles National Park','California','National'),(48,'Petrified Forest National Park','Arizona','National'),(49,'Redwood National Park','California','National'),(50,'Rocky Mountain National Park','Colorado','National'),(51,'Saguaro National Park','Arizona','National'),(52,'Sequoia National Park','California','National'),(53,'Shenandoah National Park','Virginia','National'),(54,'Theodore Roosevelt National Park','North Dakota','National'),(55,'Virgin Islands National Park','United States Virgin Islands','National'),(56,'Voyageurs National Park','Minnesota','National'),(57,'White Sands National Park','New Mexico','National'),(58,'Wind Cave National Park','South Dakota','National'),(59,'Wrangell - St. Elias National Park and Preserve','Alaska','National'),(60,'Yellowstone National Park','Wyoming','National'),(61,'Yosemite National Park','California','National'),(62,'Zion National Park','Utah','National'),(63,'Eldorado Canyon State Park ','Colorado','State'),(64,'Golden Gate Canyon State Park ','Colorado','State'),(65,'Lathrop State Park ','Colorado','State'),(66,'Lory State Park','Colorado','State'),(67,'Pearl Lake State Park','Colorado','State'),(68,'Steamboat Lake State Park','Colorado','State'),(69,'Test Park Edit','Maine','National');
/*!40000 ALTER TABLE `parks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-22 19:10:43
