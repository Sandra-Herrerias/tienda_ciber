-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-11-2022 a las 17:28:35
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda_ciber`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(6) NOT NULL,
  `nombre` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre`) VALUES
(1, 'Anillos'),
(2, 'Pendientes'),
(3, 'Collares'),
(4, 'Pulseras'),
(5, 'Broches');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(6) NOT NULL,
  `categoria_id` int(6) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` decimal(6,2) NOT NULL,
  `url_foto` text NOT NULL,
  `n_opiniones` smallint(5) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `categoria_id`, `nombre`, `descripcion`, `precio`, `url_foto`, `n_opiniones`, `fecha`) VALUES
(1, 1, 'ANILLO SOLITARIO ORO BLANCO 18KT NUEVO', 'Anillo en oro blanco de primera ley con diamante central en talla brillantes. Talla: 13. Peso diamantes: 0,95qt. aprox. Peso: 4.8gr.', '621.98', 'url_img_hosting', 1, '2022-11-15 16:14:38'),
(2, 5, 'BROCHE DE ORO 18KT CON DIAMANTES', 'Precioso broche de segunda mano en oro amarillo de primera ley con diamantes. Medidas: 6.3cm. X 3.4cm. Peso: 23.9gr.', '1500.15', 'hosting', 5, '2022-11-15 16:16:08'),
(3, 2, 'PENDIENTES PANTERA EN ORO BICOLOR 18KT', 'Preciosos pendientes de segunda mano en oro amarillo y blanco de primera ley en forma de pantera con cierre a presión. Alto: 4.5cm. Ancho: 1.1cm. Peso: 16.8gr.', '1084.23', 'url_foto_hosting', 0, '2022-11-15 16:17:50'),
(4, 4, 'PULSERA DE CALABROTES EN ORO 18KT', 'Magnifica pulsera de calabrotes de segunda mano en oro amarillo. Una preciosa pieza, perfecto complemento. Largo: 18.4cm. Ancho: 0.5cm. Peso: 9.7gr.', '615.18', 'url_foto_hosting', 6, '2022-11-15 16:19:15'),
(5, 3, 'COLLAR ROSARIO EN ORO 18KT', 'Collar rosario de segunda mano en oro amarillo de primera ley. Terminado en una cruz. Longitud (cerrado): 42cm. Peso:  28.9gr.', '564.85', 'url_hosting_image', 2, '2022-11-15 16:20:33');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `categoria_id` (`categoria_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
