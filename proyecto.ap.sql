-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema bmu2o4ker7jjurlypz7t
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `bmu2o4ker7jjurlypz7t` ;

-- -----------------------------------------------------
-- Schema bmu2o4ker7jjurlypz7t
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bmu2o4ker7jjurlypz7t` ;
USE `bmu2o4ker7jjurlypz7t` ;

-- -----------------------------------------------------
-- Table `bmu2o4ker7jjurlypz7t`.`persona`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bmu2o4ker7jjurlypz7t`.`persona` ;

CREATE TABLE IF NOT EXISTS `bmu2o4ker7jjurlypz7t`.`persona` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `email_persona` VARCHAR(255) NULL DEFAULT NULL,
  `github_persona` VARCHAR(255) NULL DEFAULT NULL,
  `img_persona` VARCHAR(255) NULL DEFAULT NULL,
  `linkedin_persona` VARCHAR(255) NULL DEFAULT NULL,
  `nombre_persona` VARCHAR(255) NULL DEFAULT NULL,
  `puesto_persona` VARCHAR(255) NULL DEFAULT NULL,
  `sobre_mi` VARCHAR(500) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `tel_persona` BIGINT NOT NULL,
  `ubicacion_persona` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `bmu2o4ker7jjurlypz7t`.`educacion`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bmu2o4ker7jjurlypz7t`.`educacion` ;

CREATE TABLE IF NOT EXISTS `bmu2o4ker7jjurlypz7t`.`educacion` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `descripcion_educacion` VARCHAR(1000) NULL DEFAULT NULL,
  `imagene` VARCHAR(255) NULL DEFAULT NULL,
  `institucion` VARCHAR(255) NULL DEFAULT NULL,
  `nombre_educacion` VARCHAR(255) NULL DEFAULT NULL,
  `persona_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_educacion_persona1_idx` (`persona_id` ASC))
ENGINE = MyISAM
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `bmu2o4ker7jjurlypz7t`.`experiencia`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bmu2o4ker7jjurlypz7t`.`experiencia` ;

CREATE TABLE IF NOT EXISTS `bmu2o4ker7jjurlypz7t`.`experiencia` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `compania` VARCHAR(255) NULL DEFAULT NULL,
  `descripcion_experiencia` VARCHAR(1000) NULL DEFAULT NULL,
  `end_exp` VARCHAR(255) NULL DEFAULT NULL,
  `img_exp` VARCHAR(255) NULL DEFAULT NULL,
  `nombre_experiencia` VARCHAR(255) NULL DEFAULT NULL,
  `start_exp` INT NOT NULL,
  `persona_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_experiencia_persona_idx` (`persona_id` ASC))
ENGINE = MyISAM
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `bmu2o4ker7jjurlypz7t`.`proyectos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bmu2o4ker7jjurlypz7t`.`proyectos` ;

CREATE TABLE IF NOT EXISTS `bmu2o4ker7jjurlypz7t`.`proyectos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(255) NULL DEFAULT NULL,
  `img_proyecto` VARCHAR(255) NULL DEFAULT NULL,
  `nombre` VARCHAR(255) NULL DEFAULT NULL,
  `url` VARCHAR(255) NULL DEFAULT NULL,
  `persona_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_proyectos_persona1_idx` (`persona_id` ASC))
ENGINE = MyISAM
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `bmu2o4ker7jjurlypz7t`.`rol`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bmu2o4ker7jjurlypz7t`.`rol` ;

CREATE TABLE IF NOT EXISTS `bmu2o4ker7jjurlypz7t`.`rol` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `rol_nombre` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `bmu2o4ker7jjurlypz7t`.`skills`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bmu2o4ker7jjurlypz7t`.`skills` ;

CREATE TABLE IF NOT EXISTS `bmu2o4ker7jjurlypz7t`.`skills` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `alcance` INT NOT NULL,
  `habilidad` VARCHAR(255) NULL DEFAULT NULL,
  `persona_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_skills_persona1_idx` (`persona_id` ASC))
ENGINE = MyISAM
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `bmu2o4ker7jjurlypz7t`.`usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bmu2o4ker7jjurlypz7t`.`usuario` ;

CREATE TABLE IF NOT EXISTS `bmu2o4ker7jjurlypz7t`.`usuario` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(255) NOT NULL,
  `nombre` VARCHAR(255) NOT NULL,
  `nombre_usuario` VARCHAR(255) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `UK_puhr3k3l7bj71hb7hk7ktpxn0` (`nombre_usuario` ASC))
ENGINE = MyISAM
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `bmu2o4ker7jjurlypz7t`.`usuario_rol`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bmu2o4ker7jjurlypz7t`.`usuario_rol` ;

CREATE TABLE IF NOT EXISTS `bmu2o4ker7jjurlypz7t`.`usuario_rol` (
  `usauario_id` INT NOT NULL,
  `rol_id` INT NOT NULL,
  `usuario_id` INT NOT NULL,
  `rol_id1` INT NOT NULL,
  PRIMARY KEY (`usauario_id`, `rol_id`, `usuario_id`, `rol_id1`),
  INDEX `FK610kvhkwcqk2pxeewur4l7bd1` (`rol_id` ASC),
  INDEX `fk_usuario_rol_usuario1_idx` (`usuario_id` ASC),
  INDEX `fk_usuario_rol_rol1_idx` (`rol_id1` ASC))
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
