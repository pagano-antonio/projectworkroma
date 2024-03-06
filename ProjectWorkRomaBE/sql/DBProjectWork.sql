/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `gestionalefinale`;
CREATE DATABASE IF NOT EXISTS `gestionalefinale` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gestionalefinale`;

DROP TABLE IF EXISTS `candidate`;
CREATE TABLE IF NOT EXISTS `candidate` (
  `idCandidate` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `surname` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `birthPlace` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` bigint DEFAULT NULL,
  PRIMARY KEY (`idCandidate`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `candidate_commercial_data`;
CREATE TABLE IF NOT EXISTS `candidate_commercial_data` (
  `idCandidateCommercial` int NOT NULL AUTO_INCREMENT,
  `idCandidate` int DEFAULT NULL,
  `currentRal` int DEFAULT NULL,
  `proposedRal` int DEFAULT NULL,
  `monthRefund` int DEFAULT NULL,
  `businessCost` int DEFAULT NULL,
  `subsidyFlag` tinyint DEFAULT NULL,
  `notes` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`idCandidateCommercial`) USING BTREE,
  KEY `id_candidate` (`idCandidate`) USING BTREE,
  CONSTRAINT `FK1_idCandidate` FOREIGN KEY (`idCandidate`) REFERENCES `candidate` (`idCandidate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `candidate_skill`;
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

DROP TABLE IF EXISTS `company_client`;
CREATE TABLE IF NOT EXISTS `company_client` (
  `idCompanyClient` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`idCompanyClient`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `contract_type`;
CREATE TABLE IF NOT EXISTS `contract_type` (
  `idContractType` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`idContractType`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `education`;
CREATE TABLE IF NOT EXISTS `education` (
  `idEducation` int NOT NULL AUTO_INCREMENT,
  `idEducationDegreeType` int DEFAULT NULL,
  `schoolName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `place` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `finalGrade` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `idCandidate` int DEFAULT NULL,
  PRIMARY KEY (`idEducation`) USING BTREE,
  KEY `id_education_degree_type` (`idEducationDegreeType`,`idCandidate`) USING BTREE,
  KEY `FK14_` (`idCandidate`),
  CONSTRAINT `FK14_` FOREIGN KEY (`idCandidate`) REFERENCES `candidate` (`idCandidate`),
  CONSTRAINT `FK4_idEducationDegreeType` FOREIGN KEY (`idEducationDegreeType`) REFERENCES `education_degree_type` (`idEducationDegreeType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `education_degree_type`;
CREATE TABLE IF NOT EXISTS `education_degree_type` (
  `idEducationDegreeType` int NOT NULL AUTO_INCREMENT,
  `description` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`idEducationDegreeType`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `idEmployee` int NOT NULL AUTO_INCREMENT,
  `idEmployeeType` int DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idEmployee`) USING BTREE,
  KEY `id_employee` (`idEmployeeType`) USING BTREE,
  CONSTRAINT `FK5_idEmployeeType` FOREIGN KEY (`idEmployeeType`) REFERENCES `employee_type` (`idEmployeeType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `employee_type`;
CREATE TABLE IF NOT EXISTS `employee_type` (
  `idEmployeeType` int NOT NULL AUTO_INCREMENT,
  `description` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`idEmployeeType`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `job_interview`;
CREATE TABLE IF NOT EXISTS `job_interview` (
  `idJobInterview` int NOT NULL AUTO_INCREMENT,
  `idCandidate` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `idStateJobInterview` int DEFAULT NULL,
  `outcome` int DEFAULT NULL,
  `notes` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `idEmployee` int DEFAULT NULL,
  PRIMARY KEY (`idJobInterview`) USING BTREE,
  KEY `id_candidate` (`idCandidate`) USING BTREE,
  KEY `id_employee` (`idEmployee`) USING BTREE,
  KEY `idStateJobInterview` (`idStateJobInterview`),
  CONSTRAINT `FK6_idCandidate` FOREIGN KEY (`idCandidate`) REFERENCES `candidate` (`idCandidate`),
  CONSTRAINT `FK7_idStateJobInterview` FOREIGN KEY (`idStateJobInterview`) REFERENCES `state_job_interview` (`idStateJobInterview`),
  CONSTRAINT `FK8_idEmployee` FOREIGN KEY (`idEmployee`) REFERENCES `employee` (`idEmployee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `job_offer`;
CREATE TABLE IF NOT EXISTS `job_offer` (
  `idJobOffer` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
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

DROP TABLE IF EXISTS `job_offer_skill`;
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

DROP TABLE IF EXISTS `skill`;
CREATE TABLE IF NOT EXISTS `skill` (
  `idSkill` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`idSkill`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `state_job_interview`;
CREATE TABLE IF NOT EXISTS `state_job_interview` (
  `idStateJobInterview` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`idStateJobInterview`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `work_experience`;
CREATE TABLE IF NOT EXISTS `work_experience` (
  `idWorkExperience` int NOT NULL AUTO_INCREMENT,
  `idCandidate` int DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `company` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`idWorkExperience`) USING BTREE,
  KEY `id_candidate` (`idCandidate`) USING BTREE,
  CONSTRAINT `FK13_idCandidate` FOREIGN KEY (`idCandidate`) REFERENCES `candidate` (`idCandidate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
