-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 10-11-2024 a las 20:12:04
-- Versión del servidor: 8.0.35
-- Versión de PHP: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hospitaldb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hce_responsable`
--

CREATE TABLE `hce_responsable` (
  `id` int NOT NULL,
  `documento` longtext NOT NULL,
  `nombre` longtext NOT NULL,
  `apellido` longtext NOT NULL,
  `correo` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `hce_responsable`
--

INSERT INTO `hce_responsable` (`id`, `documento`, `nombre`, `apellido`, `correo`) VALUES
(1, '123456789', 'Luis', 'Perez', 'luis.perez@hospital.com'),
(2, '987654321', 'Ana', 'Gomez', 'ana.gomez@hospital.com'),
(3, '456789123', 'Pedro', 'Sanchez', 'pedro.sanchez@hospital.com'),
(4, '567890123', 'Laura', 'Martinez', 'laura.martinez@hospital.com'),
(6, '789012345', 'Mariana', 'Ortiz', 'mariana.ortiz@hospital.com'),
(7, '890123456', 'Javier', 'Torres', 'javier.torres@hospital.com'),
(8, '901234567', 'Natalia', 'Vasquez', 'natalia.vasquez@hospital.com'),
(9, '123098765', 'Sandra', 'Castillo', 'sandra.castillo@hospital.com'),
(11, '1007232151', 'Juan Jose', 'Alzate', 'alzate@hospital.com'),
(12, '4875696', 'Carlos', 'Ruiz', 'carlosr25@hospital.com'),
(13, '10047745353', 'Juanita', 'Uribe', 'juanita@hospital.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `hce_responsable`
--
ALTER TABLE `hce_responsable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `hce_responsable`
--
ALTER TABLE `hce_responsable`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
