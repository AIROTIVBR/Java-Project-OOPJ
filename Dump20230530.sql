-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: san
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `dieta`
--

DROP TABLE IF EXISTS `dieta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dieta` (
  `id_die` int NOT NULL AUTO_INCREMENT,
  `dieta` blob NOT NULL,
  `id_paci` int DEFAULT NULL,
  PRIMARY KEY (`id_die`),
  KEY `id_pac_idx` (`id_paci`),
  CONSTRAINT `id_paci` FOREIGN KEY (`id_paci`) REFERENCES `pacientes` (`id_pac`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dieta`
--

LOCK TABLES `dieta` WRITE;
/*!40000 ALTER TABLE `dieta` DISABLE KEYS */;
/*!40000 ALTER TABLE `dieta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evolucao`
--

DROP TABLE IF EXISTS `evolucao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evolucao` (
  `id_evo` int NOT NULL AUTO_INCREMENT,
  `dia` date NOT NULL,
  `evolucao` text NOT NULL,
  `id_pac` int DEFAULT NULL,
  PRIMARY KEY (`id_evo`),
  KEY `id_pac_idx` (`id_pac`),
  CONSTRAINT `id_pac` FOREIGN KEY (`id_pac`) REFERENCES `pacientes` (`id_pac`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evolucao`
--

LOCK TABLES `evolucao` WRITE;
/*!40000 ALTER TABLE `evolucao` DISABLE KEYS */;
INSERT INTO `evolucao` VALUES (1,'2023-05-23','perdeu 2kg durante o fim de semana por que vomitou muito, ficou muito desidratada, tomou probiótico',1);
/*!40000 ALTER TABLE `evolucao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pacientes` (
  `id_pac` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `senha` varchar(30) NOT NULL,
  `sexo` enum('Masculino','Feminino','outro') DEFAULT NULL,
  `objetivo` varchar(200) DEFAULT NULL,
  `altura` int DEFAULT NULL,
  `peso` float DEFAULT NULL,
  `idade` int DEFAULT NULL,
  `alergia` varchar(500) DEFAULT NULL,
  `doenças` varchar(500) DEFAULT NULL,
  `sangue` enum('A+','A-','B+','B-','AB+','AB-','O+','O-') DEFAULT NULL,
  `doenças_familia` varchar(500) DEFAULT NULL,
  `atividade_física` varchar(500) DEFAULT NULL,
  `medicações` varchar(500) DEFAULT NULL,
  `liquido` varchar(500) DEFAULT NULL,
  `recordatório` text,
  `massa_muscular_total` float DEFAULT NULL,
  `massa_muscular_bd` float DEFAULT NULL,
  `massa_muscular_be` float DEFAULT NULL,
  `massa_muscular_pd` float DEFAULT NULL,
  `massa_muscular_pe` float DEFAULT NULL,
  `massa_muscular_tronco` float DEFAULT NULL,
  `massa_muscular_cond` float DEFAULT NULL,
  `massa_gorda_total` float DEFAULT NULL,
  `massa_gorda_bd` float DEFAULT NULL,
  `massa_gorda_be` float DEFAULT NULL,
  `massa_gorda_pd` float DEFAULT NULL,
  `massa_gorda_pe` float DEFAULT NULL,
  `massa_gorda_tronco` float DEFAULT NULL,
  `ideda_meta` int DEFAULT NULL,
  `porcen_liq` float DEFAULT NULL,
  `gordura_visc` int DEFAULT NULL,
  `massa_osso` int DEFAULT NULL,
  `DCI` int DEFAULT NULL,
  `intestino_preso` varchar(200) DEFAULT NULL,
  `diarreia` varchar(200) DEFAULT NULL,
  `flatulencia` varchar(200) DEFAULT NULL,
  `eructacao` varchar(200) DEFAULT NULL,
  `digestao_lenta` varchar(200) DEFAULT NULL,
  `azia` varchar(200) DEFAULT NULL,
  `nausea_vomitos` varchar(200) DEFAULT NULL,
  `hemorroida` varchar(200) DEFAULT NULL,
  `afta` varchar(200) DEFAULT NULL,
  `sangramento_geng` varchar(200) DEFAULT NULL,
  `alter_lingua` varchar(200) DEFAULT NULL,
  `mauHalito_bocaAmarga_bocaSeca` varchar(200) DEFAULT NULL,
  `labio_rach` varchar(200) DEFAULT NULL,
  `alt_apetite` varchar(200) DEFAULT NULL,
  `perda_paladar` varchar(200) DEFAULT NULL,
  `alt_peso` varchar(200) DEFAULT NULL,
  `flacidez_musc` varchar(200) DEFAULT NULL,
  `infec_freq` varchar(200) DEFAULT NULL,
  `dor_cabeça` varchar(200) DEFAULT NULL,
  `diabetes` varchar(200) DEFAULT NULL,
  `hipogli` varchar(200) DEFAULT NULL,
  `trigli_alt` varchar(200) DEFAULT NULL,
  `colest_alt` varchar(200) DEFAULT NULL,
  `tontura` varchar(200) DEFAULT NULL,
  `fraqueza` varchar(200) DEFAULT NULL,
  `espinhas` varchar(200) DEFAULT NULL,
  `mepc` varchar(200) DEFAULT NULL,
  `anemia` varchar(200) DEFAULT NULL,
  `cabelo_frag` varchar(200) DEFAULT NULL,
  `pele_ress` varchar(200) DEFAULT NULL,
  `alt_unha` varchar(200) DEFAULT NULL,
  `osteos` varchar(200) DEFAULT NULL,
  `dor_musc_art` varchar(200) DEFAULT NULL,
  `amort_b_p` varchar(200) DEFAULT NULL,
  `dif_cicat` varchar(200) DEFAULT NULL,
  `caimbra` varchar(200) DEFAULT NULL,
  `alt_cardio` varchar(200) DEFAULT NULL,
  `manchas_rox` varchar(200) DEFAULT NULL,
  `press_alta` varchar(200) DEFAULT NULL,
  `press_baix` varchar(200) DEFAULT NULL,
  `inchaco` varchar(200) DEFAULT NULL,
  `transp_exc` varchar(200) DEFAULT NULL,
  `TPM` varchar(200) DEFAULT NULL,
  `alt_menst` varchar(200) DEFAULT NULL,
  `ansiedade` varchar(200) DEFAULT NULL,
  `irritacao` varchar(200) DEFAULT NULL,
  `nervosismo` varchar(200) DEFAULT NULL,
  `hiperatv` varchar(200) DEFAULT NULL,
  `dif_atencao` varchar(200) DEFAULT NULL,
  `dif_memoria` varchar(200) DEFAULT NULL,
  `fadiga` varchar(200) DEFAULT NULL,
  `sonolencia` varchar(200) DEFAULT NULL,
  `insonia` varchar(200) DEFAULT NULL,
  `alt_ouvidos` varchar(200) DEFAULT NULL,
  `alt_olhos` varchar(200) DEFAULT NULL,
  `alt_humor` varchar(200) DEFAULT NULL,
  `depressao` varchar(200) DEFAULT NULL,
  `sind_panico` varchar(200) DEFAULT NULL,
  `micro_vasos` varchar(200) DEFAULT NULL,
  `celulite` varchar(200) DEFAULT NULL,
  `ardencia_vag_anal` varchar(200) DEFAULT NULL,
  `bruxismo` varchar(200) DEFAULT NULL,
  `fumante` varchar(200) DEFAULT NULL,
  `id_pro` int DEFAULT NULL,
  PRIMARY KEY (`id_pac`),
  KEY `id_prof_idx` (`id_pro`),
  CONSTRAINT `id_pro` FOREIGN KEY (`id_pro`) REFERENCES `profissional` (`id_pro`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacientes`
--

LOCK TABLES `pacientes` WRITE;
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
INSERT INTO `pacientes` VALUES (1,'Vitória Amorim','vitoriamorim123@gmail.com','vitoriamorim123060704','Feminino','ganho de massa',168,50.3,18,'ácaros e inhame','anemia ferropriva','O+',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Antonio Thiago','antoniothiago456@gmail.com','antoniothiago456241003','Masculino','perca de peso e ganho de massa',170,70.3,19,'morfo e beterraba','asma','A-',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Luiz antônio','luiz789@gmail.com','luiz789280704','Masculino','re-educação alimentar',170,47.5,18,'cafeína','dependência química','AB+',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profissional`
--

DROP TABLE IF EXISTS `profissional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profissional` (
  `id_pro` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `CRN` varchar(20) NOT NULL,
  `senha` varchar(30) NOT NULL,
  PRIMARY KEY (`id_pro`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profissional`
--

LOCK TABLES `profissional` WRITE;
/*!40000 ALTER TABLE `profissional` DISABLE KEYS */;
INSERT INTO `profissional` VALUES (1,'Socorro Farias1','socorrofarias@gmail,com','93uqfji0937123','socorrofarias080169');
/*!40000 ALTER TABLE `profissional` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-30 16:11:20
