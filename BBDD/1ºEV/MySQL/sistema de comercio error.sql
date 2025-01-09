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
-- Table `mydb`.`FABRICANTES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`FABRICANTES` (
  `idProveedores` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL,
  `Contacto` VARCHAR(45) NULL,
  `Dirección` VARCHAR(45) NULL,
  PRIMARY KEY (`idProveedores`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`PRODUCTO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`PRODUCTO` (
  `SKU` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL,
  `Precio` INT NULL,
  `Descripción` VARCHAR(45) NULL,
  `Categorias` VARCHAR(45) NULL,
  `Color` VARCHAR(45) NULL,
  `Tamaño` VARCHAR(45) NULL,
  `FABRICANTES_idProveedores` INT NOT NULL,
  PRIMARY KEY (`SKU`, `FABRICANTES_idProveedores`),
  INDEX `fk_PRODUCTO_FABRICANTES1_idx` (`FABRICANTES_idProveedores` ASC) VISIBLE,
  CONSTRAINT `fk_PRODUCTO_FABRICANTES1`
    FOREIGN KEY (`FABRICANTES_idProveedores`)
    REFERENCES `mydb`.`FABRICANTES` (`idProveedores`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`CLIENTES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`CLIENTES` (
  `idClientes` INT NOT NULL,
  `Nombre y Apellidos` VARCHAR(45) NULL,
  `Correo electronico` VARCHAR(45) NULL,
  `Dirección de envio` VARCHAR(45) NULL,
  `Pais` VARCHAR(45) NULL,
  PRIMARY KEY (`idClientes`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`PEDIDO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`PEDIDO` (
  `idPedido` INT NOT NULL,
  `Fecha creación` DATE NULL,
  `Estado` VARCHAR(45) NULL,
  `idCliente` INT NOT NULL,
  PRIMARY KEY (`idPedido`, `idCliente`),
  INDEX `fk_PEDIDO_CLIENTES1_idx` (`idCliente` ASC) VISIBLE,
  CONSTRAINT `fk_PEDIDO_CLIENTES1`
    FOREIGN KEY (`idCliente`)
    REFERENCES `mydb`.`CLIENTES` (`idClientes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`PROVEEDORES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`PROVEEDORES` (
  `idProveedores` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL,
  `Contacto` VARCHAR(45) NULL,
  `Dirección` VARCHAR(45) NULL,
  `PRODUCTO_SKU` INT NOT NULL,
  PRIMARY KEY (`idProveedores`, `PRODUCTO_SKU`),
  INDEX `fk_PROVEEDORES_PRODUCTO1_idx` (`PRODUCTO_SKU` ASC) VISIBLE,
  CONSTRAINT `fk_PROVEEDORES_PRODUCTO1`
    FOREIGN KEY (`PRODUCTO_SKU`)
    REFERENCES `mydb`.`PRODUCTO` (`SKU`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`PAGOS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`PAGOS` (
  `idPagos` INT NOT NULL,
  `Metodo de pago` VARCHAR(45) NULL,
  `Fecha` DATETIME NULL,
  `Precio` INT NULL,
  `PEDIDO_idPedido` INT NOT NULL,
  `PEDIDO_CLIENTES_idClientes` INT NOT NULL,
  PRIMARY KEY (`idPagos`, `PEDIDO_idPedido`, `PEDIDO_CLIENTES_idClientes`),
  INDEX `fk_PAGOS_PEDIDO1_idx` (`PEDIDO_idPedido` ASC, `PEDIDO_CLIENTES_idClientes` ASC) VISIBLE,
  CONSTRAINT `fk_PAGOS_PEDIDO1`
    FOREIGN KEY (`PEDIDO_idPedido` , `PEDIDO_CLIENTES_idClientes`)
    REFERENCES `mydb`.`PEDIDO` (`idPedido` , `idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`ENVIOS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`ENVIOS` (
  `idEnvios` INT NOT NULL,
  `Tipo de envio` VARCHAR(45) NULL,
  `Empresa asociada` VARCHAR(45) NULL,
  `Estado` VARCHAR(45) NULL,
  `fec_salida` DATE NULL,
  `fec_estimada` DATE NULL,
  `PEDIDO_idPedido` INT NOT NULL,
  `PEDIDO_CLIENTES_idClientes` INT NOT NULL,
  PRIMARY KEY (`idEnvios`, `PEDIDO_idPedido`, `PEDIDO_CLIENTES_idClientes`),
  INDEX `fk_ENVIOS_PEDIDO1_idx` (`PEDIDO_idPedido` ASC, `PEDIDO_CLIENTES_idClientes` ASC) VISIBLE,
  CONSTRAINT `fk_ENVIOS_PEDIDO1`
    FOREIGN KEY (`PEDIDO_idPedido` , `PEDIDO_CLIENTES_idClientes`)
    REFERENCES `mydb`.`PEDIDO` (`idPedido` , `idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`TIENDA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`TIENDA` (
  `idTienda` INT NOT NULL,
  `Precio` INT NULL,
  `Promocion_Activa` TINYINT NULL,
  `Promocion` DOUBLE NULL,
  `Cantidad` INT NULL,
  `PRODUCTO_SKU` INT NOT NULL,
  `PRODUCTO_FABRICANTES_idProveedores` INT NOT NULL,
  PRIMARY KEY (`idTienda`, `PRODUCTO_SKU`, `PRODUCTO_FABRICANTES_idProveedores`),
  INDEX `fk_TIENDA_PRODUCTO1_idx` (`PRODUCTO_SKU` ASC, `PRODUCTO_FABRICANTES_idProveedores` ASC) VISIBLE,
  CONSTRAINT `fk_TIENDA_PRODUCTO1`
    FOREIGN KEY (`PRODUCTO_SKU` , `PRODUCTO_FABRICANTES_idProveedores`)
    REFERENCES `mydb`.`PRODUCTO` (`SKU` , `FABRICANTES_idProveedores`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`RESEÑAS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`RESEÑAS` (
  `idReseñas` INT NOT NULL,
  `Fecha` DATE NULL,
  `Puntuacion` INT NULL,
  `Comentario` VARCHAR(45) NULL,
  `CLIENTES_idClientes` INT NOT NULL,
  `PRODUCTO_SKU` INT NOT NULL,
  `PRODUCTO_FABRICANTES_idProveedores` INT NOT NULL,
  `ENVIOS_idEnvios` INT NOT NULL,
  `ENVIOS_PEDIDO_idPedido` INT NOT NULL,
  `ENVIOS_PEDIDO_CLIENTES_idClientes` INT NOT NULL,
  PRIMARY KEY (`idReseñas`, `CLIENTES_idClientes`, `PRODUCTO_SKU`, `PRODUCTO_FABRICANTES_idProveedores`, `ENVIOS_idEnvios`, `ENVIOS_PEDIDO_idPedido`, `ENVIOS_PEDIDO_CLIENTES_idClientes`),
  INDEX `fk_RESEÑAS_CLIENTES1_idx` (`CLIENTES_idClientes` ASC) VISIBLE,
  INDEX `fk_RESEÑAS_PRODUCTO1_idx` (`PRODUCTO_SKU` ASC, `PRODUCTO_FABRICANTES_idProveedores` ASC) VISIBLE,
  INDEX `fk_RESEÑAS_ENVIOS1_idx` (`ENVIOS_idEnvios` ASC, `ENVIOS_PEDIDO_idPedido` ASC, `ENVIOS_PEDIDO_CLIENTES_idClientes` ASC) VISIBLE,
  CONSTRAINT `fk_RESEÑAS_CLIENTES1`
    FOREIGN KEY (`CLIENTES_idClientes`)
    REFERENCES `mydb`.`CLIENTES` (`idClientes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_RESEÑAS_PRODUCTO1`
    FOREIGN KEY (`PRODUCTO_SKU` , `PRODUCTO_FABRICANTES_idProveedores`)
    REFERENCES `mydb`.`PRODUCTO` (`SKU` , `FABRICANTES_idProveedores`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_RESEÑAS_ENVIOS1`
    FOREIGN KEY (`ENVIOS_idEnvios` , `ENVIOS_PEDIDO_idPedido` , `ENVIOS_PEDIDO_CLIENTES_idClientes`)
    REFERENCES `mydb`.`ENVIOS` (`idEnvios` , `PEDIDO_idPedido` , `PEDIDO_CLIENTES_idClientes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`CARRITO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`CARRITO` (
  `idCarrito` INT NOT NULL,
  `PRODUCTO_SKU` INT NOT NULL,
  `CLIENTES_idClientes` INT NOT NULL,
  PRIMARY KEY (`idCarrito`, `PRODUCTO_SKU`, `CLIENTES_idClientes`),
  INDEX `fk_CARRITO_CLIENTES1_idx` (`CLIENTES_idClientes` ASC) VISIBLE,
  CONSTRAINT `fk_CARRITO_CLIENTES1`
    FOREIGN KEY (`CLIENTES_idClientes`)
    REFERENCES `mydb`.`CLIENTES` (`idClientes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`IMPUESTOS Y TARIFAS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`IMPUESTOS Y TARIFAS` (
  `idImpuestos` INT NOT NULL,
  `Pais de origen` VARCHAR(45) NULL,
  `Gastos asociados` INT NULL,
  `PEDIDO_idPedido` INT NOT NULL,
  `PEDIDO_CLIENTES_idClientes` INT NOT NULL,
  PRIMARY KEY (`idImpuestos`, `PEDIDO_idPedido`, `PEDIDO_CLIENTES_idClientes`),
  INDEX `fk_IMPUESTOS Y TARIFAS_PEDIDO1_idx` (`PEDIDO_idPedido` ASC, `PEDIDO_CLIENTES_idClientes` ASC) VISIBLE,
  CONSTRAINT `fk_IMPUESTOS Y TARIFAS_PEDIDO1`
    FOREIGN KEY (`PEDIDO_idPedido` , `PEDIDO_CLIENTES_idClientes`)
    REFERENCES `mydb`.`PEDIDO` (`idPedido` , `idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`CESTAS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`CESTAS` (
  `PRODUCTO_SKU` INT NOT NULL,
  `PRODUCTO_FABRICANTES_idProveedores` INT NOT NULL,
  `CARRITO_idCarrito` INT NOT NULL,
  `CARRITO_PRODUCTO_SKU` INT NOT NULL,
  `CARRITO_CLIENTES_idClientes` INT NOT NULL,
  PRIMARY KEY (`PRODUCTO_SKU`, `PRODUCTO_FABRICANTES_idProveedores`, `CARRITO_idCarrito`, `CARRITO_PRODUCTO_SKU`, `CARRITO_CLIENTES_idClientes`),
  INDEX `fk_PRODUCTO_has_CARRITO_CARRITO1_idx` (`CARRITO_idCarrito` ASC, `CARRITO_PRODUCTO_SKU` ASC, `CARRITO_CLIENTES_idClientes` ASC) VISIBLE,
  INDEX `fk_PRODUCTO_has_CARRITO_PRODUCTO1_idx` (`PRODUCTO_SKU` ASC, `PRODUCTO_FABRICANTES_idProveedores` ASC) VISIBLE,
  CONSTRAINT `fk_PRODUCTO_has_CARRITO_PRODUCTO1`
    FOREIGN KEY (`PRODUCTO_SKU` , `PRODUCTO_FABRICANTES_idProveedores`)
    REFERENCES `mydb`.`PRODUCTO` (`SKU` , `FABRICANTES_idProveedores`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PRODUCTO_has_CARRITO_CARRITO1`
    FOREIGN KEY (`CARRITO_idCarrito` , `CARRITO_PRODUCTO_SKU` , `CARRITO_CLIENTES_idClientes`)
    REFERENCES `mydb`.`CARRITO` (`idCarrito` , `PRODUCTO_SKU` , `CLIENTES_idClientes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`PRODUCTO_has_PEDIDO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`PRODUCTO_has_PEDIDO` (
  `PRODUCTO_SKU` INT NOT NULL,
  `PRODUCTO_FABRICANTES_idProveedores` INT NOT NULL,
  `PEDIDO_idPedido` INT NOT NULL,
  `PEDIDO_idCliente` INT NOT NULL,
  PRIMARY KEY (`PRODUCTO_SKU`, `PRODUCTO_FABRICANTES_idProveedores`, `PEDIDO_idPedido`, `PEDIDO_idCliente`),
  INDEX `fk_PRODUCTO_has_PEDIDO_PEDIDO1_idx` (`PEDIDO_idPedido` ASC, `PEDIDO_idCliente` ASC) VISIBLE,
  INDEX `fk_PRODUCTO_has_PEDIDO_PRODUCTO1_idx` (`PRODUCTO_SKU` ASC, `PRODUCTO_FABRICANTES_idProveedores` ASC) VISIBLE,
  CONSTRAINT `fk_PRODUCTO_has_PEDIDO_PRODUCTO1`
    FOREIGN KEY (`PRODUCTO_SKU` , `PRODUCTO_FABRICANTES_idProveedores`)
    REFERENCES `mydb`.`PRODUCTO` (`SKU` , `FABRICANTES_idProveedores`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PRODUCTO_has_PEDIDO_PEDIDO1`
    FOREIGN KEY (`PEDIDO_idPedido` , `PEDIDO_idCliente`)
    REFERENCES `mydb`.`PEDIDO` (`idPedido` , `idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
