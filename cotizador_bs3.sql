-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-07-2015 a las 03:07:42
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `cotizador_bs3`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cotizaciones_demo`
--

CREATE TABLE IF NOT EXISTS `cotizaciones_demo` (
`id_cotizacion` int(11) NOT NULL,
  `numero_cotizacion` int(11) NOT NULL,
  `fecha_cotizacion` datetime NOT NULL,
  `atencion` varchar(50) NOT NULL,
  `tel1` varchar(9) NOT NULL,
  `empresa` varchar(75) NOT NULL,
  `tel2` varchar(9) NOT NULL,
  `email` varchar(30) NOT NULL,
  `condiciones` varchar(30) NOT NULL,
  `validez` varchar(20) NOT NULL,
  `entrega` varchar(20) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cotizaciones_demo`
--

INSERT INTO `cotizaciones_demo` (`id_cotizacion`, `numero_cotizacion`, `fecha_cotizacion`, `atencion`, `tel1`, `empresa`, `tel2`, `email`, `condiciones`, `validez`, `entrega`) VALUES
(1, 1, '2015-07-19 06:52:51', 'Pepe', '70555', '', '', '', 'Nota: Las Condicione', '', ''),
(2, 2, '2015-07-19 06:53:38', 'Pepe', '70555', '', '', '', 'Nota: Las Condicione', '', ''),
(3, 3, '2015-07-19 06:55:42', 'Pepe', '70555', '', '', '', 'Nota: Las Condicione', '', ''),
(4, 4, '2015-07-19 06:59:01', 'Pepe', '70555', '', '', '', 'Nota: Las Condiciones de pago ', '', ''),
(5, 5, '2015-07-19 07:00:12', 'Pepe', '70555', '', '', '', 'Nota: Las Condiciones de pago ', '', ''),
(6, 6, '2015-07-19 07:03:09', 'Pepe', '70555', '', '', '', 'Nota: Las Condiciones de pago ', '', ''),
(7, 7, '2015-07-19 07:03:34', 'Pepe', '70555', '', '', '', 'Nota: Las Condiciones de pago ', '', ''),
(8, 8, '2015-07-19 07:08:59', 'Pepe', '70555', '', '', '', 'Nota: Las Condiciones de pago ', '', ''),
(9, 9, '2015-07-19 07:10:20', 'Pepe', '70555', '', '', '', 'Nota: Las Condiciones de pago ', '', ''),
(10, 10, '2015-07-19 07:11:09', 'Pepe', '70555', '', '', '', 'Nota: Las Condiciones de pago ', '', ''),
(11, 11, '2015-07-19 07:11:47', 'Pepe', '70555', 'test', '700', 'joaquinobed@gmail.com', 'Nota: Las Condiciones de pago ', '', ''),
(12, 12, '2015-07-19 07:15:03', 'Pepe', '70555', 'test', '700', 'joaquinobed@gmail.com', 'Nota: Las Condiciones de pago ', '', ''),
(13, 13, '2015-07-19 07:16:34', 'Pepe', '70555', 'test', '700', 'joaquinobed@gmail.com', 'Nota: Las Condiciones de pago ', '', ''),
(14, 14, '2015-07-19 07:16:51', 'Pepe', '70555', 'test', '700', 'joaquinobed@gmail.com', 'Nota: Las Condiciones de pago ', '', ''),
(15, 15, '2015-07-19 07:20:34', 'Juan Diego', '222-2220', 'Invertir Mejor', '2222-0000', 'info@invertirmejor.com', 'Nota: Las Condiciones de pago ', '', ''),
(16, 16, '2015-07-20 07:27:16', 'Juan Perez', '7070', '', '', '', '', '', ''),
(17, 17, '2015-07-20 07:29:50', 'Juan Perez', '7070', '', '', '', '1', '', ''),
(18, 18, '2015-07-20 07:32:30', 'Juan Perez', '7070', '', '', '', 'Contado', '', ''),
(19, 19, '2015-07-20 07:34:38', 'Juan Perez', '7070', '', '', '', 'Contado', '', ''),
(20, 20, '2015-07-20 07:35:01', 'Juan Perez', '7070', '', '', '', 'Contado', '', ''),
(21, 21, '2015-07-20 07:38:07', 'Juan Perez', '7070', '', '', '', 'Contado', '15 dÃ­as', 'Inmediato'),
(22, 22, '2015-07-21 03:06:14', 'Juan Diego', '70587677', 'Invertir Mejor', '2230-000', 'info@invertirmejor.com', 'CrÃ©dito 30 dÃ­as', '15 dÃ­as', 'Inmediato');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_cotizacion_demo`
--

CREATE TABLE IF NOT EXISTS `detalle_cotizacion_demo` (
`id_detalle_cotizacion` int(11) NOT NULL,
  `numero_cotizacion` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_venta` double NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalle_cotizacion_demo`
--

INSERT INTO `detalle_cotizacion_demo` (`id_detalle_cotizacion`, `numero_cotizacion`, `id_producto`, `cantidad`, `precio_venta`) VALUES
(1, 1, 3, 1, 25),
(2, 2, 2, 1, 15),
(3, 3, 1, 1, 10),
(4, 4, 3, 1, 25),
(5, 5, 4, 1, 40),
(6, 6, 4, 1, 40),
(7, 7, 1, 1, 10),
(8, 8, 3, 1, 25),
(9, 9, 4, 1, 40),
(10, 10, 2, 1, 15),
(11, 10, 2, 1, 15),
(12, 10, 4, 21, 40),
(13, 10, 2, 1, 15),
(14, 10, 2, 1, 15),
(15, 10, 2, 1, 15),
(16, 10, 2, 1, 15),
(17, 10, 2, 1, 15),
(18, 10, 2, 1, 15),
(19, 10, 1, 1, 10),
(20, 11, 3, 1, 25),
(21, 12, 3, 1, 25),
(22, 13, 3, 1, 25),
(23, 14, 4, 21, 40),
(24, 15, 1, 1, 10),
(25, 15, 5, 2, 25),
(26, 16, 67, 1, 12),
(27, 16, 67, 1, 12),
(28, 16, 67, 1, 12),
(29, 16, 1, 1, 10),
(30, 17, 1, 1, 10),
(31, 18, 1, 1, 10),
(32, 19, 2, 1, 15),
(33, 20, 3, 1, 25),
(34, 21, 5, 1, 18),
(35, 22, 1, 1, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas_demo`
--

