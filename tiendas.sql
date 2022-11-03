-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-11-2022 a las 21:50:20
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tiendas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` bigint(20) NOT NULL,
  `descripcion_categoria` varchar(255) NOT NULL,
  `imagen_categoria` varchar(255) NOT NULL,
  `nombre_categoria` varchar(255) NOT NULL,
  `id_lugar` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `descripcion_categoria`, `imagen_categoria`, `nombre_categoria`, `id_lugar`) VALUES
(1, '{Insertar Descripción de la Categoria}', '{Insertar Imagen}', 'Hoteles', 1),
(2, '{Insertar Descripción de la Categoria}', '{Insertar Imagen}', 'Hoteles', 2),
(3, '{Insertar Descripción de la Categoria}', '{Insertar Imagen}', 'Hoteles', 3),
(4, '{Insertar Descripción de la Categoria}', '{Insertar Imagen}', 'Hoteles', 4),
(5, '{Insertar Descripción de la Categoria}', '{Insertar Imagen}', 'Hoteles', 5),
(6, '{Insertar Descripción de la Categoria}', '{Insertar Imagen}', 'Hoteles', 6),
(7, '{Insertar Descripción de la Categoria}', '{Insertar Imagen}', 'Hoteles', 7),
(8, '{Insertar Descripción de la Categoria}', '{Insertar Imagen}', 'Hoteles', 8),
(9, '{Insertar Descripción de la Categoria}', '{Insertar Imagen}', 'Centros Comerciales', 1),
(10, '{Insertar Descripción de la Categoria}', '{Insertar Imagen}', 'Centros Comerciales', 2),
(11, '{Insertar Descripción de la Categoria}', '{Insertar Imagen}', 'Centros Comerciales', 3),
(12, '{Insertar Descripción de la Categoria}', '{Insertar Imagen}', 'Centros Comerciales', 4),
(13, '{Insertar Descripción de la Categoria}', '{Insertar Imagen}', 'Centros Comerciales', 5),
(14, '{Insertar Descripción de la Categoria}', '{Insertar Imagen}', 'Centros Comerciales', 6),
(15, '{Insertar Descripción de la Categoria}', '{Insertar Imagen}', 'Centros Comerciales', 7),
(16, '{Insertar Descripción de la Categoria}', '{Insertar Imagen}', 'Centros Comerciales', 8),
(17, '{Insertar Descripción de la Categoria}', '{Insertar Imagen}', 'Bares', 1),
(18, '{Insertar Descripción de la Categoria}', '{Insertar Imagen}', 'Bares', 2),
(19, '{Insertar Descripción de la Categoria}', '{Insertar Imagen}', 'Bares', 3),
(20, '{Insertar Descripción de la Categoria}', '{Insertar Imagen}', 'Bares', 4),
(21, '{Insertar Descripción de la Categoria}', '{Insertar Imagen}', 'Bares', 5),
(22, '{Insertar Descripción de la Categoria}', '{Insertar Imagen}', 'Bares', 6),
(23, '{Insertar Descripción de la Categoria}', '{Insertar Imagen}', 'Bares', 7),
(24, '{Insertar Descripción de la Categoria}', '{Insertar Imagen}', 'Bares', 8),
(25, '{Insertar Descripción de la Categoria}', '{Insertar Imagen}', 'Restaurantes', 1),
(26, '{Insertar Descripción de la Categoria}', '{Insertar Imagen}', 'Restaurantes', 2),
(27, '{Insertar Descripción de la Categoria}', '{Insertar Imagen}', 'Restaurantes', 3),
(28, '{Insertar Descripción de la Categoria}', '{Insertar Imagen}', 'Restaurantes', 4),
(29, '{Insertar Descripción de la Categoria}', '{Insertar Imagen}', 'Restaurantes', 5),
(30, '{Insertar Descripción de la Categoria}', '{Insertar Imagen}', 'Restaurantes', 6),
(31, '{Insertar Descripción de la Categoria}', '{Insertar Imagen}', 'Restaurantes', 7),
(32, '{Insertar Descripción de la Categoria}', '{Insertar Imagen}', 'Restaurantes', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id_comentario` bigint(20) NOT NULL,
  `cuerpo_comentario` varchar(255) NOT NULL,
  `titulo_comentario` varchar(255) NOT NULL,
  `usuario_comentario` varchar(255) NOT NULL,
  `id_tienda` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugar`
--

CREATE TABLE `lugar` (
  `id_lugar` bigint(20) NOT NULL,
  `nombre_lugar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `lugar`
