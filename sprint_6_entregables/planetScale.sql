-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema undergames
-- -----------------------------------------------------
-- Under Games Development
DROP SCHEMA IF EXISTS `undergames` ;

-- -----------------------------------------------------
-- Schema undergames
--
-- Under Games Development
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `undergames` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;
USE `undergames` ;

-- -----------------------------------------------------
-- Table `undergames`.`category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `undergames`.`category` (
  `id_category` INT AUTO_INCREMENT NOT NULL,
  `category` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`id_category`))
ENGINE = InnoDB
COMMENT = 'Para guardar Categorias de Juegos';


-- -----------------------------------------------------
-- Table `undergames`.`game_group`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `undergames`.`game_group` (
  `id_game_group` INT AUTO_INCREMENT NOT NULL,
  `game_group` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`id_game_group`))
ENGINE = InnoDB
COMMENT = 'Indica a qué grupo pertenece el juego:\n- New Releases\n- Top Sellers\n- Free	';


-- -----------------------------------------------------
-- Table `undergames`.`platforms`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `undergames`.`platforms` (
  `id_platforms` INT AUTO_INCREMENT NOT NULL,
  `platform_descr` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id_platforms`))
ENGINE = InnoDB
COMMENT = 'Para indicar las plataformas donde se pueden jugar los juegos';


-- -----------------------------------------------------
-- Table `undergames`.`os_min`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `undergames`.`os_min` (
  `id_os_min` INT AUTO_INCREMENT NOT NULL,
  `os_min` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`id_os_min`))
ENGINE = InnoDB
COMMENT = 'Caraterísticas minimas de Sistema Operativo requeridas por el juego';


-- -----------------------------------------------------
-- Table `undergames`.`os_rec`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `undergames`.`os_rec` (
  `id_os_rec` INT AUTO_INCREMENT NOT NULL,
  `os_rec` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`id_os_rec`))
ENGINE = InnoDB
COMMENT = 'Caraterísticas Recomendadas de Sistema Operativo requeridas por el juego';


-- -----------------------------------------------------
-- Table `undergames`.`processor_min`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `undergames`.`processor_min` (
  `id_processor_min` INT AUTO_INCREMENT NOT NULL,
  `processor_min` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`id_processor_min`))
ENGINE = InnoDB
COMMENT = 'Caraterísticas minimas de Processor requeridas por el juego';


-- -----------------------------------------------------
-- Table `undergames`.`processor_rec`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `undergames`.`processor_rec` (
  `id_processor_rec` INT AUTO_INCREMENT NOT NULL,
  `processor_rec` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`id_processor_rec`))
ENGINE = InnoDB
COMMENT = 'Caraterísticas recomendadas de Processor  requeridas por el juego';


-- -----------------------------------------------------
-- Table `undergames`.`storage_min`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `undergames`.`storage_min` (
  `id_storage_min` INT AUTO_INCREMENT NOT NULL,
  `storage_min` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`id_storage_min`))
ENGINE = InnoDB
COMMENT = 'Caraterísticas minimas de Almacenamiento requeridas por el juego';


-- -----------------------------------------------------
-- Table `undergames`.`storage_rec`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `undergames`.`storage_rec` (
  `id_storage_rec` INT AUTO_INCREMENT NOT NULL,
  `storage_rec` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`id_storage_rec`))
ENGINE = InnoDB
COMMENT = 'Caraterísticas recomendadas de Almacenamiento  requeridas por el juego';


-- -----------------------------------------------------
-- Table `undergames`.`graphics_min`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `undergames`.`graphics_min` (
  `id_graphics_min` INT AUTO_INCREMENT NOT NULL,
  `graphics_min` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`id_graphics_min`))
ENGINE = InnoDB
COMMENT = 'Caraterísticas minimas de Graphics  requeridas por el juego';


-- -----------------------------------------------------
-- Table `undergames`.`graphics_rec`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `undergames`.`graphics_rec` (
  `id_graphics_rec` INT AUTO_INCREMENT NOT NULL,
  `graphics_rec` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`id_graphics_rec`))
ENGINE = InnoDB
COMMENT = 'Caraterísticas Recomendadas de Graphics  requeridas por el juego';


