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
-- Dumping data for table `dieta`
--

LOCK TABLES `dieta` WRITE;
/*!40000 ALTER TABLE `dieta` DISABLE KEYS */;
/*!40000 ALTER TABLE `dieta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `evolucao`
--

LOCK TABLES `evolucao` WRITE;
/*!40000 ALTER TABLE `evolucao` DISABLE KEYS */;
INSERT INTO `evolucao` VALUES (1,'2023-05-23','perdeu 2kg durante o fim de semana por que vomitou muito, ficou muito desidratada, tomou probiótico',1);
/*!40000 ALTER TABLE `evolucao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pacientes`
--

LOCK TABLES `pacientes` WRITE;
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
INSERT INTO `pacientes` VALUES (1,'Vitória Amorim','vitoriamorim123@gmail.com','vitoriamorim123060704','Feminino','ganho de massa',168,50.29999923706055,18,'ácaros e inhame','anemia ferropriva','O+','anemia','duas vezes na semana','reposição de vitamina D- vitaD','2 litros por dia','costuma fazer pelo menos um lanche entre as refeições,não gosta de comer muito no café da manhã, tem muita vontade de comer durante a noite',30,31,32,33,34,40,3,3,0.8,0.7,0.5,0.5,0,NULL,70,0,40,NULL,'não','apenas quando come algo muito fora da rotina',' apenas quando come feijão','bem constante quando bebe qualquer líquido','não','não','apenas em caso de comer algo estragado','não','muito raro','não','não','boca seca','não','quando ocorre algo que altera o emocional','não','não','não','muito raro','quando tem muito estresse','não',NULL,'um pouco acima','não','quando a pressão cái ou em carro','as vezes quando passa muito tempo sem comer','não aparece com constancia',NULL,'Sim, ferropriva','não','não','não','não','incômodo do nervo ciático devido á lesão enquanto jogava vôlei','não','não','não','não','não','não','não','apenas perto da menstruação',NULL,'sim',' ciclo inconstante','sim, mas não é severa','com coisas que ela acha desnecessário ou injusto','sim','não','não','memória seletiva','não','não','não','não','não','apenas no período menstrual','não','não','não','não','não','não','não',NULL,14),(2,'Antonio Thiago','antoniothiago456@gmail.com','antoniothiago456241003','Masculino','perca de peso e ganho de massa',170,70.30000305175781,19,'morfo e beterraba','asma','A-','anemia','duas vezes na semana','reposição de vitamina D- vitaD','2 litros por dia','costuma fazer pelo menos um lanche entre as refeições,não gosta de comer muito no café da manhã, tem muita vontade de comer durante a noite',30,31,32,33,34,40,3,3,0.8,0.7,0.5,0.5,0,NULL,70,0,40,NULL,'não','apenas quando come algo muito fora da rotina',' apenas quando come feijão','bem constante quando bebe qualquer líquido','não','não','apenas em caso de comer algo estragado','não','muito raro','não','não','boca seca','não','quando ocorre algo que altera o emocional','não','não','não','muito raro','quando tem muito estresse','não',NULL,'um pouco acima','não','quando a pressão cái ou em carro','as vezes quando passa muito tempo sem comer','não aparece com constancia',NULL,'Sim, ferropriva','não','não','não','não','incômodo do nervo ciático devido á lesão enquanto jogava vôlei','não','não','não','não','não','não','não','apenas perto da menstruação',NULL,'sim',' ciclo inconstante','sim, mas não é severa','com coisas que ela acha desnecessário ou injusto','sim','não','não','memória seletiva','não','não','não','não','não','apenas no período menstrual','não','não','não','não','não','não','não',NULL,14),(3,'Luiz antônio','luiz789@gmail.com','luiz789280704','Masculino','re-educação alimentar',170,47.5,18,'cafeína','dependência química','AB+','anemia','duas vezes na semana','reposição de vitamina D- vitaD','2 litros por dia','costuma fazer pelo menos um lanche entre as refeições,não gosta de comer muito no café da manhã, tem muita vontade de comer durante a noite',30,31,32,33,34,40,3,3,0.8,0.7,0.5,0.5,0,NULL,70,0,40,NULL,'não','apenas quando come algo muito fora da rotina',' apenas quando come feijão','bem constante quando bebe qualquer líquido','não','não','apenas em caso de comer algo estragado','não','muito raro','não','não','boca seca','não','quando ocorre algo que altera o emocional','não','não','não','muito raro','quando tem muito estresse','não',NULL,'um pouco acima','não','quando a pressão cái ou em carro','as vezes quando passa muito tempo sem comer','não aparece com constancia',NULL,'Sim, ferropriva','não','não','não','não','incômodo do nervo ciático devido á lesão enquanto jogava vôlei','não','não','não','não','não','não','não','apenas perto da menstruação',NULL,'sim',' ciclo inconstante','sim, mas não é severa','com coisas que ela acha desnecessário ou injusto','sim','não','não','memória seletiva','não','não','não','não','não','apenas no período menstrual','não','não','não','não','não','não','não',NULL,14),(4,'Leylane','professora@gmail.com','123456',NULL,NULL,170,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'Júlia Fernanda','teste1@gmail.com','123456',NULL,NULL,170,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'Miguel Rodrigues','teste2@gmail.com','123456',NULL,NULL,170,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'Sebastião Rogério','rpofessor@gmail.com','123456',NULL,NULL,170,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'Kayo Monteiro','rpofessor@gmail.com','123456',NULL,NULL,170,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'Bruce Banner','rpofessor@gmail.com','123456',NULL,NULL,170,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'Steve Rogers','rpofessor@gmail.com','123456',NULL,NULL,170,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'Tony Stark','rpofessor@gmail.com','123456',NULL,NULL,170,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'Miles Morales','rpofessor@gmail.com','123456',NULL,NULL,170,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'Peter Parker','rpofessor@gmail.com','123456',NULL,NULL,170,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2023-06-06  2:18:58
