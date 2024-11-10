-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 10-11-2024 a las 20:12:16
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
-- Estructura de tabla para la tabla `hce_equipo`
--

CREATE TABLE `hce_equipo` (
  `id` int NOT NULL,
  `nombre` longtext NOT NULL,
  `marca` longtext NOT NULL,
  `modelo` longtext NOT NULL,
  `serial` longtext NOT NULL,
  `area` longtext NOT NULL,
  `responsable` longtext NOT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `hce_equipo`
--

INSERT INTO `hce_equipo` (`id`, `nombre`, `marca`, `modelo`, `serial`, `area`, `responsable`, `foto`) VALUES
(1, 'Electrocardiógrafo', 'Philips', 'ECG1000', 'E12345', 'Biomédica', 'Luis Perez', '/imagenes/electrocardiografo.webp'),
(2, 'Resonador Magnético', 'Siemens', 'RM800', 'R67890', 'Biomédica', 'Ana Gomez', '/imagenes/resonador.webp'),
(3, 'Ventilador Mecánico', 'Medtronic', 'VM200', 'V23456', 'Biomédica', 'Pedro Sanchez', '/imagenes/ventilador.jpg'),
(4, 'Ecógrafo', 'GE', 'ECO300', 'E09876', 'Biomédica', 'Laura Martinez', '/imagenes/ecografo.jpeg'),
(5, 'Desfibrilador', 'Zoll', 'DF100', 'D45678', 'Biomédica', 'Carlos Ruiz', '/imagenes/desfibrilador.png'),
(6, 'Tomógrafo', 'Canon', 'TC500', 'T12389', 'Biomédica', 'Mariana Ortiz', '/imagenes/tomografo.jpg'),
(7, 'Bomba de Infusión', 'Baxter', 'BI200', 'B56789', 'Biomédica', 'Luis Perez', '/imagenes/bomba.jpg'),
(8, 'Monitor Multiparamétrico', 'Mindray', 'MM600', 'M67890', 'Sistemas', 'Javier Torres', '/imagenes/monitor.webp'),
(9, 'Ventilador Neonatal', 'Dräger', 'VN300', 'V56780', 'Biomédica', 'Natalia Vasquez', 'imagenes/amarilla_MYySay7.jpg'),
(10, 'Oxímetro de Pulso', 'Masimo', 'OX100', 'O12345', 'Infraestructura', 'Luis Perez', '/imagenes/oximetro.png'),
(11, 'Electroencefalógrafo', 'Nihon Kohden', 'EEG800', 'E23456', 'Sistemas', 'Sandra Castillo', '/imagenes/electroencefalografo.webp'),
(13, 'Aspiradora', 'Electrolux', 'Easybox', 'N-37464-4', 'Infraestructura', 'Luis Perez', 'imagenes/aspiradora_nWQOwVn.webp'),
(17, 'Macbook Pro', 'Apple', 'M1', 'B56789', 'Sistemas', 'Juanita Uribe', 'imagenes/macbook_pro_MmTafW6.webp');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `hce_equipo`
--
ALTER TABLE `hce_equipo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `hce_equipo`
--
ALTER TABLE `hce_equipo`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
