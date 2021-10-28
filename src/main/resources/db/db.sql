-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema struts
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema struts
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `struts` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `struts` ;

-- -----------------------------------------------------
-- Table `struts`.`contact_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `struts`.`contact_type` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `CONTACT_TYPE` VARCHAR(60) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `struts`.`contacts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `struts`.`contacts` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `PHONE_NUMBER` VARCHAR(13) NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `struts`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `struts`.`user` (
  `user_id` INT NOT NULL AUTO_INCREMENT,
  `user_name` VARCHAR(60) NULL DEFAULT NULL,
  `user_gender` VARCHAR(6) NULL DEFAULT NULL,
  `user_country` VARCHAR(20) NULL DEFAULT NULL,
  `user_about_you` VARCHAR(100) NULL DEFAULT NULL,
  `user_mailing_list` CHAR(1) NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `struts`.`endereco`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `struts`.`endereco` (
  `ID_ENDERECO` INT NOT NULL AUTO_INCREMENT,
  `LOGRADOURO` VARCHAR(400) NULL,
  `CEP` VARCHAR(8) NULL,
  `COMPLEMENTO` VARCHAR(45) NULL,
  `ESTADO` VARCHAR(2) NULL,
  `PAIS` VARCHAR(45) NULL,
  PRIMARY KEY (`ID_ENDERECO`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