--

INSERT INTO `lugar` (`id_lugar`, `nombre_lugar`) VALUES
(6, 'Barranquilla'),
(1, 'Bogotá'),
(4, 'Bucaramanga'),
(5, 'Cali'),
(3, 'Medellin'),
(2, 'Melgar'),
(8, 'Pasto'),
(7, 'Tunja');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `id_reserva` bigint(20) NOT NULL,
  `apellido_cliente_reserva` varchar(255) NOT NULL,
  `cantidad_dias_reserva` varchar(255) DEFAULT NULL,
  `cedula_cliente_reserva` bigint(20) NOT NULL,
  `dia_ingreso_reserva` datetime(6) NOT NULL,
  `dia_salida_reserva` datetime(6) NOT NULL,
  `nombre_cliente_reserva` varchar(255) NOT NULL,
  `telefono_cliente_reserva` bigint(20) NOT NULL,
  `valor_servicio_reserva` bigint(20) DEFAULT NULL,
  `id_tienda` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `reserva`
--

INSERT INTO `reserva` (`id_reserva`, `apellido_cliente_reserva`, `cantidad_dias_reserva`, `cedula_cliente_reserva`, `dia_ingreso_reserva`, `dia_salida_reserva`, `nombre_cliente_reserva`, `telefono_cliente_reserva`, `valor_servicio_reserva`, `id_tienda`) VALUES
(1, 'Herrera', NULL, 1000974167, '2022-11-03 10:47:31.000000', '2022-11-08 10:47:31.000000', 'Andrey', 3134508305, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `id_servicio` bigint(20) NOT NULL,
  `nombre_servicio` varchar(255) NOT NULL,
  `precio_servicio` bigint(20) NOT NULL,
  `id_reserva` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tienda`
--

CREATE TABLE `tienda` (
  `id_tienda` bigint(20) NOT NULL,
  `descripcion_tienda` varchar(255) NOT NULL,
  `direccion_tienda` varchar(255) NOT NULL,
  `email_tienda` varchar(255) NOT NULL,
  `imagen_tienda` varchar(255) NOT NULL,
  `maps_tienda` varchar(255) NOT NULL,
  `nombre_tienda` varchar(255) NOT NULL,
  `telefono_tienda` bigint(20) NOT NULL,
  `web_tienda` varchar(255) NOT NULL,
  `id_categoria` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tienda`
--

INSERT INTO `tienda` (`id_tienda`, `descripcion_tienda`, `direccion_tienda`, `email_tienda`, `imagen_tienda`, `maps_tienda`, `nombre_tienda`, `telefono_tienda`, `web_tienda`, `id_categoria`) VALUES
(1, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 1),
(2, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 1),
(3, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 1),
(4, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 1),
(5, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 1),
(6, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 1),
(7, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 1),
(8, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 1),
(9, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 1),
(10, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 1),
(11, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 9),
(12, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 9),
(13, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 9),
(14, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 9),
(15, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 9),
(16, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 9),
(17, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 9),
(18, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 9),
(19, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 9),
(20, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 9),
(21, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 17),
(22, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 17),
(23, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 17),
(24, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 17),
(25, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 17),
(26, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 17),
(27, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 17),
(28, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 17),
(29, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 17),
(30, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 17),
(31, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 25),
(32, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 25),
(33, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 25),
(34, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 25),
(35, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 25),
(36, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 25),
(37, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 25),
(38, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 25),
(39, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 25),
(40, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 25),
(41, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 2),
(42, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 2),
(43, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 2),
(44, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 2),
(45, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 2),
(46, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 2),
(47, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 2),
(48, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 2),
(49, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 2),
(50, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 2),
(51, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 10),
(52, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 10),
(53, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 10),
(54, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 10),
(55, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 10),
(56, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 10),
(57, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 10),
(58, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 10),
(59, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 10),
(60, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 10),
(61, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 18),
(62, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 18),
(63, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 18),
(64, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 18),
(65, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 18),
(66, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 18),
(67, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 18),
(68, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 18),
(69, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 18),
(70, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 18),
(71, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 26),
(72, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 26),
(73, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 26),
(74, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 26),
(75, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 26),
(76, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 26),
(77, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 26),
(78, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 26),
(79, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 26),
(80, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 26),
(81, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 3),
(82, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 3),
(83, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 3),
(84, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 3),
(85, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 3),
(86, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 3),
(87, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 3),
(88, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 3),
(89, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 3),
(90, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 3),
(91, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 11),
(92, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 11),
(93, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 11),
(94, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 11),
(95, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 11),
(96, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 11),
(97, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 11),
(98, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 11),
(99, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 11),
(100, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 11),
(101, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 19),
(102, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 19),
(103, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 19),
(104, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 19),
(105, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 19),
(106, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 19),
(107, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 19),
(108, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 19),
(109, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 19),
(110, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 19),
(111, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 19),
(112, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 27),
(113, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 27),
(114, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 27),
(115, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 27),
(116, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 27),
(117, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 27),
(118, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 27),
(119, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 27),
(120, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 27),
(121, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 4),
(122, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 4),
(123, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 4),
(124, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 4),
(125, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 4),
(126, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 4),
(127, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 4),
(128, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 4),
(129, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 4),
(130, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 4),
(131, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 12),
(132, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 12),
(133, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 12),
(134, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 12),
(135, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 12),
(136, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 12),
(137, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 12),
(138, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 12),
(139, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 12),
(140, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 12),
(141, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 20),
(142, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 20),
(143, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 20),
(144, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 20),
(145, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 20),
(146, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 20),
(147, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 20),
(148, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 20),
(149, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 20),
(150, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 20),
(151, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 28),
(152, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 28),
(153, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 28),
(154, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 28),
(155, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 28),
(156, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 28),
(157, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 28),
(158, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 28),
(159, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 28),
(160, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 28),
(161, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 5),
(162, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 5),
(163, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 5),
(164, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 5),
(165, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 5),
(166, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 5),
(167, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 5),
(168, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 5),
(169, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 5),
(170, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 5),
(171, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 13),
(172, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 13),
(173, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 13),
(174, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 13),
(175, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 13),
(176, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 13),
(177, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 13),
(178, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 13),
(179, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 13),
(180, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 13),
(181, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 21),
(182, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 21),
(183, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 21),
(184, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 21),
(185, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 21),
(186, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 21),
(187, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 21),
(188, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 21),
(189, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 21),
(190, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 21),
(191, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 29),
(192, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 29),
(193, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 29),
(194, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 29),
(195, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 29),
(196, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 29),
(197, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 29),
(198, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 29),
(199, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 29),
(200, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 29),
(201, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 6),
(202, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 6),
(203, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 6),
(204, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 6),
(205, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 6),
(206, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 6),
(207, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 6),
(208, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 6),
(209, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 6),
(210, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 6),
(211, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 14),
(212, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 14),
(213, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 14),
(214, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 14),
(215, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 14),
(216, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 14),
(217, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 14),
(218, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 14),
(219, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 14),
(220, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 14),
(221, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 22),
(222, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 22),
(223, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 22),
(224, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 22),
(225, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 22),
(226, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 22),
(227, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 22),
(228, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 22),
(229, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 22),
(230, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 22),
(231, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 30),
(232, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 30),
(233, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 30),
(234, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 30),
(235, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 30),
(236, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 30),
(237, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 30),
(238, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 30),
(239, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 30),
(240, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 30),
(241, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 7),
(242, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 7),
(243, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 7),
(244, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 7),
(245, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 7),
(246, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 7),
(247, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 7),
(248, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 7),
(249, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 7),
(250, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 7),
(251, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 15),
(252, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 15),
(253, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 15),
(254, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 15),
(255, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 15),
(256, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 15);
INSERT INTO `tienda` (`id_tienda`, `descripcion_tienda`, `direccion_tienda`, `email_tienda`, `imagen_tienda`, `maps_tienda`, `nombre_tienda`, `telefono_tienda`, `web_tienda`, `id_categoria`) VALUES
(257, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 15),
(258, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 15),
(259, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 15),
(260, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 15),
(261, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 23),
(262, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 23),
(263, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 23),
(264, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 23),
(265, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 23),
(266, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 23),
(267, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 23),
(268, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 23),
(269, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 23),
(270, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 23),
(271, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 31),
(272, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 31),
(273, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 31),
(274, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 31),
(275, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 31),
(276, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 31),
(277, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 31),
(278, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 31),
(279, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 31),
(280, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 31),
(281, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 8),
(282, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 8),
(283, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 8),
(284, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 8),
(285, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 8),
(286, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 8),
(287, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 8),
(288, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 8),
(289, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 8),
(290, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 8),
(291, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 16),
(292, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 16),
(293, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 16),
(294, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 16),
(295, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 16),
(296, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 16),
(297, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 16),
(298, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 16),
(299, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 16),
(300, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 16),
(301, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 24),
(302, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 24),
(303, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 24),
(304, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 24),
(305, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 24),
(306, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 24),
(307, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 24),
(308, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 24),
(309, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 24),
(310, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 24),
(311, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 32),
(312, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 32),
(313, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 32),
(314, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 32),
(315, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 32),
(316, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 32),
(317, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 32),
(318, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 32),
(319, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 32),
(320, '{Insertar Descripcion de la Tienda}', '{Direccion de la Tienda}', 'email@tienda.com', '{Insertar Imagen}', '{Insertar Mapa}', '{Insertar Nombre de la Tienda}', 0, '{Web de la Tienda}', 32);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`),
  ADD KEY `FKkg8n68ye6b9eiy15ehh1yex31` (`id_lugar`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id_comentario`),
  ADD KEY `FK8ycft8gno0jartejb58wbadb7` (`id_tienda`);

