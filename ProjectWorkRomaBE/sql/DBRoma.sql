-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versione server:              8.0.35 - MySQL Community Server - GPL
-- S.O. server:                  Win64
-- HeidiSQL Versione:            12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dump della struttura del database gestionalefinale
CREATE DATABASE IF NOT EXISTS `gestionalefinale` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gestionalefinale`;

-- Dump della struttura di tabella gestionalefinale.candidate
CREATE TABLE IF NOT EXISTS `candidate` (
  `idCandidate` int NOT NULL AUTO_INCREMENT,
  `name` int DEFAULT NULL,
  `surname` int DEFAULT NULL,
  `birthday` int DEFAULT NULL,
  `birthPlace` int DEFAULT NULL,
  `address` int DEFAULT NULL,
  `city` int DEFAULT NULL,
  `email` int DEFAULT NULL,
  `phone` int DEFAULT NULL,
  PRIMARY KEY (`idCandidate`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dump dei dati della tabella gestionalefinale.candidate: ~0 rows (circa)

-- Dump della struttura di tabella gestionalefinale.candidate_commercial_data
CREATE TABLE IF NOT EXISTS `candidate_commercial_data` (
  `idCandidateCommercial` int NOT NULL AUTO_INCREMENT,
  `idCandidate` int DEFAULT NULL,
  `currentRal` int DEFAULT NULL,
  `proposedRal` int DEFAULT NULL,
  `monthRefund` int DEFAULT NULL,
  `businessCost` int DEFAULT NULL,
  `subsidyFlag` int DEFAULT NULL,
  `notes` text,
  PRIMARY KEY (`idCandidateCommercial`) USING BTREE,
  KEY `id_candidate` (`idCandidate`) USING BTREE,
  CONSTRAINT `FK1_idCandidate` FOREIGN KEY (`idCandidate`) REFERENCES `candidate` (`idCandidate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dump dei dati della tabella gestionalefinale.candidate_commercial_data: ~0 rows (circa)

