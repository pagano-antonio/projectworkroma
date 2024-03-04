/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE DATABASE IF NOT EXISTS `gestionalefinale` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gestionalefinale`;

CREATE TABLE IF NOT EXISTS `candidate` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` int DEFAULT NULL,
  `surname` int DEFAULT NULL,
  `birthday` int DEFAULT NULL,
  `birth_place` int DEFAULT NULL,
  `address` int DEFAULT NULL,
  `city` int DEFAULT NULL,
  `email` int DEFAULT NULL,
  `phone` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `candidate_commercial_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_candidate` int DEFAULT NULL,
  `current_ral` int DEFAULT NULL,
  `proposed_ral` int DEFAULT NULL,
  `month_refund` int DEFAULT NULL,
  `business_cost` int DEFAULT NULL,
  `subsidy_flag` int DEFAULT NULL,
  `notes` text,
  PRIMARY KEY (`id`),
  KEY `id_candidate` (`id_candidate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `candidate_skill` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_candidate` int DEFAULT NULL,
  `id_skill` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_candidate` (`id_candidate`),
  KEY `id_skill` (`id_skill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `company_client` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text,
  `address` text,
  `city` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `contract_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` text,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `education` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_education_degree_type` int DEFAULT NULL,
  `school_name` text,
  `place` text,
  `date` date DEFAULT NULL,
  `final_grade` text,
  PRIMARY KEY (`id`),
  KEY `id_education_degree_type` (`id_education_degree_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `education_degree_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `employee_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `id_employee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_employee` int DEFAULT NULL,
  `username` int DEFAULT NULL,
  `password` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_employee` (`id_employee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `job_interview` (
  `id` int NOT NULL,
  `id_candidate` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `id_state_job_interview` int DEFAULT NULL,
  `outcome` int DEFAULT NULL,
  `notes` text,
  `id_employee` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_candidate` (`id_candidate`),
  KEY `id_employee` (`id_employee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `job_offer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` text,
  `description` text,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `id_company_client` int DEFAULT NULL,
  `min_ral` int DEFAULT NULL,
  `max_ral` int DEFAULT NULL,
  `id_contract_type` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_company_client` (`id_company_client`),
  KEY `id_contract_type` (`id_contract_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `job_offer_skill` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_job_offer` int DEFAULT NULL,
  `id_skill` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_job_offer` (`id_job_offer`),
  KEY `id_skill` (`id_skill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `skill` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` text,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `state_job_interview` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` text,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `work_experience` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_candidate` int DEFAULT NULL,
  `title` text,
  `description` text,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `company` text,
  `city` text,
  PRIMARY KEY (`id`),
  KEY `id_candidate` (`id_candidate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
