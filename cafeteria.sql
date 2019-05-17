-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3308
-- Tiempo de generación: 17-05-2019 a las 10:45:42
-- Versión del servidor: 5.7.23
-- Versión de PHP: 7.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cafeteria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `id_tipo`
--

CREATE TABLE `id_tipo` (
  `administrador` int(1) NOT NULL,
  `usuario` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_Producto` int(3) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `precio` double(5,1) NOT NULL,
  `tipo_Producto` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_Producto`, `nombre`, `precio`, `tipo_Producto`) VALUES
(1, 'montadito de jamon', 2.0, 'Comida'),
(2, 'montadito de lomo', 2.0, 'Comida'),
(3, 'batido de fresa', 1.0, 'Bebida'),
(4, 'kas de naranja', 1.0, 'Bebida'),
(5, 'kas de limon', 1.0, 'Bebida'),
(6, 'coca cola zero', 1.0, 'Bebida'),
(7, 'coca cola light', 1.0, 'Bebida'),
(8, 'helado de chocolate', 1.0, 'Helado'),
(9, 'helado de fresa', 1.0, 'Helado'),
(10, 'montadito de mechá', 2.5, 'Comida'),
(11, 'cacique', 3.5, 'bebida');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(3) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellidos` varchar(20) NOT NULL,
  `correo_electronico` varchar(20) NOT NULL,
  `contraseña` longtext NOT NULL,
  `direccion` varchar(25) NOT NULL,
  `id_tipo` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellidos`, `correo_electronico`, `contraseña`, `direccion`, `id_tipo`) VALUES
(1, 'asd', 'asd', 'asd', 'e10adc3949ba59abbe56e057f20f883e', 'asd', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_Producto`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_Producto` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;