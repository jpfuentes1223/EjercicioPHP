-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-01-2021 a las 13:13:01
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ejerciciophp_users`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quests`
--

CREATE TABLE `quests` (
  `Id` int(11) NOT NULL,
  `Descripcion` text NOT NULL,
  `Num_votos` int(11) NOT NULL,
  `Mediana` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `quests`
--

INSERT INTO `quests` (`Id`, `Descripcion`, `Num_votos`, `Mediana`) VALUES
(1, 'Encontrar el camino que lleva al camino encantado', 5, 2.3),
(2, 'Descubrir habitación secreta dentro del castillo', 10, 3.5),
(3, 'Encontrar la llave de la habitación secreta', 50, 4.5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `Id` int(11) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Surname` varchar(25) NOT NULL,
  `Nick` varchar(25) NOT NULL,
  `Passwd` varchar(30) NOT NULL,
  `Score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`Id`, `Name`, `Surname`, `Nick`, `Passwd`, `Score`) VALUES
(1, 'Jose', 'Ramirez', 'jramirez22', 'jose123', 50),
(2, 'Juan', 'Batllori', 'jb87', 'juan123', 100),
(3, 'Carlos', 'Pineda', 'carlosp56', 'carlos123', 75),
(4, 'Pablo', 'Gonzalez', 'pablog54', 'pablo123', 55),
(5, 'Jose', 'Vasquez', 'joseV54', 'jose123', 66);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `quests`
--
ALTER TABLE `quests`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `quests`
--
ALTER TABLE `quests`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