CREATE TABLE IF NOT EXISTS `marcas_demo` (
`id_marca` int(11) NOT NULL,
  `nombre_marca` char(40) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `marcas_demo`
--

INSERT INTO `marcas_demo` (`id_marca`, `nombre_marca`) VALUES
(1, 'Mega'),
(2, 'HP'),
(3, 'Black and decker'),
(4, 'Honda'),
(5, 'Pedrollo'),
(6, 'Taifu'),
(7, 'Porter cable'),
(8, 'Milwaukee'),
(9, 'Riggid'),
(10, 'Karcher'),
(11, 'Lincoln electric'),
(12, 'Goni'),
(13, 'Poulan'),
(14, 'Bosch'),
(15, 'Franklin electric'),
(16, 'Shell Helix'),
(17, 'QUINCIP'),
(18, 'Briggs stratton'),
(19, 'Champions'),
(20, 'Parker'),
(21, 'Norflex'),
(22, 'Campbell Hausfeld'),
(23, 'Koyo'),
(24, 'Alkota'),
(25, 'Amsterdam'),
(26, 'Oster'),
(27, 'Trupper'),
(28, 'Truck Hose'),
(29, 'Trapp'),
(30, 'Ducar'),
(31, 'Brahman'),
(32, 'Ngk'),
(33, 'Midwest Can'),
(34, 'Maccolloch'),
(35, 'Nuvo'),
(36, 'Oregon'),
(37, 'Swingfog'),
(38, 'Irwin'),
(39, 'Makita'),
(40, 'Hilti'),
(41, 'JOHN DEERE'),
(42, 'Valdoch'),
(43, 'JAZ'),
(44, 'Stanley'),
(45, 'Pressure wave'),
(46, 'Delta'),
(47, 'Urrea'),
(48, 'Skil'),
(49, 'Surtek'),
(50, 'China'),
(51, 'Foy'),
(52, 'Amana tool'),
(53, 'Norton'),
(54, '3M'),
(55, 'Square'),
(56, 'Vanguard'),
(57, 'Gbs'),
(58, 'Quality'),
(59, 'Miller'),
(60, 'Mundial'),
(61, 'Fini'),
(62, 'Nova'),
(63, 'Somar'),
(64, 'Timberline'),
(65, 'Forte'),
(66, 'Aguila'),
(67, 'Kimberly Clark'),
(68, 'Diamond'),
(69, 'Schulz'),
(70, 'Genteq'),
(71, 'Bellota'),
(72, 'Ultra'),
(73, 'Craftsman'),
(74, 'Asein'),
(75, 'Knova'),
(76, 'Generica'),
(77, 'Sagola'),
(78, 'Arvek'),
(79, 'Yale'),
(80, 'Leeson'),
(81, 'Siemen'),
(82, 'Baldor'),
(83, 'StaRite'),
(84, 'Diablo'),
(88, 'ARO'),
(86, 'Booster'),
(87, 'Dremel');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_demo`
--

CREATE TABLE IF NOT EXISTS `productos_demo` (
`id_producto` int(11) NOT NULL,
  `codigo_producto` char(20) NOT NULL,
  `nombre_producto` char(100) NOT NULL,
  `modelo_producto` varchar(30) NOT NULL,
  `id_departamento_producto` int(11) NOT NULL,
  `id_marca_producto` int(11) NOT NULL,
  `status_producto` tinyint(4) NOT NULL,
  `unidad_medida_producto` char(20) NOT NULL,
  `peso_producto` char(20) NOT NULL,
  `date_added` datetime NOT NULL,
  `precio_producto` double NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4301 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos_demo`
--

INSERT INTO `productos_demo` (`id_producto`, `codigo_producto`, `nombre_producto`, `modelo_producto`, `id_departamento_producto`, `id_marca_producto`, `status_producto`, `unidad_medida_producto`, `peso_producto`, `date_added`, `precio_producto`) VALUES
(1, 'MG01', 'Mouse inalambrico', '', 3, 1, 1, 'Cada una', 'sin peso', '2013-03-25 20:35:15', 10),
(2, 'TCL01', 'Teclado multimedia', '', 3, 1, 1, '', '', '2013-03-25 20:35:15', 15),
(3, 'ILK059', 'Nuevo mini 2.4g micro inalambrico de teclado', '', 3, 1, 1, '', '', '2013-03-25 20:35:15', 25),
(4, '4520', 'TECLADO para HP 4520', 'MS250', 3, 2, 1, '', '', '2013-03-25 20:35:15', 40),
(5, 'A081', 'Altavoz de la computadora', '', 3, 2, 1, '', '', '2013-03-25 20:35:15', 18),
(64, 'MSD01', '2GB Tarjeta Micro SD', '', 2, 2, 1, '', '', '2013-03-25 20:35:15', 5),
(65, 'AUR01', 'Adaptador usb para radio cd', '', 2, 2, 1, '', '', '2013-03-25 20:35:15', 5),
(66, 'SA-205', '2.0 de canal de sonido multimedia sa-205', '', 2, 2, 1, '', '', '2013-03-25 20:35:15', 13),
(67, 'KB-1830', 'Teclado multimedia de alta calidad', '', 2, 1, 1, '', '', '2013-03-25 20:35:15', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmp_cotizacion`
--

CREATE TABLE IF NOT EXISTS `tmp_cotizacion` (
`id_tmp` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad_tmp` int(11) NOT NULL,
  `precio_tmp` double(8,2) DEFAULT NULL,
  `session_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tmp_cotizacion`
--

INSERT INTO `tmp_cotizacion` (`id_tmp`, `id_producto`, `cantidad_tmp`, `precio_tmp`, `session_id`) VALUES
(55, 4, 1, 40.00, 'se7uf7ajc6unfc7npv6rgpum21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_demo`
--

CREATE TABLE IF NOT EXISTS `user_demo` (
`user_id` int(11) NOT NULL,
  `firstname` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `lastname` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `email` varchar(96) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `code` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `user_demo`
--

INSERT INTO `user_demo` (`user_id`, `firstname`, `lastname`, `email`, `code`, `status`, `date_added`) VALUES
(1, 'Obed', 'Alvarado', 'joaquinobed@gmail.com', '2555', 1, '2014-04-11 00:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cotizaciones_demo`
--
ALTER TABLE `cotizaciones_demo`
 ADD PRIMARY KEY (`id_cotizacion`), ADD UNIQUE KEY `numero_cotizacion` (`numero_cotizacion`);

--
-- Indices de la tabla `detalle_cotizacion_demo`
--
ALTER TABLE `detalle_cotizacion_demo`
 ADD PRIMARY KEY (`id_detalle_cotizacion`), ADD KEY `numero_cotizacion` (`numero_cotizacion`,`id_producto`);

--
-- Indices de la tabla `marcas_demo`
--
ALTER TABLE `marcas_demo`
 ADD PRIMARY KEY (`id_marca`);

--
-- Indices de la tabla `productos_demo`
--
ALTER TABLE `productos_demo`
 ADD PRIMARY KEY (`id_producto`), ADD UNIQUE KEY `codigo_producto` (`codigo_producto`), ADD KEY `id_departamento_producto` (`id_departamento_producto`), ADD KEY `id_marca_producto` (`id_marca_producto`);

--
-- Indices de la tabla `tmp_cotizacion`
--
ALTER TABLE `tmp_cotizacion`
 ADD PRIMARY KEY (`id_tmp`);

--
-- Indices de la tabla `user_demo`
--
ALTER TABLE `user_demo`
 ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cotizaciones_demo`
--
ALTER TABLE `cotizaciones_demo`
MODIFY `id_cotizacion` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `detalle_cotizacion_demo`
--
ALTER TABLE `detalle_cotizacion_demo`
MODIFY `id_detalle_cotizacion` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT de la tabla `marcas_demo`
--
ALTER TABLE `marcas_demo`
MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT de la tabla `productos_demo`
--
ALTER TABLE `productos_demo`
MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4301;
--
-- AUTO_INCREMENT de la tabla `tmp_cotizacion`
--
ALTER TABLE `tmp_cotizacion`
MODIFY `id_tmp` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT de la tabla `user_demo`
--
ALTER TABLE `user_demo`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
