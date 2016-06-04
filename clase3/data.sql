-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-10-2015 a las 15:55:59
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

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id_genero`, `ge_nombre`) VALUES(1, 'Comedia');
INSERT INTO `genero` (`id_genero`, `ge_nombre`) VALUES(2, 'Drama');
INSERT INTO `genero` (`id_genero`, `ge_nombre`) VALUES(3, 'Acción');
INSERT INTO `genero` (`id_genero`, `ge_nombre`) VALUES(4, 'Thriller');
INSERT INTO `genero` (`id_genero`, `ge_nombre`) VALUES(5, 'Terror');
INSERT INTO `genero` (`id_genero`, `ge_nombre`) VALUES(6, 'Aventura');

--
-- Volcado de datos para la tabla `artista`
--

INSERT INTO `artista` (`id_artista`, `ar_nombre`, `ar_apellido`, `ar_dni`, `ar_mail`) VALUES(1, 'Artista 1', 'Apellido 1', 1, 'artista1@mail.com');
INSERT INTO `artista` (`id_artista`, `ar_nombre`, `ar_apellido`, `ar_dni`, `ar_mail`) VALUES(2, 'Artista 2', 'Apellido 2', 2, 'artista2@mail.com');
INSERT INTO `artista` (`id_artista`, `ar_nombre`, `ar_apellido`, `ar_dni`, `ar_mail`) VALUES(3, 'Artista 3', 'Apellido 3', 3, 'artista3@mail.com');
INSERT INTO `artista` (`id_artista`, `ar_nombre`, `ar_apellido`, `ar_dni`, `ar_mail`) VALUES(4, 'Artista 4', 'Apellido 4', 4, 'artista4@mail.com');
INSERT INTO `artista` (`id_artista`, `ar_nombre`, `ar_apellido`, `ar_dni`, `ar_mail`) VALUES(5, 'Artista 5', 'Apellido 5', 5, 'artista5@mail.com');
INSERT INTO `artista` (`id_artista`, `ar_nombre`, `ar_apellido`, `ar_dni`, `ar_mail`) VALUES(6, 'Artista 6', 'Apellido 6', 6, 'artista6@mail.com');
INSERT INTO `artista` (`id_artista`, `ar_nombre`, `ar_apellido`, `ar_dni`, `ar_mail`) VALUES(7, 'Artista 7', 'Apellido 7', 7, 'artista7@mail.com');
INSERT INTO `artista` (`id_artista`, `ar_nombre`, `ar_apellido`, `ar_dni`, `ar_mail`) VALUES(8, 'Artista 8', 'Apellido 8', 8, 'artista8@mail.com');
INSERT INTO `artista` (`id_artista`, `ar_nombre`, `ar_apellido`, `ar_dni`, `ar_mail`) VALUES(9, 'Artista 9', 'Apellido 9', 9, 'artista9@mail.com');
INSERT INTO `artista` (`id_artista`, `ar_nombre`, `ar_apellido`, `ar_dni`, `ar_mail`) VALUES(10, 'Artista 10', 'Apellido 10', 10, 'artista10@mail.com');

--
-- Volcado de datos para la tabla `director`
--

INSERT INTO `director` (`id_director`, `id_artista`, `di_nombreArtistico`) VALUES(1, 1, 'Director 1');
INSERT INTO `director` (`id_director`, `id_artista`, `di_nombreArtistico`) VALUES(2, 2, 'Director 2');
INSERT INTO `director` (`id_director`, `id_artista`, `di_nombreArtistico`) VALUES(3, 3, 'Director 3');
INSERT INTO `director` (`id_director`, `id_artista`, `di_nombreArtistico`) VALUES(4, 4, 'Director 4');
INSERT INTO `director` (`id_director`, `id_artista`, `di_nombreArtistico`) VALUES(5, 5, 'Director 5');

--
-- Volcado de datos para la tabla `actor`
--

INSERT INTO `actor` (`id_actor`, `id_artista`, `ac_nombreArtistico`) VALUES(1, 1, 'Actor 1');
INSERT INTO `actor` (`id_actor`, `id_artista`, `ac_nombreArtistico`) VALUES(2, 2, 'Actor 2');
INSERT INTO `actor` (`id_actor`, `id_artista`, `ac_nombreArtistico`) VALUES(3, 3, 'Actor 3');
INSERT INTO `actor` (`id_actor`, `id_artista`, `ac_nombreArtistico`) VALUES(4, 4, 'Actor 4');
INSERT INTO `actor` (`id_actor`, `id_artista`, `ac_nombreArtistico`) VALUES(5, 5, 'Actor 5');
INSERT INTO `actor` (`id_actor`, `id_artista`, `ac_nombreArtistico`) VALUES(6, 6, 'Actor 6');
INSERT INTO `actor` (`id_actor`, `id_artista`, `ac_nombreArtistico`) VALUES(7, 7, 'Actor 7');
INSERT INTO `actor` (`id_actor`, `id_artista`, `ac_nombreArtistico`) VALUES(8, 8, 'Actor 8');
INSERT INTO `actor` (`id_actor`, `id_artista`, `ac_nombreArtistico`) VALUES(9, 9, 'Actor 9');
INSERT INTO `actor` (`id_actor`, `id_artista`, `ac_nombreArtistico`) VALUES(10, 10, 'Actor 10');

--
-- Volcado de datos para la tabla `pelicula`
--

INSERT INTO `pelicula` (`id_pelicula`, `id_genero`, `id_director`, `pe_nombre`, `pe_duracion`, `pe_fechaEstreno`) VALUES(1, 1, 1, 'Pelicula 1', 60, NULL);
INSERT INTO `pelicula` (`id_pelicula`, `id_genero`, `id_director`, `pe_nombre`, `pe_duracion`, `pe_fechaEstreno`) VALUES(2, 2, 2, 'Pelicula 2', 65, NULL);
INSERT INTO `pelicula` (`id_pelicula`, `id_genero`, `id_director`, `pe_nombre`, `pe_duracion`, `pe_fechaEstreno`) VALUES(3, 3, 3, 'Pelicula 3', 70, NULL);
INSERT INTO `pelicula` (`id_pelicula`, `id_genero`, `id_director`, `pe_nombre`, `pe_duracion`, `pe_fechaEstreno`) VALUES(4, 4, 4, 'Pelicula 4', 75, NULL);
INSERT INTO `pelicula` (`id_pelicula`, `id_genero`, `id_director`, `pe_nombre`, `pe_duracion`, `pe_fechaEstreno`) VALUES(5, 5, 5, 'Pelicula 5', 60, NULL);
INSERT INTO `pelicula` (`id_pelicula`, `id_genero`, `id_director`, `pe_nombre`, `pe_duracion`, `pe_fechaEstreno`) VALUES(6, 6, 1, 'Pelicula 6', 65, NULL);
INSERT INTO `pelicula` (`id_pelicula`, `id_genero`, `id_director`, `pe_nombre`, `pe_duracion`, `pe_fechaEstreno`) VALUES(7, 1, 2, 'Pelicula 7', 70, NULL);
INSERT INTO `pelicula` (`id_pelicula`, `id_genero`, `id_director`, `pe_nombre`, `pe_duracion`, `pe_fechaEstreno`) VALUES(8, 2, 3, 'Pelicula 8', 75, NULL);
INSERT INTO `pelicula` (`id_pelicula`, `id_genero`, `id_director`, `pe_nombre`, `pe_duracion`, `pe_fechaEstreno`) VALUES(9, 3, 4, 'Pelicula 9', 60, NULL);
INSERT INTO `pelicula` (`id_pelicula`, `id_genero`, `id_director`, `pe_nombre`, `pe_duracion`, `pe_fechaEstreno`) VALUES(10, 4, 5, 'Pelicula 10', 65, NULL);
INSERT INTO `pelicula` (`id_pelicula`, `id_genero`, `id_director`, `pe_nombre`, `pe_duracion`, `pe_fechaEstreno`) VALUES(11, 5, 1, 'Pelicula 11', 70, NULL);
INSERT INTO `pelicula` (`id_pelicula`, `id_genero`, `id_director`, `pe_nombre`, `pe_duracion`, `pe_fechaEstreno`) VALUES(12, 6, 2, 'Pelicula 12', 75, NULL);
INSERT INTO `pelicula` (`id_pelicula`, `id_genero`, `id_director`, `pe_nombre`, `pe_duracion`, `pe_fechaEstreno`) VALUES(13, 1, 3, 'Pelicula 13', 60, NULL);
INSERT INTO `pelicula` (`id_pelicula`, `id_genero`, `id_director`, `pe_nombre`, `pe_duracion`, `pe_fechaEstreno`) VALUES(14, 2, 4, 'Pelicula 14', 65, NULL);
INSERT INTO `pelicula` (`id_pelicula`, `id_genero`, `id_director`, `pe_nombre`, `pe_duracion`, `pe_fechaEstreno`) VALUES(15, 3, 5, 'Pelicula 15', 70, NULL);
INSERT INTO `pelicula` (`id_pelicula`, `id_genero`, `id_director`, `pe_nombre`, `pe_duracion`, `pe_fechaEstreno`) VALUES(16, 4, 1, 'Pelicula 16', 75, NULL);
INSERT INTO `pelicula` (`id_pelicula`, `id_genero`, `id_director`, `pe_nombre`, `pe_duracion`, `pe_fechaEstreno`) VALUES(17, 5, 2, 'Pelicula 17', 60, NULL);

--
-- Volcado de datos para la tabla `pelicula_actor`
--

INSERT INTO `pelicula_actor` (`id_pelicula`, `id_actor`) VALUES(1, 1);
INSERT INTO `pelicula_actor` (`id_pelicula`, `id_actor`) VALUES(5, 1);
INSERT INTO `pelicula_actor` (`id_pelicula`, `id_actor`) VALUES(10, 1);
INSERT INTO `pelicula_actor` (`id_pelicula`, `id_actor`) VALUES(15, 1);
INSERT INTO `pelicula_actor` (`id_pelicula`, `id_actor`) VALUES(1, 2);
INSERT INTO `pelicula_actor` (`id_pelicula`, `id_actor`) VALUES(6, 2);
INSERT INTO `pelicula_actor` (`id_pelicula`, `id_actor`) VALUES(11, 2);
INSERT INTO `pelicula_actor` (`id_pelicula`, `id_actor`) VALUES(16, 2);
INSERT INTO `pelicula_actor` (`id_pelicula`, `id_actor`) VALUES(2, 3);
INSERT INTO `pelicula_actor` (`id_pelicula`, `id_actor`) VALUES(6, 3);
INSERT INTO `pelicula_actor` (`id_pelicula`, `id_actor`) VALUES(11, 3);
INSERT INTO `pelicula_actor` (`id_pelicula`, `id_actor`) VALUES(17, 3);
INSERT INTO `pelicula_actor` (`id_pelicula`, `id_actor`) VALUES(2, 4);
INSERT INTO `pelicula_actor` (`id_pelicula`, `id_actor`) VALUES(7, 4);
INSERT INTO `pelicula_actor` (`id_pelicula`, `id_actor`) VALUES(12, 4);
INSERT INTO `pelicula_actor` (`id_pelicula`, `id_actor`) VALUES(17, 4);
INSERT INTO `pelicula_actor` (`id_pelicula`, `id_actor`) VALUES(2, 5);
INSERT INTO `pelicula_actor` (`id_pelicula`, `id_actor`) VALUES(8, 5);
INSERT INTO `pelicula_actor` (`id_pelicula`, `id_actor`) VALUES(13, 5);
INSERT INTO `pelicula_actor` (`id_pelicula`, `id_actor`) VALUES(3, 6);
INSERT INTO `pelicula_actor` (`id_pelicula`, `id_actor`) VALUES(8, 6);
INSERT INTO `pelicula_actor` (`id_pelicula`, `id_actor`) VALUES(13, 6);
INSERT INTO `pelicula_actor` (`id_pelicula`, `id_actor`) VALUES(4, 7);
INSERT INTO `pelicula_actor` (`id_pelicula`, `id_actor`) VALUES(9, 7);
INSERT INTO `pelicula_actor` (`id_pelicula`, `id_actor`) VALUES(13, 7);
INSERT INTO `pelicula_actor` (`id_pelicula`, `id_actor`) VALUES(4, 8);
INSERT INTO `pelicula_actor` (`id_pelicula`, `id_actor`) VALUES(9, 8);
INSERT INTO `pelicula_actor` (`id_pelicula`, `id_actor`) VALUES(13, 8);
INSERT INTO `pelicula_actor` (`id_pelicula`, `id_actor`) VALUES(5, 9);
INSERT INTO `pelicula_actor` (`id_pelicula`, `id_actor`) VALUES(9, 9);
INSERT INTO `pelicula_actor` (`id_pelicula`, `id_actor`) VALUES(14, 9);
INSERT INTO `pelicula_actor` (`id_pelicula`, `id_actor`) VALUES(5, 10);
INSERT INTO `pelicula_actor` (`id_pelicula`, `id_actor`) VALUES(9, 10);
INSERT INTO `pelicula_actor` (`id_pelicula`, `id_actor`) VALUES(14, 10);

--
-- Volcado de datos para la tabla `sala`
--

INSERT INTO `sala` (`id_sala`, `sa_nombre`, `sa_horaExhibicion`) VALUES(1, 'Sala 1', NULL);
INSERT INTO `sala` (`id_sala`, `sa_nombre`, `sa_horaExhibicion`) VALUES(2, 'Sala 2', NULL);
INSERT INTO `sala` (`id_sala`, `sa_nombre`, `sa_horaExhibicion`) VALUES(3, 'Sala 3', NULL);
INSERT INTO `sala` (`id_sala`, `sa_nombre`, `sa_horaExhibicion`) VALUES(4, 'Sala 4', NULL);
INSERT INTO `sala` (`id_sala`, `sa_nombre`, `sa_horaExhibicion`) VALUES(5, 'Sala 5', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
