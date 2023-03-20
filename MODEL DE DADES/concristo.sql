-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`role` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(10) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`user` (
  `numhermano` INT NOT NULL AUTO_INCREMENT,
  `password` VARCHAR(8) NOT NULL,
  `role_id` INT NOT NULL,
  PRIMARY KEY (`numhermano`, `role_id`),
  UNIQUE INDEX `password_UNIQUE` (`password` ASC) VISIBLE,
  INDEX `fk_user_role_idx` (`role_id` ASC) VISIBLE,
  CONSTRAINT `fk_user_role`
    FOREIGN KEY (`role_id`)
    REFERENCES `mydb`.`role` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`hermano`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`hermano` (
  `user_numhermano` INT NOT NULL AUTO_INCREMENT,
  `user_role_id` INT NOT NULL,
  `nombre` VARCHAR(30) NULL,
  `apellidos` VARCHAR(60) NULL,
  `fechanacimiento` DATE NULL,
  `dni` CHAR(9) NULL,
  `calle` VARCHAR(45) NULL,
  `numerodireccion` INT NULL,
  `piso` VARCHAR(5) NULL,
  `localidad` VARCHAR(100) NULL,
  `provincia` VARCHAR(70) NULL,
  `telefono` CHAR(9) NULL,
  `correoelectronico` VARCHAR(45) NULL,
  `banco` VARCHAR(100) NULL,
  `titular` VARCHAR(45) NULL,
  `dnititular` CHAR(9) NULL,
  `iban` CHAR(4) NULL,
  `entidad` CHAR(4) NULL,
  `oficina` CHAR(4) NULL,
  `digitocontrol` CHAR(2) NULL,
  `numerocuenta` CHAR(10) NULL,
  `fechaalta` DATE NULL,
  PRIMARY KEY (`user_numhermano`, `user_role_id`),
  UNIQUE INDEX `DNI_UNIQUE` (`dni` ASC) VISIBLE,
  UNIQUE INDEX `correoelectronico_UNIQUE` (`correoelectronico` ASC) VISIBLE,
  UNIQUE INDEX `numerocuenta_UNIQUE` (`numerocuenta` ASC) VISIBLE,
  CONSTRAINT `fk_hermano_user1`
    FOREIGN KEY (`user_numhermano` , `user_role_id`)
    REFERENCES `mydb`.`user` (`numhermano` , `role_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tipo_arch`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`tipo_arch` (
  `idtipo_arch` INT NOT NULL AUTO_INCREMENT,
  `tipo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idtipo_arch`),
  UNIQUE INDEX `tipo_UNIQUE` (`tipo` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`archivo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`archivo` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(50) NOT NULL,
  `datacion` YEAR(1920) NULL,
  `file` VARCHAR(45) NULL,
  `tipo_arch_idtipo_arch` INT NOT NULL,
  PRIMARY KEY (`id`, `tipo_arch_idtipo_arch`),
  INDEX `fk_archivo_tipo_arch1_idx` (`tipo_arch_idtipo_arch` ASC) VISIBLE,
  CONSTRAINT `fk_archivo_tipo_arch1`
    FOREIGN KEY (`tipo_arch_idtipo_arch`)
    REFERENCES `mydb`.`tipo_arch` (`idtipo_arch`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`documento_justificante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`documento_justificante` (
  `iddocumento_justificante` INT NOT NULL AUTO_INCREMENT,
  `file` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`iddocumento_justificante`),
  UNIQUE INDEX `file_UNIQUE` (`file` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`categoria_mov`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`categoria_mov` (
  `idcategoria_mov` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `cantidad` DECIMAL(10,2) NULL,
  PRIMARY KEY (`idcategoria_mov`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tipo_mov`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`tipo_mov` (
  `idtipo_mov` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `cantidad` DECIMAL(8,2) NULL,
  `categoria_mov_idcategoria_mov` INT NOT NULL,
  PRIMARY KEY (`idtipo_mov`, `categoria_mov_idcategoria_mov`),
  INDEX `fk_tipo_mov_categoria_mov1_idx` (`categoria_mov_idcategoria_mov` ASC) VISIBLE,
  CONSTRAINT `fk_tipo_mov_categoria_mov1`
    FOREIGN KEY (`categoria_mov_idcategoria_mov`)
    REFERENCES `mydb`.`categoria_mov` (`idcategoria_mov`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`movimiento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`movimiento` (
  `idmovimiento` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(45) NULL,
  `fechamovimiento` DATE NULL,
  `cantidad` DECIMAL(10,2) NULL,
  `documento_justificante_iddocumento_justificante` INT NOT NULL,
  `tipo_mov_idtipo_mov` INT NOT NULL,
  PRIMARY KEY (`idmovimiento`, `documento_justificante_iddocumento_justificante`, `tipo_mov_idtipo_mov`),
  INDEX `fk_movimiento_documento_justificante1_idx` (`documento_justificante_iddocumento_justificante` ASC) VISIBLE,
  INDEX `fk_movimiento_tipo_mov1_idx` (`tipo_mov_idtipo_mov` ASC) VISIBLE,
  CONSTRAINT `fk_movimiento_documento_justificante1`
    FOREIGN KEY (`documento_justificante_iddocumento_justificante`)
    REFERENCES `mydb`.`documento_justificante` (`iddocumento_justificante`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_movimiento_tipo_mov1`
    FOREIGN KEY (`tipo_mov_idtipo_mov`)
    REFERENCES `mydb`.`tipo_mov` (`idtipo_mov`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`images`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`images` (
  `idimages` INT NOT NULL,
  `filename` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idimages`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`aviso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`aviso` (
  `idaviso` INT NOT NULL,
  `titulo` VARCHAR(45) NOT NULL,
  `descripcion` TEXT(50) NULL,
  `images_idimages` INT NOT NULL,
  PRIMARY KEY (`idaviso`, `images_idimages`),
  INDEX `fk_aviso_images1_idx` (`images_idimages` ASC) VISIBLE,
  CONSTRAINT `fk_aviso_images1`
    FOREIGN KEY (`images_idimages`)
    REFERENCES `mydb`.`images` (`idimages`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`evento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`evento` (
  `idevento` INT NOT NULL,
  `evento` VARCHAR(45) NOT NULL,
  `descripcion` TEXT(500) NULL,
  `fecha` DATE NULL,
  `images_idimages` INT NOT NULL,
  PRIMARY KEY (`idevento`, `images_idimages`),
  INDEX `fk_evento_images1_idx` (`images_idimages` ASC) VISIBLE,
  CONSTRAINT `fk_evento_images1`
    FOREIGN KEY (`images_idimages`)
    REFERENCES `mydb`.`images` (`idimages`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