-- Dump della struttura di tabella gestionalefinale.candidate_skill
CREATE TABLE IF NOT EXISTS `candidate_skill` (
  `idCandidateSkill` int NOT NULL AUTO_INCREMENT,
  `idCandidate` int DEFAULT NULL,
  `idSkill` int DEFAULT NULL,
  PRIMARY KEY (`idCandidateSkill`) USING BTREE,
  KEY `id_candidate` (`idCandidate`) USING BTREE,
  KEY `id_skill` (`idSkill`) USING BTREE,
  CONSTRAINT `FK2_idSkill` FOREIGN KEY (`idSkill`) REFERENCES `skill` (`idSkill`),
  CONSTRAINT `FK3_idCandidate` FOREIGN KEY (`idCandidate`) REFERENCES `candidate` (`idCandidate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dump dei dati della tabella gestionalefinale.candidate_skill: ~0 rows (circa)

-- Dump della struttura di tabella gestionalefinale.company_client
CREATE TABLE IF NOT EXISTS `company_client` (
  `idCompanyClient` int NOT NULL AUTO_INCREMENT,
  `name` text,
  `address` text,
  `city` text,
  PRIMARY KEY (`idCompanyClient`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dump dei dati della tabella gestionalefinale.company_client: ~0 rows (circa)

-- Dump della struttura di tabella gestionalefinale.contract_type
CREATE TABLE IF NOT EXISTS `contract_type` (
  `idContractType` int NOT NULL AUTO_INCREMENT,
  `title` text,
  `description` text,
  PRIMARY KEY (`idContractType`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dump dei dati della tabella gestionalefinale.contract_type: ~0 rows (circa)

-- Dump della struttura di tabella gestionalefinale.education
CREATE TABLE IF NOT EXISTS `education` (
  `idEducation` int NOT NULL AUTO_INCREMENT,
  `idEducationDegreeType` int DEFAULT NULL,
  `schoolName` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `place` text,
  `date` date DEFAULT NULL,
  `finalGrade` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`idEducation`) USING BTREE,
  KEY `id_education_degree_type` (`idEducationDegreeType`) USING BTREE,
  CONSTRAINT `FK4_idEducationDegreeType` FOREIGN KEY (`idEducationDegreeType`) REFERENCES `education_degree_type` (`idEducationDegreeType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dump dei dati della tabella gestionalefinale.education: ~0 rows (circa)

-- Dump della struttura di tabella gestionalefinale.education_degree_type
CREATE TABLE IF NOT EXISTS `education_degree_type` (
  `idEducationDegreeType` int NOT NULL AUTO_INCREMENT,
  `description` text,
  PRIMARY KEY (`idEducationDegreeType`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dump dei dati della tabella gestionalefinale.education_degree_type: ~0 rows (circa)

-- Dump della struttura di tabella gestionalefinale.employee
CREATE TABLE IF NOT EXISTS `employee` (
  `idEmployee` int NOT NULL AUTO_INCREMENT,
  `idEmployeeType` int DEFAULT NULL,
  `username` int DEFAULT NULL,
  `password` int DEFAULT NULL,
  PRIMARY KEY (`idEmployee`) USING BTREE,
  KEY `id_employee` (`idEmployeeType`) USING BTREE,
  CONSTRAINT `FK5_idEmployeeType` FOREIGN KEY (`idEmployeeType`) REFERENCES `employee_type` (`idEmployeeType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dump dei dati della tabella gestionalefinale.employee: ~0 rows (circa)

-- Dump della struttura di tabella gestionalefinale.employee_type
CREATE TABLE IF NOT EXISTS `employee_type` (
  `idEmployeeType` int NOT NULL AUTO_INCREMENT,
  `description` text,
  PRIMARY KEY (`idEmployeeType`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dump dei dati della tabella gestionalefinale.employee_type: ~0 rows (circa)

-- Dump della struttura di tabella gestionalefinale.job_interview
CREATE TABLE IF NOT EXISTS `job_interview` (
  `idJobInterview` int NOT NULL AUTO_INCREMENT,
  `idCandidate` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `idStateJobInterview` int DEFAULT NULL,
  `outcome` int DEFAULT NULL,
  `notes` text,
  `idEmployee` int DEFAULT NULL,
  PRIMARY KEY (`idJobInterview`) USING BTREE,
  KEY `id_candidate` (`idCandidate`) USING BTREE,
  KEY `id_employee` (`idEmployee`) USING BTREE,
  KEY `idStateJobInterview` (`idStateJobInterview`),
  CONSTRAINT `FK6_idCandidate` FOREIGN KEY (`idCandidate`) REFERENCES `candidate` (`idCandidate`),
  CONSTRAINT `FK7_idStateJobInterview` FOREIGN KEY (`idStateJobInterview`) REFERENCES `state_job_interview` (`idStateJobInterview`),
  CONSTRAINT `FK8_idEmployee` FOREIGN KEY (`idEmployee`) REFERENCES `employee` (`idEmployee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dump dei dati della tabella gestionalefinale.job_interview: ~0 rows (circa)

-- Dump della struttura di tabella gestionalefinale.job_offer
CREATE TABLE IF NOT EXISTS `job_offer` (
  `idJobOffer` int NOT NULL AUTO_INCREMENT,
  `title` text,
  `description` text,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `idCompanyClient` int DEFAULT NULL,
  `minRal` int DEFAULT NULL,
  `maxRal` int DEFAULT NULL,
  `idContractType` int DEFAULT NULL,
  PRIMARY KEY (`idJobOffer`) USING BTREE,
  KEY `id_company_client` (`idCompanyClient`) USING BTREE,
  KEY `id_contract_type` (`idContractType`) USING BTREE,
  CONSTRAINT `FK10_idContractType` FOREIGN KEY (`idContractType`) REFERENCES `contract_type` (`idContractType`),
  CONSTRAINT `FK9_idCompanyClient` FOREIGN KEY (`idCompanyClient`) REFERENCES `company_client` (`idCompanyClient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dump dei dati della tabella gestionalefinale.job_offer: ~0 rows (circa)

-- Dump della struttura di tabella gestionalefinale.job_offer_skill
CREATE TABLE IF NOT EXISTS `job_offer_skill` (
  `idJobOfferSkill` int NOT NULL AUTO_INCREMENT,
  `idJobOffer` int DEFAULT NULL,
  `idSkill` int DEFAULT NULL,
  PRIMARY KEY (`idJobOfferSkill`) USING BTREE,
  KEY `id_job_offer` (`idJobOffer`) USING BTREE,
  KEY `id_skill` (`idSkill`) USING BTREE,
  CONSTRAINT `FK11_idJobOffer` FOREIGN KEY (`idJobOffer`) REFERENCES `job_offer` (`idJobOffer`),
  CONSTRAINT `FK12_idSkill` FOREIGN KEY (`idSkill`) REFERENCES `skill` (`idSkill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dump dei dati della tabella gestionalefinale.job_offer_skill: ~0 rows (circa)

-- Dump della struttura di tabella gestionalefinale.skill
CREATE TABLE IF NOT EXISTS `skill` (
  `idSkill` int NOT NULL AUTO_INCREMENT,
  `title` text,
  `description` text,
  PRIMARY KEY (`idSkill`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dump dei dati della tabella gestionalefinale.skill: ~0 rows (circa)

-- Dump della struttura di tabella gestionalefinale.state_job_interview
CREATE TABLE IF NOT EXISTS `state_job_interview` (
  `idStateJobInterview` int NOT NULL AUTO_INCREMENT,
  `title` text,
  `description` text,
  PRIMARY KEY (`idStateJobInterview`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dump dei dati della tabella gestionalefinale.state_job_interview: ~0 rows (circa)

-- Dump della struttura di tabella gestionalefinale.work_experience
CREATE TABLE IF NOT EXISTS `work_experience` (
  `idWorkExperience` int NOT NULL AUTO_INCREMENT,
  `idCandidate` int DEFAULT NULL,
  `title` text,
  `description` text,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `company` text,
  `city` text,
  PRIMARY KEY (`idWorkExperience`) USING BTREE,
  KEY `id_candidate` (`idCandidate`) USING BTREE,
  CONSTRAINT `FK13_idCandidate` FOREIGN KEY (`idCandidate`) REFERENCES `candidate` (`idCandidate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dump dei dati della tabella gestionalefinale.work_experience: ~0 rows (circa)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
