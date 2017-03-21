-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 21-03-2017 a las 01:02:08
-- Versión del servidor: 5.5.16
-- Versión de PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `asclepios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas`
--

CREATE TABLE IF NOT EXISTS `citas` (
  `id_cita` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_especialidad` int(10) unsigned NOT NULL,
  `id_paciente` int(10) unsigned NOT NULL,
  `Fecha` date NOT NULL,
  `Hora` time NOT NULL,
  `Medico` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `Motivo` text COLLATE utf8mb4_spanish2_ci NOT NULL,
  `diagnostico` text COLLATE utf8mb4_spanish2_ci,
  `prescripcion` text COLLATE utf8mb4_spanish2_ci,
  `creado_en` datetime NOT NULL,
  `modificado_en` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_cita`),
  KEY `id_especialidad` (`id_especialidad`,`id_paciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidades`
--

CREATE TABLE IF NOT EXISTS `especialidades` (
  `id_especialidad` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `especialidad` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_especialidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE IF NOT EXISTS `pacientes` (
  `id_paciente` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_seguro` int(10) unsigned NOT NULL,
  `seguro_numero` varchar(128) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `seguro_regimen` varchar(128) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `cedula` varchar(128) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `telefono` varchar(24) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `movil` varchar(24) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `whatsapp` tinyint(1) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `id_provincia` int(11) NOT NULL,
  `id_municipio` int(11) NOT NULL,
  `creado_en` datetime NOT NULL,
  `modificado_en` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_paciente`),
  KEY `id_seguro` (`id_seguro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguros`
--

CREATE TABLE IF NOT EXISTS `seguros` (
  `id_seguro` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ARS` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_seguro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_usuario` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `usuario` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `pass` varchar(255) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `rol` tinyint(4) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `creado_en` datetime NOT NULL,
  `modificado_en` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
