SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `administracion` DEFAULT CHARACTER SET latin1 COLLATE latin1_spanish_ci ;
USE `administracion` ;

-- -----------------------------------------------------
-- Table `administracion`.`estadoCampo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `administracion`.`estadoCampo` ;

CREATE  TABLE IF NOT EXISTS `administracion`.`estadoCampo` (
  `idEstadoCampo` INT NOT NULL AUTO_INCREMENT ,
  `nombre` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idEstadoCampo`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `administracion`.`campo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `administracion`.`campo` ;

CREATE  TABLE IF NOT EXISTS `administracion`.`campo` (
  `idCampo` INT NOT NULL AUTO_INCREMENT ,
  `nombre` VARCHAR(45) NOT NULL ,
  `superficie` DOUBLE NOT NULL ,
  `idEstadoCampo` INT NOT NULL ,
  PRIMARY KEY (`idCampo`) ,
  INDEX `fk_campos_tipoCampo_idx` (`idEstadoCampo` ASC) ,
  CONSTRAINT `fk_campos_tipoCampo`
    FOREIGN KEY (`idEstadoCampo` )
    REFERENCES `administracion`.`estadoCampo` (`idEstadoCampo` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `administracion`.`estadoProyecto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `administracion`.`estadoProyecto` ;

CREATE  TABLE IF NOT EXISTS `administracion`.`estadoProyecto` (
  `idEstadoProyecto` INT NOT NULL AUTO_INCREMENT ,
  `nombre` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idEstadoProyecto`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `administracion`.`laboreo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `administracion`.`laboreo` ;

CREATE  TABLE IF NOT EXISTS `administracion`.`laboreo` (
  `idLaboreo` INT NOT NULL AUTO_INCREMENT ,
  `nombre` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idLaboreo`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `administracion`.`tipoSuelo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `administracion`.`tipoSuelo` ;

CREATE  TABLE IF NOT EXISTS `administracion`.`tipoSuelo` (
  `idTipoSuelo` INT NOT NULL AUTO_INCREMENT ,
  `nombre` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idTipoSuelo`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `administracion`.`lote`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `administracion`.`lote` ;

CREATE  TABLE IF NOT EXISTS `administracion`.`lote` (
  `idLote` INT NOT NULL AUTO_INCREMENT ,
  `nroLote` VARCHAR(45) NOT NULL ,
  `superficie` DOUBLE NOT NULL ,
  `idTipoSuelo` INT NOT NULL ,
  `idCampo` INT NOT NULL ,
  PRIMARY KEY (`idLote`) ,
  INDEX `fk_lote_tipoSuelo1_idx` (`idTipoSuelo` ASC) ,
  INDEX `fk_lote_campo1_idx` (`idCampo` ASC) ,
  CONSTRAINT `fk_lote_tipoSuelo1`
    FOREIGN KEY (`idTipoSuelo` )
    REFERENCES `administracion`.`tipoSuelo` (`idTipoSuelo` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_lote_campo1`
    FOREIGN KEY (`idCampo` )
    REFERENCES `administracion`.`campo` (`idCampo` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `administracion`.`cultivo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `administracion`.`cultivo` ;

CREATE  TABLE IF NOT EXISTS `administracion`.`cultivo` (
  `idCultivo` INT NOT NULL AUTO_INCREMENT ,
  `nombre` VARCHAR(45) NOT NULL ,
  `idTipoSuelo` INT NOT NULL ,
  PRIMARY KEY (`idCultivo`) ,
  INDEX `fk_cultivo_tipoSuelo1_idx` (`idTipoSuelo` ASC) ,
  CONSTRAINT `fk_cultivo_tipoSuelo1`
    FOREIGN KEY (`idTipoSuelo` )
    REFERENCES `administracion`.`tipoSuelo` (`idTipoSuelo` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `administracion`.`proyectoCultivo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `administracion`.`proyectoCultivo` ;

CREATE  TABLE IF NOT EXISTS `administracion`.`proyectoCultivo` (
  `idProyectoCultivo` INT NOT NULL AUTO_INCREMENT ,
  `fechaInicio` DATE NULL ,
  `fechaFin` DATE NULL ,
  `idLote` INT NOT NULL ,
  `idCultivo` INT NOT NULL ,
  `idEstadoProyecto` INT NOT NULL ,
  PRIMARY KEY (`idProyectoCultivo`) ,
  INDEX `fk_proyectoCultivo_lote1_idx` (`idLote` ASC) ,
  INDEX `fk_proyectoCultivo_cultivo1_idx` (`idCultivo` ASC) ,
  INDEX `fk_proyectoCultivo_estadoProyecto1_idx` (`idEstadoProyecto` ASC) ,
  CONSTRAINT `fk_proyectoCultivo_lote1`
    FOREIGN KEY (`idLote` )
    REFERENCES `administracion`.`lote` (`idLote` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_proyectoCultivo_cultivo1`
    FOREIGN KEY (`idCultivo` )
    REFERENCES `administracion`.`cultivo` (`idCultivo` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_proyectoCultivo_estadoProyecto1`
    FOREIGN KEY (`idEstadoProyecto` )
    REFERENCES `administracion`.`estadoProyecto` (`idEstadoProyecto` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `administracion`.`momentoDeLaboreo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `administracion`.`momentoDeLaboreo` ;

CREATE  TABLE IF NOT EXISTS `administracion`.`momentoDeLaboreo` (
  `idMomentoDeLaboreo` INT NOT NULL AUTO_INCREMENT ,
  `nombre` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idMomentoDeLaboreo`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `administracion`.`laboreoParaCultivo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `administracion`.`laboreoParaCultivo` ;

CREATE  TABLE IF NOT EXISTS `administracion`.`laboreoParaCultivo` (
  `idLaboreoParaCultivo` INT NOT NULL AUTO_INCREMENT ,
  `orden` INT NOT NULL ,
  `idCultivo` INT NOT NULL ,
  `idLaboreo` INT NOT NULL ,
  `idMomentoDeLaboreo` INT NOT NULL ,
  PRIMARY KEY (`idLaboreoParaCultivo`) ,
  INDEX `fk_laboreoParaCultivo_cultivo1_idx` (`idCultivo` ASC) ,
  INDEX `fk_laboreoParaCultivo_laboreo1_idx` (`idLaboreo` ASC) ,
  INDEX `fk_laboreoParaCultivo_momentoDeLaboreo1_idx` (`idMomentoDeLaboreo` ASC) ,
  CONSTRAINT `fk_laboreoParaCultivo_cultivo1`
    FOREIGN KEY (`idCultivo` )
    REFERENCES `administracion`.`cultivo` (`idCultivo` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_laboreoParaCultivo_laboreo1`
    FOREIGN KEY (`idLaboreo` )
    REFERENCES `administracion`.`laboreo` (`idLaboreo` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_laboreoParaCultivo_momentoDeLaboreo1`
    FOREIGN KEY (`idMomentoDeLaboreo` )
    REFERENCES `administracion`.`momentoDeLaboreo` (`idMomentoDeLaboreo` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
