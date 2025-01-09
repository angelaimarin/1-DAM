SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8;
USE `mydb`;

-- -----------------------------------------------------
-- Table `FABRICANTES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `FABRICANTES` (
  `idProveedores` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NULL,
  `Contacto` VARCHAR(45) NULL,
  `Direccion_Fabricante` VARCHAR(45) NULL,
  PRIMARY KEY (`idProveedores`)
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `PRODUCTO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PRODUCTO` (
  `SKU` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NULL,
  `Precio` DECIMAL(10,2) NULL,
  `Descripcion` VARCHAR(45) NULL,
  `Categorias` VARCHAR(45) NULL,
  `Color` VARCHAR(45) NULL,
  `Tamano` VARCHAR(45) NULL,
  `FABRICANTES_idProveedores` INT NOT NULL,
  PRIMARY KEY (`SKU`, `FABRICANTES_idProveedores`),
  INDEX `fk_PRODUCTO_FABRICANTES1_idx` (`FABRICANTES_idProveedores` ASC),
  CONSTRAINT `fk_PRODUCTO_FABRICANTES1`
    FOREIGN KEY (`FABRICANTES_idProveedores`)
    REFERENCES `FABRICANTES` (`idProveedores`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `CLIENTES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CLIENTES` (
  `idClientes` INT NOT NULL AUTO_INCREMENT,
  `Nombre_Apellidos` VARCHAR(45) NULL,
  `Correo_electronico` VARCHAR(45) NULL,
  `Direccion_envio` VARCHAR(45) NULL,
  `Pais` VARCHAR(45) NULL,
  PRIMARY KEY (`idClientes`)
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `PEDIDO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PEDIDO` (
  `idPedido` INT NOT NULL AUTO_INCREMENT,
  `Fecha_creacion` DATE NULL,
  `Estado` VARCHAR(45) NULL,
  `idCliente` INT NOT NULL,
  PRIMARY KEY (`idPedido`, `idCliente`),
  INDEX `fk_PEDIDO_CLIENTES1_idx` (`idCliente` ASC),
  CONSTRAINT `fk_PEDIDO_CLIENTES1`
    FOREIGN KEY (`idCliente`)
    REFERENCES `CLIENTES` (`idClientes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `PROVEEDORES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PROVEEDORES` (
  `idProveedores` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL,
  `Contacto` VARCHAR(45) NULL,
  `Direccion` VARCHAR(45) NULL,
  `PRODUCTO_SKU` INT NOT NULL,
  PRIMARY KEY (`idProveedores`, `PRODUCTO_SKU`),
  INDEX `fk_PROVEEDORES_PRODUCTO1_idx` (`PRODUCTO_SKU` ASC),
  CONSTRAINT `fk_PROVEEDORES_PRODUCTO1`
    FOREIGN KEY (`PRODUCTO_SKU`)
    REFERENCES `PRODUCTO` (`SKU`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `PAGOS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PAGOS` (
  `idPagos` INT NOT NULL AUTO_INCREMENT,
  `Metodo_pago` VARCHAR(45) NULL,
  `Fecha` DATETIME NULL,
  `Precio` DECIMAL(10,2) NULL,
  `PEDIDO_idPedido` INT NOT NULL,
  `PEDIDO_CLIENTES_idClientes` INT NOT NULL,
  PRIMARY KEY (`idPagos`, `PEDIDO_idPedido`, `PEDIDO_CLIENTES_idClientes`),
  INDEX `fk_PAGOS_PEDIDO1_idx` (`PEDIDO_idPedido` ASC, `PEDIDO_CLIENTES_idClientes` ASC),
  CONSTRAINT `fk_PAGOS_PEDIDO1`
    FOREIGN KEY (`PEDIDO_idPedido`, `PEDIDO_CLIENTES_idClientes`)
    REFERENCES `PEDIDO` (`idPedido`, `idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
