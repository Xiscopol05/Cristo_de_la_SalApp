-- MySQL Workbench Synchronization
-- Generated: 2023-03-08 20:04
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Xisco Pol González

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE TABLE IF NOT EXISTS `cristo`.`archivo` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(50) NOT NULL,
  `datacion` YEAR NULL DEFAULT NULL,
  `file` VARCHAR(45) NULL DEFAULT NULL,
  `tipo_arch_idtipo_arch` INT(11) NOT NULL,
  PRIMARY KEY (`id`, `tipo_arch_idtipo_arch`),
  INDEX `fk_archivo_tipo_arch1_idx` (`tipo_arch_idtipo_arch` ASC),
  CONSTRAINT `fk_archivo_tipo_arch1`
    FOREIGN KEY (`tipo_arch_idtipo_arch`)
    REFERENCES `cristo`.`tipo_arch` (`idtipo_arch`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `cristo`.`movimiento` (
  `idmovimiento` INT(11) NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(45) NULL DEFAULT NULL,
  `fechamovimiento` DATE NULL DEFAULT NULL,
  `cantidad` DECIMAL(10,2) NULL DEFAULT NULL,
  `documento_justificante_iddocumento_justificante` INT(11) NOT NULL,
  `tipo_mov_idtipo_mov` INT(11) NOT NULL,
  PRIMARY KEY (`idmovimiento`, `documento_justificante_iddocumento_justificante`, `tipo_mov_idtipo_mov`),
  INDEX `fk_movimiento_documento_justificante1_idx` (`documento_justificante_iddocumento_justificante` ASC),
  INDEX `fk_movimiento_tipo_mov1_idx` (`tipo_mov_idtipo_mov` ASC),
  CONSTRAINT `fk_movimiento_documento_justificante1`
    FOREIGN KEY (`documento_justificante_iddocumento_justificante`)
    REFERENCES `cristo`.`documento_justificante` (`iddocumento_justificante`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_movimiento_tipo_mov1`
    FOREIGN KEY (`tipo_mov_idtipo_mov`)
    REFERENCES `cristo`.`tipo_mov` (`idtipo_mov`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `cristo`.`documento_justificante` (
  `iddocumento_justificante` INT(11) NOT NULL AUTO_INCREMENT,
  `file` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`iddocumento_justificante`),
  UNIQUE INDEX `file_UNIQUE` (`file` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `cristo`.`tipo_mov` (
  `idtipo_mov` INT(11) NOT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `cantidad` INT(11) NOT NULL,
  PRIMARY KEY (`idtipo_mov`, `cantidad`),
  INDEX `fk_tipo_mov_categoria_mov1_idx` (`cantidad` ASC),
  CONSTRAINT `fk_tipo_mov_categoria_mov1`
    FOREIGN KEY (`cantidad`)
    REFERENCES `cristo`.`categoria_mov` (`idcategoria_mov`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `cristo`.`categoria_mov` (
  `idcategoria_mov` INT(11) NOT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `cantidad` DECIMAL(10,2) NULL DEFAULT NULL,
  PRIMARY KEY (`idcategoria_mov`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `cristo`.`aviso` (
  `idaviso` INT(11) NOT NULL,
  `titulo` VARCHAR(45) NOT NULL,
  `descripcion` TEXT(500) NULL DEFAULT NULL,
  `images_idimages` INT(11) NOT NULL,
  PRIMARY KEY (`idaviso`, `images_idimages`),
  INDEX `fk_aviso_images1_idx` (`images_idimages` ASC),
  CONSTRAINT `fk_aviso_images1`
    FOREIGN KEY (`images_idimages`)
    REFERENCES `cristo`.`images` (`idimages`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `cristo`.`evento` (
  `idevento` INT(11) NOT NULL,
  `evento` VARCHAR(45) NOT NULL,
  `descripcion` TEXT(500) NULL DEFAULT NULL,
  `fecha` DATE NULL DEFAULT NULL,
  `images_idimages` INT(11) NOT NULL,
  PRIMARY KEY (`idevento`, `images_idimages`),
  INDEX `fk_evento_images1_idx` (`images_idimages` ASC),
  CONSTRAINT `fk_evento_images1`
    FOREIGN KEY (`images_idimages`)
    REFERENCES `cristo`.`images` (`idimages`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `cristo`.`images` (
  `idimages` INT(11) NOT NULL,
  `filename` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idimages`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
