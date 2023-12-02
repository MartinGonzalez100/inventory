-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-12-2023 a las 05:04:10
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inventorydb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agente`
--

CREATE TABLE `agente` (
  `id` int(4) NOT NULL,
  `nameagente` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `agente`
--

INSERT INTO `agente` (`id`, `nameagente`) VALUES
(1, 'martin'),
(2, 'maneff'),
(5, 'marcos'),
(6, 'emanuel');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dptoservicio`
--

CREATE TABLE `dptoservicio` (
  `id` int(4) NOT NULL,
  `namedptoservicio` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `dptoservicio`
--

INSERT INTO `dptoservicio` (`id`, `namedptoservicio`) VALUES
(1, 'Gestion y Control'),
(2, 'Mesa de Entrada'),
(5, 'Planificacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pc`
--

CREATE TABLE `pc` (
  `id` int(4) NOT NULL,
  `iddptoservicio` int(4) DEFAULT NULL,
  `idagente` int(4) DEFAULT NULL,
  `detalle` varchar(50) DEFAULT NULL,
  `discotipo` varchar(50) DEFAULT NULL,
  `discotamaño` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pc`
--

INSERT INTO `pc` (`id`, `iddptoservicio`, `idagente`, `detalle`, `discotipo`, `discotamaño`) VALUES
(1, NULL, NULL, 'INTEL CORE I5 4GB RAM 3.1GHZ', 'SSD', '128'),
(2, NULL, NULL, 'INTEL CORE I3 8GB RAM 2.9GHZ', 'SSD', '256'),
(3, NULL, NULL, 'INTEL CORE I5 4GB RAM 3.1GHZ', 'SSD', '500'),
(4, NULL, NULL, 'INTEL CORE I3 16GB RAM 2.9GHZ', 'SSD', '256');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agente`
--
ALTER TABLE `agente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `dptoservicio`
--
ALTER TABLE `dptoservicio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pc`
--
ALTER TABLE `pc`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `agente`
--
ALTER TABLE `agente`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `dptoservicio`
--
ALTER TABLE `dptoservicio`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `pc`
--
ALTER TABLE `pc`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
