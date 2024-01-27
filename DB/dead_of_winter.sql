-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema dead_of_winter
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `dead_of_winter` ;

-- -----------------------------------------------------
-- Schema dead_of_winter
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `dead_of_winter` DEFAULT CHARACTER SET utf8 ;
USE `dead_of_winter` ;

-- -----------------------------------------------------
-- Table `location`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `location` ;

CREATE TABLE IF NOT EXISTS `location` (
  `id` INT(10) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(200) NOT NULL,
  `weapon` VARCHAR(200) NULL,
  `book` VARCHAR(200) NULL,
  `medical_supply` VARCHAR(200) NULL,
  `tool` VARCHAR(200) NULL,
  `food` VARCHAR(200) NULL,
  `zombie_count` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS survivor;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'survivor' IDENTIFIED BY 'survivor';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'survivor';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `location`
-- -----------------------------------------------------
START TRANSACTION;
USE `dead_of_winter`;
INSERT INTO `location` (`id`, `name`, `weapon`, `book`, `medical_supply`, `tool`, `food`, `zombie_count`) VALUES (1, 'Police Station', 'Assault Rifle', 'Firearm Safety Basics', 'Gauze and Bandages', 'Multi-tool', 'Freeze Dried Biscuits and Gravy', 4);

COMMIT;

