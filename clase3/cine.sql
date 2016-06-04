-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-10-2015 a las 15:53:14
-- Versión del servidor: 5.6.16
-- Versión de PHP: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `cine`
--
CREATE DATABASE IF NOT EXISTS `cine` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `cine`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actor`
--

CREATE TABLE IF NOT EXISTS `actor` (
  `id_actor` int(11) NOT NULL AUTO_INCREMENT,
  `id_artista` int(11) NOT NULL,
  `ac_nombreArtistico` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_actor`),
  KEY `id_artista` (`id_artista`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artista`
--

CREATE TABLE IF NOT EXISTS `artista` (
  `id_artista` int(11) NOT NULL AUTO_INCREMENT,
  `ar_nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ar_apellido` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ar_dni` int(11) NOT NULL,
  `ar_mail` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_artista`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `director`
--

CREATE TABLE IF NOT EXISTS `director` (
  `id_director` int(11) NOT NULL AUTO_INCREMENT,
  `id_artista` int(11) NOT NULL,
  `di_nombreArtistico` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_director`),
  KEY `id_artista` (`id_artista`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE IF NOT EXISTS `genero` (
  `id_genero` int(11) NOT NULL AUTO_INCREMENT,
  `ge_nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_genero`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula`
--

CREATE TABLE IF NOT EXISTS `pelicula` (
  `id_pelicula` int(11) NOT NULL AUTO_INCREMENT,
  `id_genero` int(11) NOT NULL,
  `id_director` int(11) NOT NULL,
  `pe_nombre` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `pe_duracion` int(11) NOT NULL,
  `pe_fechaEstreno` date DEFAULT NULL,
  PRIMARY KEY (`id_pelicula`),
  KEY `id_genero` (`id_genero`),
  KEY `id_director` (`id_director`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula_actor`
--

CREATE TABLE IF NOT EXISTS `pelicula_actor` (
  `id_pelicula` int(11) NOT NULL,
  `id_actor` int(11) NOT NULL,
  PRIMARY KEY (`id_pelicula`,`id_actor`),
  KEY `id_actor` (`id_actor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula_sala`
--

CREATE TABLE IF NOT EXISTS `pelicula_sala` (
  `id_pelicula` int(11) NOT NULL,
  `id_sala` int(11) NOT NULL,
  PRIMARY KEY (`id_pelicula`,`id_sala`),
  KEY `id_sala` (`id_sala`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sala`
--

CREATE TABLE IF NOT EXISTS `sala` (
  `id_sala` int(11) NOT NULL AUTO_INCREMENT,
  `sa_nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sa_horaExhibicion` time DEFAULT NULL,
  PRIMARY KEY (`id_sala`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actor`
--
ALTER TABLE `actor`
  ADD CONSTRAINT `actor_ibfk_1` FOREIGN KEY (`id_artista`) REFERENCES `artista` (`id_artista`);

--
-- Filtros para la tabla `director`
--
ALTER TABLE `director`
  ADD CONSTRAINT `director_ibfk_3` FOREIGN KEY (`id_artista`) REFERENCES `artista` (`id_artista`);

--
-- Filtros para la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD CONSTRAINT `pelicula_ibfk_1` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id_genero`),
  ADD CONSTRAINT `pelicula_ibfk_2` FOREIGN KEY (`id_director`) REFERENCES `director` (`id_director`);

--
-- Filtros para la tabla `pelicula_actor`
--
ALTER TABLE `pelicula_actor`
  ADD CONSTRAINT `pelicula_actor_ibfk_1` FOREIGN KEY (`id_pelicula`) REFERENCES `pelicula` (`id_pelicula`),
  ADD CONSTRAINT `pelicula_actor_ibfk_2` FOREIGN KEY (`id_actor`) REFERENCES `actor` (`id_actor`);

--
-- Filtros para la tabla `pelicula_sala`
--
ALTER TABLE `pelicula_sala`
  ADD CONSTRAINT `pelicula_sala_ibfk_1` FOREIGN KEY (`id_pelicula`) REFERENCES `pelicula` (`id_pelicula`),
  ADD CONSTRAINT `pelicula_sala_ibfk_2` FOREIGN KEY (`id_sala`) REFERENCES `sala` (`id_sala`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
