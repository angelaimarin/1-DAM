-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-02-2024 a las 10:11:10
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mydb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bombero`
--

CREATE TABLE `bombero` (
  `idBombero` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellidos` varchar(45) DEFAULT NULL,
  `Fec_Nac` date DEFAULT NULL,
  `DNI` varchar(10) DEFAULT NULL,
  `Direccion` varchar(100) DEFAULT NULL,
  `Telefono` int(12) DEFAULT NULL,
  `idParque` int(11) NOT NULL,
  `idTurno` int(11) NOT NULL,
  `fec_ini_turno` date DEFAULT NULL,
  `fec_fin_turno` date DEFAULT NULL,
  `cod_equipo` int(11) NOT NULL,
  `puesto_equipo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `bombero`
--

INSERT INTO `bombero` (`idBombero`, `Nombre`, `Apellidos`, `Fec_Nac`, `DNI`, `Direccion`, `Telefono`, `idParque`, `idTurno`, `fec_ini_turno`, `fec_fin_turno`, `cod_equipo`, `puesto_equipo`) VALUES
(1, 'Juan', 'Pérez', '1990-01-01', '12345678A', 'Calle Mayor 1', 111222333, 1, 1, '2024-01-01', '2024-01-31', 1, 'Capitán'),
(2, 'María', 'González', '1992-02-02', '87654321B', 'Avenida Principal 2', 444555666, 2, 2, '2024-01-01', '2024-01-31', 2, 'Médico de Emergencias'),
(3, 'Pedro', 'Martínez', '1988-03-03', '13579246C', 'Plaza Central 3', 777888999, 3, 3, '2024-01-01', '2024-01-31', 3, 'Rescatista'),
(4, 'Ana', 'López', '1995-04-04', '24681357D', 'Calle Secundaria 4', 222333444, 1, 1, '2024-01-01', '2024-01-31', 4, 'Paramédico'),
(5, 'Carlos', 'Sánchez', '1993-05-05', '13572468E', 'Avenida Principal 5', 555666777, 2, 2, '2024-01-01', '2024-01-31', 5, 'Bombero'),
(6, 'Laura', 'Fernández', '1991-06-06', '98765432F', 'Camino Rural 6', 888999000, 3, 3, '2024-01-01', '2024-01-31', 6, 'Rescatista'),
(7, 'David', 'Rodríguez', '1990-07-07', '56789123G', 'Calle Mayor 7', 333444555, 1, 1, '2024-01-01', '2024-01-31', 7, 'Bombero'),
(8, 'Elena', 'Gómez', '1994-08-08', '43218765H', 'Avenida Principal 8', 666777888, 2, 2, '2024-01-01', '2024-01-31', 8, 'Paramédico'),
(9, 'Javier', 'Martín', '1989-09-09', '87654321I', 'Plaza Central 9', 111222333, 3, 3, '2024-01-01', '2024-01-31', 9, 'Bombero'),
(10, 'Lucía', 'Ruiz', '1996-10-10', '13579246J', 'Calle Secundaria 10', 444555666, 1, 1, '2024-01-01', '2024-01-31', 10, 'Capitán'),
(11, 'Nombre0', 'Apellido0', '1990-01-01', '0123456A', 'Dirección 0', 123456789, 1, 1, '2024-01-01', '2024-01-31', 1, 'Puesto 0'),
(12, 'Nombre1', 'Apellido1', '1989-12-31', '1123456A', 'Dirección 1', 123456790, 2, 2, '2023-12-31', '2024-01-30', 2, 'Puesto 1'),
(13, 'Nombre2', 'Apellido2', '1989-12-30', '2123456A', 'Dirección 2', 123456791, 3, 3, '2023-12-30', '2024-01-29', 3, 'Puesto 2'),
(14, 'Nombre3', 'Apellido3', '1989-12-29', '3123456A', 'Dirección 3', 123456792, 1, 1, '2023-12-29', '2024-01-28', 1, 'Puesto 3'),
(15, 'Nombre4', 'Apellido4', '1989-12-28', '4123456A', 'Dirección 4', 123456793, 2, 2, '2023-12-28', '2024-01-27', 2, 'Puesto 4'),
(16, 'Nombre5', 'Apellido5', '1989-12-27', '5123456A', 'Dirección 5', 123456794, 3, 3, '2023-12-27', '2024-01-26', 3, 'Puesto 5'),
(17, 'Nombre6', 'Apellido6', '1989-12-26', '6123456A', 'Dirección 6', 123456795, 1, 1, '2023-12-26', '2024-01-25', 1, 'Puesto 6'),
(18, 'Nombre7', 'Apellido7', '1989-12-25', '7123456A', 'Dirección 7', 123456796, 2, 2, '2023-12-25', '2024-01-24', 2, 'Puesto 7'),
(19, 'Nombre8', 'Apellido8', '1989-12-24', '8123456A', 'Dirección 8', 123456797, 3, 3, '2023-12-24', '2024-01-23', 3, 'Puesto 8'),
(20, 'Nombre9', 'Apellido9', '1989-12-23', '9123456A', 'Dirección 9', 123456798, 1, 1, '2023-12-23', '2024-01-22', 1, 'Puesto 9'),
(22, 'Nombre11', 'Apellido11', '1989-12-21', '11123456A', 'Dirección 11', 123456800, 3, 3, '2023-12-21', '2024-01-20', 3, 'Puesto 11'),
(23, 'Nombre12', 'Apellido12', '1989-12-20', '12123456A', 'Dirección 12', 123456801, 1, 1, '2023-12-20', '2024-01-19', 1, 'Puesto 12'),
(24, 'Nombre13', 'Apellido13', '1989-12-19', '13123456A', 'Dirección 13', 123456802, 2, 2, '2023-12-19', '2024-01-18', 2, 'Puesto 13'),
(25, 'Nombre14', 'Apellido14', '1989-12-18', '14123456A', 'Dirección 14', 123456803, 3, 3, '2023-12-18', '2024-01-17', 3, 'Puesto 14'),
(26, 'Nombre15', 'Apellido15', '1989-12-17', '15123456A', 'Dirección 15', 123456804, 1, 1, '2023-12-17', '2024-01-16', 1, 'Puesto 15'),
(27, 'Nombre16', 'Apellido16', '1989-12-16', '16123456A', 'Dirección 16', 123456805, 2, 2, '2023-12-16', '2024-01-15', 2, 'Puesto 16'),
(28, 'Nombre17', 'Apellido17', '1989-12-15', '17123456A', 'Dirección 17', 123456806, 3, 3, '2023-12-15', '2024-01-14', 3, 'Puesto 17'),
(29, 'Nombre18', 'Apellido18', '1989-12-14', '18123456A', 'Dirección 18', 123456807, 1, 1, '2023-12-14', '2024-01-13', 1, 'Puesto 18'),
(30, 'Nombre19', 'Apellido19', '1989-12-13', '19123456A', 'Dirección 19', 123456808, 2, 2, '2023-12-13', '2024-01-12', 2, 'Puesto 19'),
(31, 'Nombre20', 'Apellido20', '1989-12-12', '20123456A', 'Dirección 20', 123456809, 3, 3, '2023-12-12', '2024-01-11', 3, 'Puesto 20'),
(33, 'Nombre22', 'Apellido22', '1989-12-10', '22123456A', 'Dirección 22', 123456811, 2, 2, '2023-12-10', '2024-01-09', 2, 'Puesto 22'),
(34, 'Nombre23', 'Apellido23', '1989-12-09', '23123456A', 'Dirección 23', 123456812, 3, 3, '2023-12-09', '2024-01-08', 3, 'Puesto 23'),
(35, 'Nombre24', 'Apellido24', '1989-12-08', '24123456A', 'Dirección 24', 123456813, 1, 1, '2023-12-08', '2024-01-07', 1, 'Puesto 24'),
(36, 'Nombre25', 'Apellido25', '1989-12-07', '25123456A', 'Dirección 25', 123456814, 2, 2, '2023-12-07', '2024-01-06', 2, 'Puesto 25'),
(37, 'Nombre26', 'Apellido26', '1989-12-06', '26123456A', 'Dirección 26', 123456815, 3, 3, '2023-12-06', '2024-01-05', 3, 'Puesto 26'),
(38, 'Nombre27', 'Apellido27', '1989-12-05', '27123456A', 'Dirección 27', 123456816, 1, 1, '2023-12-05', '2024-01-04', 1, 'Puesto 27'),
(39, 'Nombre28', 'Apellido28', '1989-12-04', '28123456A', 'Dirección 28', 123456817, 2, 2, '2023-12-04', '2024-01-03', 2, 'Puesto 28'),
(40, 'Nombre29', 'Apellido29', '1989-12-03', '29123456A', 'Dirección 29', 123456818, 3, 3, '2023-12-03', '2024-01-02', 3, 'Puesto 29'),
(41, 'Nombre30', 'Apellido30', '1989-12-02', '30123456A', 'Dirección 30', 123456819, 1, 1, '2023-12-02', '2024-01-01', 1, 'Puesto 30'),
(42, 'Nombre31', 'Apellido31', '1989-12-01', '31123456A', 'Dirección 31', 123456820, 2, 2, '2023-12-01', '2023-12-31', 2, 'Puesto 31'),
(44, 'Nombre33', 'Apellido33', '1989-11-29', '33123456A', 'Dirección 33', 123456822, 1, 1, '2023-11-29', '2023-12-29', 1, 'Puesto 33'),
(45, 'Nombre34', 'Apellido34', '1989-11-28', '34123456A', 'Dirección 34', 123456823, 2, 2, '2023-11-28', '2023-12-28', 2, 'Puesto 34'),
(46, 'Nombre35', 'Apellido35', '1989-11-27', '35123456A', 'Dirección 35', 123456824, 3, 3, '2023-11-27', '2023-12-27', 3, 'Puesto 35'),
(47, 'Nombre36', 'Apellido36', '1989-11-26', '36123456A', 'Dirección 36', 123456825, 1, 1, '2023-11-26', '2023-12-26', 1, 'Puesto 36'),
(48, 'Nombre37', 'Apellido37', '1989-11-25', '37123456A', 'Dirección 37', 123456826, 2, 2, '2023-11-25', '2023-12-25', 2, 'Puesto 37'),
(49, 'Nombre38', 'Apellido38', '1989-11-24', '38123456A', 'Dirección 38', 123456827, 3, 3, '2023-11-24', '2023-12-24', 3, 'Puesto 38'),
(50, 'Nombre39', 'Apellido39', '1989-11-23', '39123456A', 'Dirección 39', 123456828, 1, 1, '2023-11-23', '2023-12-23', 1, 'Puesto 39'),
(51, 'Nombre40', 'Apellido40', '1989-11-22', '40123456A', 'Dirección 40', 123456829, 2, 2, '2023-11-22', '2023-12-22', 2, 'Puesto 40'),
(52, 'Nombre41', 'Apellido41', '1989-11-21', '41123456A', 'Dirección 41', 123456830, 3, 3, '2023-11-21', '2023-12-21', 3, 'Puesto 41'),
(53, 'Nombre42', 'Apellido42', '1989-11-20', '42123456A', 'Dirección 42', 123456831, 1, 1, '2023-11-20', '2023-12-20', 1, 'Puesto 42'),
(55, 'Nombre44', 'Apellido44', '1989-11-18', '44123456A', 'Dirección 44', 123456833, 3, 3, '2023-11-18', '2023-12-18', 3, 'Puesto 44'),
(56, 'Nombre45', 'Apellido45', '1989-11-17', '45123456A', 'Dirección 45', 123456834, 1, 1, '2023-11-17', '2023-12-17', 1, 'Puesto 45'),
(57, 'Nombre46', 'Apellido46', '1989-11-16', '46123456A', 'Dirección 46', 123456835, 2, 2, '2023-11-16', '2023-12-16', 2, 'Puesto 46'),
(58, 'Nombre47', 'Apellido47', '1989-11-15', '47123456A', 'Dirección 47', 123456836, 3, 3, '2023-11-15', '2023-12-15', 3, 'Puesto 47'),
(59, 'Nombre48', 'Apellido48', '1989-11-14', '48123456A', 'Dirección 48', 123456837, 1, 1, '2023-11-14', '2023-12-14', 1, 'Puesto 48'),
(60, 'Nombre49', 'Apellido49', '1989-11-13', '49123456A', 'Dirección 49', 123456838, 2, 2, '2023-11-13', '2023-12-13', 2, 'Puesto 49'),
(61, 'Nombre50', 'Apellido50', '1989-11-12', '50123456A', 'Dirección 50', 123456839, 3, 3, '2023-11-12', '2023-12-12', 3, 'Puesto 50'),
(62, 'Nombre51', 'Apellido51', '1989-11-11', '51123456A', 'Dirección 51', 123456840, 1, 1, '2023-11-11', '2023-12-11', 1, 'Puesto 51'),
(63, 'Nombre52', 'Apellido52', '1989-11-10', '52123456A', 'Dirección 52', 123456841, 2, 2, '2023-11-10', '2023-12-10', 2, 'Puesto 52'),
(64, 'Nombre53', 'Apellido53', '1989-11-09', '53123456A', 'Dirección 53', 123456842, 3, 3, '2023-11-09', '2023-12-09', 3, 'Puesto 53'),
(66, 'Nombre55', 'Apellido55', '1989-11-07', '55123456A', 'Dirección 55', 123456844, 2, 2, '2023-11-07', '2023-12-07', 2, 'Puesto 55'),
(67, 'Nombre56', 'Apellido56', '1989-11-06', '56123456A', 'Dirección 56', 123456845, 3, 3, '2023-11-06', '2023-12-06', 3, 'Puesto 56'),
(68, 'Nombre57', 'Apellido57', '1989-11-05', '57123456A', 'Dirección 57', 123456846, 1, 1, '2023-11-05', '2023-12-05', 1, 'Puesto 57'),
(69, 'Nombre58', 'Apellido58', '1989-11-04', '58123456A', 'Dirección 58', 123456847, 2, 2, '2023-11-04', '2023-12-04', 2, 'Puesto 58'),
(70, 'Nombre59', 'Apellido59', '1989-11-03', '59123456A', 'Dirección 59', 123456848, 3, 3, '2023-11-03', '2023-12-03', 3, 'Puesto 59'),
(71, 'Nombre60', 'Apellido60', '1989-11-02', '60123456A', 'Dirección 60', 123456849, 1, 1, '2023-11-02', '2023-12-02', 1, 'Puesto 60'),
(72, 'Nombre61', 'Apellido61', '1989-11-01', '61123456A', 'Dirección 61', 123456850, 2, 2, '2023-11-01', '2023-12-01', 2, 'Puesto 61'),
(73, 'Nombre62', 'Apellido62', '1989-10-31', '62123456A', 'Dirección 62', 123456851, 3, 3, '2023-10-31', '2023-11-30', 3, 'Puesto 62'),
(74, 'Nombre63', 'Apellido63', '1989-10-30', '63123456A', 'Dirección 63', 123456852, 1, 1, '2023-10-30', '2023-11-29', 1, 'Puesto 63'),
(75, 'Nombre64', 'Apellido64', '1989-10-29', '64123456A', 'Dirección 64', 123456853, 2, 2, '2023-10-29', '2023-11-28', 2, 'Puesto 64'),
(77, 'Nombre66', 'Apellido66', '1989-10-27', '66123456A', 'Dirección 66', 123456855, 1, 1, '2023-10-27', '2023-11-26', 1, 'Puesto 66'),
(78, 'Nombre67', 'Apellido67', '1989-10-26', '67123456A', 'Dirección 67', 123456856, 2, 2, '2023-10-26', '2023-11-25', 2, 'Puesto 67'),
(79, 'Nombre68', 'Apellido68', '1989-10-25', '68123456A', 'Dirección 68', 123456857, 3, 3, '2023-10-25', '2023-11-24', 3, 'Puesto 68'),
(80, 'Nombre69', 'Apellido69', '1989-10-24', '69123456A', 'Dirección 69', 123456858, 1, 1, '2023-10-24', '2023-11-23', 1, 'Puesto 69'),
(81, 'Nombre70', 'Apellido70', '1989-10-23', '70123456A', 'Dirección 70', 123456859, 2, 2, '2023-10-23', '2023-11-22', 2, 'Puesto 70'),
(82, 'Nombre71', 'Apellido71', '1989-10-22', '71123456A', 'Dirección 71', 123456860, 3, 3, '2023-10-22', '2023-11-21', 3, 'Puesto 71'),
(83, 'Nombre72', 'Apellido72', '1989-10-21', '72123456A', 'Dirección 72', 123456861, 1, 1, '2023-10-21', '2023-11-20', 1, 'Puesto 72'),
(84, 'Nombre73', 'Apellido73', '1989-10-20', '73123456A', 'Dirección 73', 123456862, 2, 2, '2023-10-20', '2023-11-19', 2, 'Puesto 73'),
(85, 'Nombre74', 'Apellido74', '1989-10-19', '74123456A', 'Dirección 74', 123456863, 3, 3, '2023-10-19', '2023-11-18', 3, 'Puesto 74'),
(86, 'Nombre75', 'Apellido75', '1989-10-18', '75123456A', 'Dirección 75', 123456864, 1, 1, '2023-10-18', '2023-11-17', 1, 'Puesto 75'),
(88, 'Nombre77', 'Apellido77', '1989-10-16', '77123456A', 'Dirección 77', 123456866, 3, 3, '2023-10-16', '2023-11-15', 3, 'Puesto 77'),
(89, 'Nombre78', 'Apellido78', '1989-10-15', '78123456A', 'Dirección 78', 123456867, 1, 1, '2023-10-15', '2023-11-14', 1, 'Puesto 78'),
(90, 'Nombre79', 'Apellido79', '1989-10-14', '79123456A', 'Dirección 79', 123456868, 2, 2, '2023-10-14', '2023-11-13', 2, 'Puesto 79'),
(91, 'Nombre80', 'Apellido80', '1989-10-13', '80123456A', 'Dirección 80', 123456869, 3, 3, '2023-10-13', '2023-11-12', 3, 'Puesto 80'),
(92, 'Nombre81', 'Apellido81', '1989-10-12', '81123456A', 'Dirección 81', 123456870, 1, 1, '2023-10-12', '2023-11-11', 1, 'Puesto 81'),
(93, 'Nombre82', 'Apellido82', '1989-10-11', '82123456A', 'Dirección 82', 123456871, 2, 2, '2023-10-11', '2023-11-10', 2, 'Puesto 82'),
(94, 'Nombre83', 'Apellido83', '1989-10-10', '83123456A', 'Dirección 83', 123456872, 3, 3, '2023-10-10', '2023-11-09', 3, 'Puesto 83'),
(95, 'Nombre84', 'Apellido84', '1989-10-09', '84123456A', 'Dirección 84', 123456873, 1, 1, '2023-10-09', '2023-11-08', 1, 'Puesto 84'),
(96, 'Nombre85', 'Apellido85', '1989-10-08', '85123456A', 'Dirección 85', 123456874, 2, 2, '2023-10-08', '2023-11-07', 2, 'Puesto 85'),
(97, 'Nombre86', 'Apellido86', '1989-10-07', '86123456A', 'Dirección 86', 123456875, 3, 3, '2023-10-07', '2023-11-06', 3, 'Puesto 86'),
(99, 'Nombre88', 'Apellido88', '1989-10-05', '88123456A', 'Dirección 88', 123456877, 2, 2, '2023-10-05', '2023-11-04', 2, 'Puesto 88'),
(100, 'Nombre89', 'Apellido89', '1989-10-04', '89123456A', 'Dirección 89', 123456878, 3, 3, '2023-10-04', '2023-11-03', 3, 'Puesto 89'),
(101, 'Nombre90', 'Apellido90', '1989-10-03', '90123456A', 'Dirección 90', 123456879, 1, 1, '2023-10-03', '2023-11-02', 1, 'Puesto 90'),
(102, 'Nombre91', 'Apellido91', '1989-10-02', '91123456A', 'Dirección 91', 123456880, 2, 2, '2023-10-02', '2023-11-01', 2, 'Puesto 91'),
(103, 'Nombre92', 'Apellido92', '1989-10-01', '92123456A', 'Dirección 92', 123456881, 3, 3, '2023-10-01', '2023-10-31', 3, 'Puesto 92'),
(104, 'Nombre93', 'Apellido93', '1989-09-30', '93123456A', 'Dirección 93', 123456882, 1, 1, '2023-09-30', '2023-10-30', 1, 'Puesto 93'),
(105, 'Nombre94', 'Apellido94', '1989-09-29', '94123456A', 'Dirección 94', 123456883, 2, 2, '2023-09-29', '2023-10-29', 2, 'Puesto 94'),
(106, 'Nombre95', 'Apellido95', '1989-09-28', '95123456A', 'Dirección 95', 123456884, 3, 3, '2023-09-28', '2023-10-28', 3, 'Puesto 95'),
(107, 'Nombre96', 'Apellido96', '1989-09-27', '96123456A', 'Dirección 96', 123456885, 1, 1, '2023-09-27', '2023-10-27', 1, 'Puesto 96'),
(108, 'Nombre97', 'Apellido97', '1989-09-26', '97123456A', 'Dirección 97', 123456886, 2, 2, '2023-09-26', '2023-10-26', 2, 'Puesto 97'),
(110, 'Nombre99', 'Apellido99', '1989-09-24', '99123456A', 'Dirección 99', 123456888, 1, 1, '2023-09-24', '2023-10-24', 1, 'Puesto 99'),
(111, 'Nombre100', 'Apellido100', '1989-09-23', '100123456A', 'Dirección 100', 123456889, 2, 2, '2023-09-23', '2023-10-23', 2, 'Puesto 100'),
(112, 'Nombre101', 'Apellido101', '1989-09-22', '101123456A', 'Dirección 101', 123456890, 3, 3, '2023-09-22', '2023-10-22', 3, 'Puesto 101'),
(113, 'Nombre102', 'Apellido102', '1989-09-21', '102123456A', 'Dirección 102', 123456891, 1, 1, '2023-09-21', '2023-10-21', 1, 'Puesto 102'),
(114, 'Nombre103', 'Apellido103', '1989-09-20', '103123456A', 'Dirección 103', 123456892, 2, 2, '2023-09-20', '2023-10-20', 2, 'Puesto 103'),
(115, 'Nombre104', 'Apellido104', '1989-09-19', '104123456A', 'Dirección 104', 123456893, 3, 3, '2023-09-19', '2023-10-19', 3, 'Puesto 104'),
(116, 'Nombre105', 'Apellido105', '1989-09-18', '105123456A', 'Dirección 105', 123456894, 1, 1, '2023-09-18', '2023-10-18', 1, 'Puesto 105'),
(117, 'Nombre106', 'Apellido106', '1989-09-17', '106123456A', 'Dirección 106', 123456895, 2, 2, '2023-09-17', '2023-10-17', 2, 'Puesto 106'),
(118, 'Nombre107', 'Apellido107', '1989-09-16', '107123456A', 'Dirección 107', 123456896, 3, 3, '2023-09-16', '2023-10-16', 3, 'Puesto 107'),
(119, 'Nombre108', 'Apellido108', '1989-09-15', '108123456A', 'Dirección 108', 123456897, 1, 1, '2023-09-15', '2023-10-15', 1, 'Puesto 108');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `cod_equipo` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`cod_equipo`, `Nombre`) VALUES
(1, 'Equipo de Rescate'),
(2, 'Equipo Médico'),
(3, 'Equipo de Salvamento Acuático'),
(4, 'Equipo de Primeros Auxilios'),
(5, 'Equipo de Intervención Rápida'),
(6, 'Equipo de Incendios'),
(7, 'Equipo Canino'),
(8, 'Equipo de Búsqueda y Rescate'),
(9, 'Equipo de Paramédicos'),
(10, 'Equipo de Apoyo Psicológico'),
(11, 'Equipo de Soporte Vital'),
(12, 'Equipo de Control de Multitudes'),
(13, 'Equipo de Comunicaciones'),
(14, 'Equipo de Logística'),
(15, 'Equipo de Gestión de Crisis'),
(16, 'Equipo de Coordinación'),
(17, 'Equipo de Asistencia Técnica'),
(18, 'Equipo de Evaluación de Daños'),
(19, 'Equipo de Reconstrucción'),
(20, 'Equipo de Mantenimiento'),
(21, 'Equipo de Seguridad'),
(22, 'Equipo de Prevención de Riesgos'),
(23, 'Equipo de Capacitación'),
(24, 'Equipo de Investigación'),
(25, 'Equipo de Análisis Forense'),
(26, 'Equipo de Soporte Informático'),
(27, 'Equipo de Redes'),
(28, 'Equipo de Ingeniería'),
(29, 'Equipo de Construcción'),
(30, 'Equipo de Demolición'),
(31, 'Equipo de Excavación'),
(32, 'Equipo de Transporte'),
(33, 'Equipo de Navegación'),
(34, 'Equipo de Seguridad Vial'),
(35, 'Equipo de Señalización'),
(36, 'Equipo de Topografía'),
(37, 'Equipo de Dragado'),
(38, 'Equipo de Limpieza'),
(39, 'Equipo de Desinfección'),
(40, 'Equipo de Descontaminación'),
(41, 'Equipo de Fumigación'),
(42, 'Equipo de Detección de Gases'),
(43, 'Equipo de Pruebas de Calidad de Agua'),
(44, 'Equipo de Tratamiento de Agua'),
(45, 'Equipo de Extracción de Muestras'),
(46, 'Equipo de Laboratorio'),
(47, 'Equipo de Análisis de Suelo'),
(48, 'Equipo de Medición Atmosférica'),
(49, 'Equipo de Control de Inundaciones'),
(50, 'Equipo de Rescate Submarino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parque`
--