-- -----------------------------------------------------
-- Table `undergames`.`creators`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `undergames`.`creators` (
  `id_creators` INT AUTO_INCREMENT NOT NULL,
  `nickname` VARCHAR(60) NOT NULL,
  `dribble` VARCHAR(60) NULL,
  `twitter` VARCHAR(60) NULL,
  `linkedin` VARCHAR(60) NULL,
  `facebook` VARCHAR(60) NULL,
  `creator_avatar` VARCHAR(100) NULL,
  PRIMARY KEY (`id_creators`))
ENGINE = InnoDB
COMMENT = 'Para guardar la info y detalle de los creadores de los juegos';


-- -----------------------------------------------------
-- Table `undergames`.`games`
-- -----------------------------------------------------
CREATE TABLE `games` (
  `id_game` INT AUTO_INCREMENT NOT NULL,
  `oldImage1` VARCHAR(200) NULL,
  `oldImage2` VARCHAR(200) NULL,
  `oldImage3` VARCHAR(200) NULL,
  `oldImage4` VARCHAR(200) NULL,
  `oldImage5` VARCHAR(200) NULL,
  `title` VARCHAR(100) NOT NULL,
  `one_word_descr` VARCHAR(60) NULL,
  `short_descr` VARCHAR(100) NULL,
  `long_descr` VARCHAR(300) NULL,
  `original_price` DECIMAL(15,2) NULL,
  `price_w_discount` DECIMAL(15,2) NULL,
  `discount` INT NULL,
  `video_1` VARCHAR(200) NULL,
  `miniatura` VARCHAR(200) NULL,
  `launch_date` DATE NULL,
  `img_1` VARCHAR(200) NULL,
  `img_2` VARCHAR(200) NULL,
  `img_3` VARCHAR(200) NULL,
  `img_4` VARCHAR(200) NULL,
  `img_5` VARCHAR(200) NULL,
  `id_category` INT NULL,
  `id_game_group` INT NULL,
  `id_platforms` INT NULL,
  `id_os_min` INT NULL,
  `id_os_rec` INT NULL,
  `id_processor_min` INT NULL,
  `id_processor_rec` INT NULL,
  `id_storage_min` INT NULL,
  `id_storage_rec` INT NULL,
  `id_graphics_min` INT NULL,
  `id_graphics_rec` INT NULL,
  `id_creators` INT NULL,
  KEY (`id_game`),
  KEY `unique_category` (`id_category`),
  KEY `unique_game_group` (`id_game_group`),
  KEY `unique_platforms` (`id_platforms`),
  KEY `unique_os_min` (`id_os_min`),
  KEY `unique_os_rec` (`id_os_rec`),
  KEY `unique_processor_min` (`id_processor_min`),
  KEY `unique_processor_rec` (`id_processor_rec`),
  KEY `unique_storage_min` (`id_storage_min`),
  KEY `unique_storage_rec` (`id_storage_rec`),
  KEY `unique_graphics_min` (`id_graphics_min`),
  KEY `unique_graphics_rec` (`id_graphics_rec`),
  KEY `unique_creators` (`id_creators`)
  ) ENGINE = InnoDB;



-- -----------------------------------------------------
-- Table `undergames`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `undergames`.`users` (
  `id_users` INT AUTO_INCREMENT NOT NULL,
  `name` VARCHAR(200) NOT NULL,
  `surname` VARCHAR(200) NULL,
  `email` VARCHAR(200) NOT NULL,
  `gamertag` VARCHAR(200) NULL,
  `password` VARCHAR(200) NULL,
  `repeted_password` VARCHAR(200) NULL,
  `tos` TINYINT NULL,
  `avatar` VARCHAR(200) NULL,
  PRIMARY KEY (`id_users`))
ENGINE = InnoDB
COMMENT = 'Detalle de usuarios';


-- -----------------------------------------------------
-- Table `undergames`.`cart`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `undergames`.`cart` (
  `id_cart` INT AUTO_INCREMENT NOT NULL,
  `id_users` INT NOT NULL,
  `id_game` INT NOT NULL,
  `total` DECIMAL NULL,
  `created_at` DATE NULL,
  PRIMARY KEY (`id_cart`),
  KEY `id_cart_users_game` (`id_users`, `id_game`),
  KEY `id_users` (`id_users`),
  KEY `id_game` (`id_game`)
) ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