--
-- Indices de la tabla `lugar`
--
ALTER TABLE `lugar`
  ADD PRIMARY KEY (`id_lugar`),
  ADD UNIQUE KEY `UKask8hp50aunir85sqpapwo45o` (`nombre_lugar`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`id_reserva`),
  ADD UNIQUE KEY `UKrpra84ui3rwymx2c2x312o6va` (`cedula_cliente_reserva`),
  ADD KEY `FKsroqnoa4bbk6oe1p7qj7u06ey` (`id_tienda`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`id_servicio`),
  ADD KEY `FKmngtaff6y3p9em3mjw6q4ncsd` (`id_reserva`);

--
-- Indices de la tabla `tienda`
--
ALTER TABLE `tienda`
  ADD PRIMARY KEY (`id_tienda`),
  ADD KEY `FK8p86gg0ggvp72ro6h5tgyjkr6` (`id_categoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id_comentario` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lugar`
--
ALTER TABLE `lugar`
  MODIFY `id_lugar` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `id_reserva` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `servicio`
--
ALTER TABLE `servicio`
  MODIFY `id_servicio` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tienda`
--
ALTER TABLE `tienda`
  MODIFY `id_tienda` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD CONSTRAINT `FKkg8n68ye6b9eiy15ehh1yex31` FOREIGN KEY (`id_lugar`) REFERENCES `lugar` (`id_lugar`);

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `FK8ycft8gno0jartejb58wbadb7` FOREIGN KEY (`id_tienda`) REFERENCES `tienda` (`id_tienda`);

--
-- Filtros para la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `FKsroqnoa4bbk6oe1p7qj7u06ey` FOREIGN KEY (`id_tienda`) REFERENCES `tienda` (`id_tienda`);

--
-- Filtros para la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD CONSTRAINT `FKmngtaff6y3p9em3mjw6q4ncsd` FOREIGN KEY (`id_reserva`) REFERENCES `reserva` (`id_reserva`);

--
-- Filtros para la tabla `tienda`
--
ALTER TABLE `tienda`
  ADD CONSTRAINT `FK8p86gg0ggvp72ro6h5tgyjkr6` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