CREATE TABLE `parque` (
  `idParque` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `Telefono` int(12) DEFAULT NULL,
  `Categoria` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `parque`
--

INSERT INTO `parque` (`idParque`, `Nombre`, `Direccion`, `Telefono`, `Categoria`) VALUES
(1, 'Parque Central', 'Calle Principal 123', 123456789, 'Parque Urbano'),
(2, 'Parque de Aventuras', 'Calle Secundaria 456', 987654321, 'Parque de Aventuras'),
(3, 'Parque Natural', 'Camino Rural 789', 555666777, 'Parque Natural'),
(4, 'Parque Costero', 'Avenida del Mar 246', 333444555, 'Parque Marino'),
(5, 'Parque Infantil', 'Plaza de los Niños 789', 999888777, 'Parque Infantil'),
(6, 'Parque Nacional', 'Carretera Panorámica 135', 111222333, 'Parque Nacional'),
(7, 'Parque de Atracciones', 'Paseo del Entretenimiento 579', 666555444, 'Parque de Atracciones'),
(8, 'Parque Ecológico', 'Sendero Verde 802', 222333444, 'Parque Ecológico'),
(9, 'Parque Recreativo', 'Ruta del Ocio 624', 777666555, 'Parque Recreativo'),
(10, 'Parque Deportivo', 'Circuito del Deporte 785', 444333222, 'Parque Deportivo'),
(11, 'Parque Temático', 'Avenida de la Imaginación 901', 888999000, 'Parque Temático'),
(12, 'Parque de Mascotas', 'Calle de los Animalitos 357', 555444333, 'Parque de Mascotas'),
(13, 'Parque Histórico', 'Plaza de la Historia 468', 111000999, 'Parque Histórico'),
(14, 'Parque Cultural', 'Avenida del Saber 579', 999888777, 'Parque Cultural'),
(15, 'Parque de Aprendizaje', 'Calle del Conocimiento 246', 666555444, 'Parque de Aprendizaje'),
(16, 'Parque de la Juventud', 'Paseo de la Energía 135', 222333444, 'Parque de la Juventud'),
(17, 'Parque de la Tercera Edad', 'Sendero de la Experiencia 802', 777666555, 'Parque de la Tercera Edad'),
(18, 'Parque de la Diversión', 'Ruta de la Alegría 624', 444333222, 'Parque de la Diversión'),
(19, 'Parque de la Imaginación', 'Circuito de la Fantasía 901', 888999000, 'Parque de la Imaginación'),
(20, 'Parque de la Naturaleza', 'Calle de la Flora y Fauna 357', 555444333, 'Parque de la Naturaleza'),
(21, 'Parque de la Paz', 'Plaza de la Serenidad 468', 111000999, 'Parque de la Paz'),
(22, 'Parque de la Solidaridad', 'Avenida de la Unidad 579', 999888777, 'Parque de la Solidaridad'),
(23, 'Parque de la Salud', 'Calle del Bienestar 246', 666555444, 'Parque de la Salud'),
(24, 'Parque de la Confraternidad', 'Paseo de la Amistad 135', 222333444, 'Parque de la Confraternidad'),
(25, 'Parque de la Esperanza', 'Sendero de la Fe 802', 777666555, 'Parque de la Esperanza'),
(26, 'Parque de la Libertad', 'Ruta de la Justicia 624', 444333222, 'Parque de la Libertad'),
(27, 'Parque de la Creatividad', 'Circuito de la Innovación 901', 888999000, 'Parque de la Creatividad'),
(28, 'Parque de la Prosperidad', 'Calle de la Riqueza 357', 555444333, 'Parque de la Prosperidad'),
(29, 'Parque de la Felicidad', 'Plaza de la Alegría 468', 111000999, 'Parque de la Felicidad'),
(30, 'Parque de la Armonía', 'Avenida de la Concordia 579', 999888777, 'Parque de la Armonía'),
(31, 'Parque de la Belleza', 'Calle de la Elegancia 246', 666555444, 'Parque de la Belleza'),
(32, 'Parque de la Majestuosidad', 'Paseo de la Grandeza 135', 222333444, 'Parque de la Majestuosidad'),
(33, 'Parque de la Eternidad', 'Sendero de la Inmortalidad 802', 777666555, 'Parque de la Eternidad'),
(34, 'Parque de la Virtud', 'Ruta de la Rectitud 624', 444333222, 'Parque de la Virtud'),
(35, 'Parque de la Humildad', 'Circuito de la Sencillez 901', 888999000, 'Parque de la Humildad'),
(36, 'Parque de la Sabiduría', 'Calle de la Inteligencia 357', 555444333, 'Parque de la Sabiduría'),
(37, 'Parque de la Justicia', 'Plaza de la Equidad 468', 111000999, 'Parque de la Justicia'),
(38, 'Parque de la Honestidad', 'Avenida de la Veracidad 579', 999888777, 'Parque de la Honestidad'),
(39, 'Parque de la Generosidad', 'Calle de la Bondad 246', 666555444, 'Parque de la Generosidad'),
(40, 'Parque de la Lealtad', 'Paseo de la Fidelidad 135', 222333444, 'Parque de la Lealtad'),
(41, 'Parque de la Solidaridad', 'Sendero de la Cooperación 802', 777666555, 'Parque de la Solidaridad'),
(42, 'Parque de la Hermandad', 'Ruta del Compañerismo 624', 444333222, 'Parque de la Hermandad'),
(43, 'Parque de la Amabilidad', 'Circuito del Trato Amable 901', 888999000, 'Parque de la Amabilidad'),
(44, 'Parque de la Amistad', 'Calle de la Camaradería 357', 555444333, 'Parque de la Amistad'),
(45, 'Parque de la Compañía', 'Plaza de la Comunidad 468', 111000999, 'Parque de la Compañía'),
(46, 'Parque de la Cooperación', 'Avenida de la Colaboración 579', 999888777, 'Parque de la Cooperación'),
(47, 'Parque de la Comunidad', 'Calle de la Participación 246', 666555444, 'Parque de la Comunidad'),
(48, 'Parque de la Colaboración', 'Paseo del Trabajo en Equipo 135', 222333444, 'Parque de la Colaboración'),
(49, 'Parque de la Participación', 'Sendero del Compromiso 802', 777666555, 'Parque de la Participación'),
(50, 'Parque de la Inclusión', 'Ruta de la Diversidad 624', 444333222, 'Parque de la Inclusión');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parque_has_petición`
--

CREATE TABLE `parque_has_petición` (
  `Parque_idParque` int(11) NOT NULL,
  `Petición_idPetición` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `parque_has_petición`
--

INSERT INTO `parque_has_petición` (`Parque_idParque`, `Petición_idPetición`) VALUES
(2, 6),
(4, 21),
(5, 38),
(5, 39),
(5, 44),
(6, 46),
(9, 40),
(12, 11),
(13, 26),
(15, 10),
(17, 4),
(18, 12),
(18, 29),
(19, 18),
(19, 32),
(20, 1),
(21, 12),
(21, 19),
(22, 1),
(23, 34),
(23, 45),
(25, 9),
(25, 23),
(26, 43),
(28, 24),
(28, 36),
(30, 21),
(30, 47),
(31, 46),
(33, 4),
(33, 20),
(33, 45),
(34, 33),
(36, 1),
(37, 34),
(40, 10),
(40, 21),
(40, 28),
(42, 9),
(42, 12),
(42, 19),
(42, 32),
(43, 1),
(43, 10),
(44, 35),
(45, 15),
(45, 31),
(48, 34),
(49, 33),
(50, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peticiones`
--

CREATE TABLE `peticiones` (
  `idParque` int(11) NOT NULL,
  `idPetición` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `peticiones`
--

INSERT INTO `peticiones` (`idParque`, `idPetición`) VALUES
(2, 13),
(8, 1),
(32, 5),
(30, 33),
(24, 20),
(29, 32),
(26, 31),
(28, 44),
(37, 2),
(47, 30),
(10, 9),
(15, 46),
(37, 44),
(9, 11),
(30, 14),
(30, 10),
(7, 6),
(6, 14),
(50, 10),
(47, 5),
(34, 6),
(27, 17),
(4, 19),
(30, 45),
(32, 28),
(40, 16),
(8, 43),
(41, 23),
(43, 46),
(2, 21),
(48, 27),
(39, 12),
(45, 40),
(11, 36),
(47, 27),
(43, 31),
(29, 1),
(16, 27),
(38, 6),
(18, 21),
(50, 36),
(30, 40),
(9, 26),
(3, 36),
(21, 45),
(14, 35),
(31, 50),
(8, 39),
(19, 27),
(29, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `petición`
--

CREATE TABLE `petición` (
  `idPetición` int(11) NOT NULL,
  `tip_servicio` varchar(45) DEFAULT NULL,
  `urgencia` varchar(45) DEFAULT NULL,
  `fechayhora` datetime DEFAULT NULL,
  `cod_equipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `petición`
--

INSERT INTO `petición` (`idPetición`, `tip_servicio`, `urgencia`, `fechayhora`, `cod_equipo`) VALUES
(1, 'Rescate en Montaña', 'Alta', '2024-01-15 00:00:00', 1),
(2, 'Asistencia Médica', 'Media', '2024-02-20 00:00:00', 2),
(3, 'Salvamento Acuático', 'Alta', '2024-03-10 00:00:00', 3),
(4, 'Incendio en Edificio', 'Alta', '2024-03-05 13:15:00', 6),
(5, 'Accidente de Tráfico', 'Media', '2024-03-10 09:30:00', 5),
(6, 'Desmayo en la Vía Pública', 'Alta', '2024-03-15 17:45:00', 2),
(7, 'Inundación en Zona Residencial', 'Alta', '2024-03-20 08:00:00', 8),
(8, 'Rescate en Montaña', 'Alta', '2024-03-25 11:00:00', 1),
(9, 'Incendio Forestal', 'Alta', '2024-03-30 14:30:00', 6),
(10, 'Asistencia Médica', 'Media', '2024-04-05 10:45:00', 2),
(11, 'Salvamento Acuático', 'Alta', '2024-04-10 15:00:00', 3),
(12, 'Incendio en Vehículo', 'Alta', '2024-04-15 16:20:00', 6),
(13, 'Accidente Doméstico', 'Media', '2024-04-20 12:10:00', 5),
(14, 'Rescate de Animal', 'Media', '2024-04-25 18:30:00', 7),
(15, 'Emergencia Médica en Evento Masivo', 'Alta', '2024-04-30 09:00:00', 2),
(16, 'Inundación en Vía Pública', 'Alta', '2024-05-05 14:45:00', 8),
(17, 'Incendio en Local Comercial', 'Alta', '2024-05-10 17:20:00', 6),
(18, 'Rescate en Zona Industrial', 'Alta', '2024-05-15 10:30:00', 1),
(19, 'Accidente de Montaña', 'Alta', '2024-05-20 11:15:00', 5),
(20, 'Emergencia Médica en Hogar de Ancianos', 'Alta', '2024-05-25 16:00:00', 2),
(21, 'Asistencia en Accidente Deportivo', 'Media', '2024-06-05 08:45:00', 5),
(22, 'Incendio en Fábrica', 'Alta', '2024-06-10 13:30:00', 6),
(23, 'Inundación en Área Rural', 'Alta', '2024-06-15 10:20:00', 8),
(24, 'Rescate en Río', 'Alta', '2024-06-20 15:40:00', 3),
(25, 'Accidente de Trabajo', 'Media', '2024-06-25 11:00:00', 5),
(26, 'Emergencia Médica en Escuela', 'Alta', '2024-06-30 12:15:00', 2),
(27, 'Incendio en Apartamento', 'Alta', '2024-07-05 17:30:00', 6),
(28, 'Inundación en Estación de Bombeo', 'Alta', '2024-07-10 09:45:00', 8),
(29, 'Rescate en Río', 'Alta', '2024-07-15 14:20:00', 3),
(30, 'Accidente de Tráfico', 'Media', '2024-07-20 10:00:00', 5),
(31, 'Emergencia Médica en Centro Comercial', 'Alta', '2024-07-25 16:10:00', 2),
(32, 'Incendio en Almacén', 'Alta', '2024-08-05 14:30:00', 6),
(33, 'Inundación en Barrio Residencial', 'Alta', '2024-08-10 11:25:00', 8),
(34, 'Rescate en Montaña', 'Alta', '2024-08-15 15:50:00', 1),
(35, 'Accidente Doméstico', 'Media', '2024-08-20 10:15:00', 5),
(36, 'Emergencia Médica en Plaza Pública', 'Alta', '2024-08-25 17:00:00', 2),
(37, 'Incendio en Vivienda', 'Alta', '2024-09-05 13:20:00', 6),
(38, 'Inundación en Área Urbana', 'Alta', '2024-09-10 09:35:00', 8),
(39, 'Rescate de Mascota', 'Media', '2024-09-15 14:40:00', 7),
(40, 'Accidente en Competencia Deportiva', 'Media', '2024-09-20 12:05:00', 5),
(41, 'Emergencia Médica en Centro Educativo', 'Alta', '2024-09-25 16:30:00', 2),
(42, 'Incendio en Edificio de Oficinas', 'Alta', '2024-10-05 15:00:00', 6),
(43, 'Inundación en Zona Industrial', 'Alta', '2024-10-10 10:40:00', 8),
(44, 'Rescate en Zona Rural', 'Alta', '2024-10-15 14:55:00', 1),
(45, 'Accidente de Tráfico', 'Media', '2024-10-20 09:50:00', 5),
(46, 'Emergencia Médica en Teatro', 'Alta', '2024-10-25 17:15:00', 2),
(47, 'Incendio en Hotel', 'Alta', '2024-11-05 13:10:00', 6),
(48, 'Inundación en Centro Comercial', 'Alta', '2024-11-10 09:20:00', 8),
(49, 'Rescate en Río', 'Alta', '2024-11-15 15:35:00', 3),
(50, 'Accidente en Parque de Atracciones', 'Media', '2024-11-20 10:25:00', 5),
(51, 'Servicio 2', 'Media', '2024-02-20 09:58:19', 10),
(52, 'Servicio 8', 'Media', '2024-02-03 09:58:19', 8),
(53, 'Servicio 5', 'Media', '2024-02-25 09:58:19', 3),
(54, 'Servicio 5', 'Baja', '2024-03-24 09:58:19', 1),
(55, 'Servicio 4', 'Alta', '2024-04-01 09:58:19', 3),
(56, 'Servicio 5', 'Media', '2024-03-22 09:58:19', 8),
(57, 'Servicio 5', 'Media', '2024-03-19 09:58:19', 4),
(58, 'Servicio 8', 'Baja', '2024-01-28 09:58:19', 1),
(59, 'Servicio 4', 'Baja', '2024-04-16 09:58:19', 4),
(60, 'Servicio 8', 'Alta', '2024-01-24 09:58:19', 2),
(61, 'Servicio 8', 'Alta', '2024-03-04 09:58:19', 5),
(62, 'Servicio 10', 'Media', '2024-01-27 09:58:19', 1),
(63, 'Servicio 8', 'Baja', '2024-01-11 09:58:19', 4),
(64, 'Servicio 2', 'Baja', '2024-04-04 09:58:19', 7),
(65, 'Servicio 6', 'Alta', '2024-04-01 09:58:19', 5),
(66, 'Servicio 4', 'Media', '2024-04-08 09:58:19', 4),
(67, 'Servicio 1', 'Alta', '2024-03-26 09:58:19', 6),
(68, 'Servicio 8', 'Media', '2024-03-04 09:58:19', 1),
(69, 'Servicio 10', 'Media', '2024-04-15 09:58:19', 9),
(70, 'Servicio 2', 'Alta', '2024-03-17 09:58:19', 1),
(71, 'Servicio 3', 'Media', '2024-01-20 09:58:19', 8),
(72, 'Servicio 10', 'Media', '2024-04-01 09:58:19', 6),
(73, 'Servicio 1', 'Alta', '2024-03-25 09:58:19', 4),
(74, 'Servicio 7', 'Media', '2024-02-06 09:58:19', 1),
(75, 'Servicio 2', 'Alta', '2024-01-14 09:58:19', 2),
(76, 'Servicio 10', 'Alta', '2024-03-20 09:58:19', 8),
(77, 'Servicio 5', 'Alta', '2024-01-17 09:58:19', 5),
(78, 'Servicio 7', 'Media', '2024-03-24 09:58:19', 2),
(79, 'Servicio 6', 'Alta', '2024-01-27 09:58:19', 1),
(80, 'Servicio 7', 'Media', '2024-03-04 09:58:19', 4),
(81, 'Servicio 10', 'Baja', '2024-04-11 09:58:19', 3),
(82, 'Servicio 4', 'Alta', '2024-03-26 09:58:19', 6),
(83, 'Servicio 1', 'Media', '2024-02-25 09:58:19', 8),
(84, 'Servicio 1', 'Alta', '2024-03-28 09:58:19', 8),
(85, 'Servicio 5', 'Media', '2024-01-09 09:58:19', 6),
(86, 'Servicio 7', 'Media', '2024-04-17 09:58:19', 3),
(87, 'Servicio 1', 'Baja', '2024-03-09 09:58:19', 7),
(88, 'Servicio 10', 'Baja', '2024-01-28 09:58:19', 3),
(89, 'Servicio 1', 'Baja', '2024-01-19 09:58:19', 4),
(90, 'Servicio 8', 'Alta', '2024-03-06 09:58:19', 7),
(91, 'Servicio 10', 'Baja', '2024-03-19 09:58:19', 6),
(92, 'Servicio 6', 'Baja', '2024-03-28 09:58:19', 8),
(93, 'Servicio 10', 'Alta', '2024-01-11 09:58:19', 8),
(94, 'Servicio 2', 'Baja', '2024-01-28 09:58:19', 6),
(95, 'Servicio 6', 'Baja', '2024-03-28 09:58:19', 9),
(96, 'Servicio 7', 'Baja', '2024-04-11 09:58:19', 2),
(97, 'Servicio 1', 'Baja', '2024-03-01 09:58:19', 7),
(98, 'Servicio 1', 'Media', '2024-02-26 09:58:19', 4),
(99, 'Servicio 1', 'Baja', '2024-03-05 09:58:19', 9),
(100, 'Servicio 8', 'Baja', '2024-02-15 09:58:19', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turnos`
--

CREATE TABLE `turnos` (
  `idTurno` int(11) NOT NULL,
  `Descripcion` varchar(45) DEFAULT 'Mañana||Tarde||Noche'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `turnos`
--

INSERT INTO `turnos` (`idTurno`, `Descripcion`) VALUES
(1, 'Mañana'),
(2, 'Tarde'),
(3, 'Noche');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bombero`
--
ALTER TABLE `bombero`
  ADD PRIMARY KEY (`idBombero`),
  ADD KEY `turnos` (`idTurno`),
  ADD KEY `fk_Bombero_Parque1` (`idParque`),
  ADD KEY `fk_Bombero_Equipos1` (`cod_equipo`);

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`cod_equipo`);

--
-- Indices de la tabla `parque`
--
ALTER TABLE `parque`
  ADD PRIMARY KEY (`idParque`);

--
-- Indices de la tabla `parque_has_petición`
--
ALTER TABLE `parque_has_petición`
  ADD PRIMARY KEY (`Parque_idParque`,`Petición_idPetición`),
  ADD KEY `fk_Parque_has_Petición_Petición1` (`Petición_idPetición`);

--
-- Indices de la tabla `peticiones`
--
ALTER TABLE `peticiones`
  ADD KEY `fk_Parque_has_Petición1_Parque1` (`idParque`),
  ADD KEY `fk_Parque_has_Petición1_Petición1` (`idPetición`);

--
-- Indices de la tabla `petición`
--
ALTER TABLE `petición`
  ADD PRIMARY KEY (`idPetición`),
  ADD KEY `fk_Petición_Equipos1` (`cod_equipo`);

--
-- Indices de la tabla `turnos`
--
ALTER TABLE `turnos`
  ADD PRIMARY KEY (`idTurno`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `bombero`
--
ALTER TABLE `bombero`
  ADD CONSTRAINT `fk_Bombero_Equipos1` FOREIGN KEY (`cod_equipo`) REFERENCES `equipos` (`cod_equipo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Bombero_Parque1` FOREIGN KEY (`idParque`) REFERENCES `parque` (`idParque`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `turnos` FOREIGN KEY (`idTurno`) REFERENCES `turnos` (`idTurno`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `parque_has_petición`
--
ALTER TABLE `parque_has_petición`
  ADD CONSTRAINT `fk_Parque_has_Petición_Parque1` FOREIGN KEY (`Parque_idParque`) REFERENCES `parque` (`idParque`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Parque_has_Petición_Petición1` FOREIGN KEY (`Petición_idPetición`) REFERENCES `petición` (`idPetición`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `peticiones`
--
ALTER TABLE `peticiones`
  ADD CONSTRAINT `fk_Parque_has_Petición1_Parque1` FOREIGN KEY (`idParque`) REFERENCES `parque` (`idParque`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Parque_has_Petición1_Petición1` FOREIGN KEY (`idPetición`) REFERENCES `petición` (`idPetición`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `petición`
--
ALTER TABLE `petición`
  ADD CONSTRAINT `fk_Petición_Equipos1` FOREIGN KEY (`cod_equipo`) REFERENCES `equipos` (`cod_equipo`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
