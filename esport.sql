-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-03-2022 a las 18:37:29
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `esport`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE `equipo` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_file` bigint(20) NOT NULL DEFAULT 2,
  `siglas` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `equipo`
--

INSERT INTO `equipo` (`id`, `nombre`, `descripcion`, `id_file`, `siglas`) VALUES
(1, 'Equipo Azul', 'Este es el equipo aluzadisimo y vamos a ganar', 0, 'azul'),
(2, 'Equipo Rojo', 'Este es el equipo Rojisimo jaja', 2, 'roj'),
(21, 'Equipo casa', 'este es el equipo que he creado desde casa', 2, 'casa'),
(24, 'equipo0 rafa', 'Somos el equipo de la clase y vamos a ganer', 2, 'clase'),
(25, 'Equipo Clase 2', 'Este es el segundo equipo de clase', 2, 'clas2'),
(26, 'Equipo casa', 'qweruipqweroiqwerqwerqwerqwerqwer', 2, 'casa'),
(27, 'Equipo casa', 'jdjdddddsdsdsdsdsdsdsdsdsdsdsdsds', 2, 'saas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `file`
--

CREATE TABLE `file` (
  `id` bigint(20) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `archivo` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `file`
--

INSERT INTO `file` (`id`, `name`, `type`, `archivo`) VALUES
(1, 'foto', '', ''),
(2, 'foto2', NULL, NULL),
(3, 'foto3', NULL, NULL),
(4, 'prueba', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partido`
--

CREATE TABLE `partido` (
  `id` bigint(20) NOT NULL,
  `id_equipo1` bigint(20) NOT NULL,
  `id_equipo2` bigint(20) DEFAULT 1,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `partido`
--

INSERT INTO `partido` (`id`, `id_equipo1`, `id_equipo2`, `fecha`) VALUES
(3, 2, 1, '2022-01-20 06:05:00'),
(4, 1, 2, '2022-01-19 18:05:00'),
(5, 1, 1, '2022-01-19 18:05:00'),
(6, 1, 2, '2022-01-19 18:05:00'),
(7, 1, 2, '2012-12-12 11:12:00'),
(9, 1, 2, '2022-01-19 18:05:00'),
(10, 1, 2, '2020-08-02 14:40:00'),
(12, 1, 2, '2022-02-01 11:00:00'),
(17, 1, 2, '2022-01-19 18:05:00'),
(21, 1, 2, '2022-01-19 18:05:00'),
(22, 1, 1, '2012-12-12 11:12:00'),
(24, 1, 1, '2022-01-19 18:05:00'),
(26, 1, 1, '2022-02-23 11:00:00'),
(27, 1, 1, '2022-02-23 11:00:00'),
(28, 1, 2, '2022-02-28 11:00:00'),
(29, 1, 2, '2022-02-23 11:00:00'),
(30, 1, 21, '2020-08-04 02:40:00'),
(31, 1, 1, '2022-02-15 11:00:00'),
(32, 1, 1, '2022-02-21 11:00:00'),
(33, 2, 1, '2022-02-14 11:20:00'),
(34, 1, 1, '2022-02-24 11:00:00'),
(35, 1, 1, '2022-02-17 11:00:00'),
(36, 1, 1, '2022-02-18 11:00:00'),
(37, 1, 2, '2022-02-18 11:00:00'),
(38, 1, NULL, '2022-02-23 11:00:00'),
(39, 1, NULL, '2022-02-23 11:00:00'),
(40, 1, NULL, '2022-02-28 11:00:00'),
(41, 1, NULL, '2022-02-28 11:00:00'),
(42, 1, NULL, '2022-02-28 11:00:00'),
(43, 1, 1, '2022-01-19 18:05:00'),
(44, 1, 1, '2022-02-28 11:00:00'),
(45, 1, 2, '2022-02-14 11:20:00'),
(46, 1, 2, '2022-02-16 11:00:00'),
(47, 1, 1, '2022-02-25 11:00:00'),
(48, 1, 2, '2022-02-16 11:15:00'),
(49, 1, 21, '2022-02-16 11:00:00'),
(50, 2, 24, '2022-02-23 11:00:00'),
(51, 2, 21, '2022-02-17 11:15:00'),
(52, 2, 27, '2022-02-22 11:00:00'),
(53, 1, 2, '2022-02-10 11:20:00'),
(54, 1, 2, '2022-02-17 11:40:00'),
(55, 1, 2, '2022-02-17 11:40:00'),
(56, 2, 1, '2022-02-18 11:40:00'),
(57, 1, 2, '2022-02-18 11:20:00'),
(58, 24, 26, '2022-02-19 11:20:00'),
(59, 1, NULL, '2022-02-20 11:15:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuario`
--

CREATE TABLE `tipousuario` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipousuario`
--

INSERT INTO `tipousuario` (`id`, `nombre`) VALUES
(1, 'administrador'),
(2, 'Organizador'),
(3, 'Jugador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` bigint(20) NOT NULL,
  `login` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `summonername` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_tipousuario` bigint(20) NOT NULL DEFAULT 3,
  `id_equipo` bigint(20) DEFAULT NULL,
  `id_file` bigint(20) NOT NULL DEFAULT 1,
  `accountid` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `profileiconid` bigint(20) NOT NULL DEFAULT 1450,
  `summonerlevel` bigint(20) NOT NULL,
  `rank` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tier` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discord` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wins` bigint(20) DEFAULT NULL,
  `losses` bigint(20) DEFAULT NULL,
  `descripcion` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `login`, `password`, `summonername`, `email`, `id_tipousuario`, `id_equipo`, `id_file`, `accountid`, `profileiconid`, `summonerlevel`, `rank`, `tier`, `twitter`, `discord`, `wins`, `losses`, `descripcion`) VALUES
(1, 'admin', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', 'saslt', 'admin@admin.com', 1, 1, 1, 'v6rxfp6kK-NZE5-QMxnHUCPV4IiaabFF0nAMoy9RR3965CY', 1234, 123, 'IV', 'BRONZE', 'Saslt', 'elsas#5004', 20, 18, 'Yo soy el administrador de esta plataforma y la estoy desarrollando ahora mismo'),
(9, 'presentacion2', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', 'buenas', 'prueba', 2, 2, 1, '123', 4804, 123, 'I', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'presentacion', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', 'admin', 'prueba', 2, 1, 1, '12334', 683, 104, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'cappo', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', 'Cappi', 'cappo@gmail.com', 2, 1, 1, 'yPMnsOEYhwRS_W8lCM8MmFoWE8SAGbeS0HrWn6AMw1E5hgg', 5213, 77, 'IV', 'BRONZE', '', '', 15, 22, 'Soy cappo y soy un organizador'),
(62, 'marcos', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', 'MARCOXXTEE', 'MARCOS', 3, 2, 1, 'fLm-vy77wslGmLfd6MqjO4_E0yT1C6In4cbUaANrvcx7V4WN', 1447, 146, NULL, NULL, 'peñita', 'peñita', NULL, NULL, 'QEWRQWPOEIRUQPWOIEURQWER'),
(63, 'hector', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', 'hectorvlc15', 'prueba@prueba.com', 3, 2, 1, '56FLTQByMm_4nUXKtvmjHREbm7LKoksIkfLF5fm185DrHgI', 3164, 168, 'III', 'BRONZE', 'peñita', 'peñita', 11, 8, 'soy hector y soy muy buen jugador'),
(64, 'casaprevio', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', 'pinchuskeador', 'pinchu@gmail.com', 3, 25, 1, 'v6rxfp6kK-NZE5-QMxnHUCPV4IiaabFF0nAMoy9RR3965CY', 4804, 159, 'IV', 'BRONZE', 'peñita', 'peñita', 32, 29, 'soy pinchu y soy muy bueno'),
(65, 'byangel998', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', 'byangel998', 'byangel998@gmail.com', 3, 25, 1, 'uxQLCyPZfSwfhLtRuIY9cLEjJpeIpY4jSLht6UwM58tOawY', 4985, 292, 'I', 'BRONZE', 'peñita', 'peñita', 32, 40, 'soy byangel998 y soy el mejor'),
(66, 'byjuan65', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', 'byjuan65', 'byangel998@gmail.com', 3, 25, 1, 'uxQLCyPZfSwfhLtRuIY9cLEjJpeIpY4jSLht6UwM58tOawY', 4984, 292, 'I', 'BRONZE', 'peñita', 'peñita', 32, 40, 'soy byangel998 y soy el mejor'),
(67, 'andrew', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', 'andrew', 'byangel998@gmail.com', 3, 25, 1, 'uxQLCyPZfSwfhLtRuIY9cLEjJpeIpY4jSLht6UwM58tOawY', 4983, 292, 'I', 'BRONZE', 'peñita', 'peñita', 32, 40, 'soy byangel998 y soy el mejor'),
(68, 'centorealover', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', 'centorealover', 'byangel998@gmail.com', 3, 25, 1, 'uxQLCyPZfSwfhLtRuIY9cLEjJpeIpY4jSLht6UwM58tOawY', 4982, 292, 'I', 'BRONZE', 'peñita', 'peñita', 32, 40, 'soy byangel998 y soy el mejor'),
(69, 'bleyron', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', 'bleyron', 'byangel998@gmail.com', 3, 25, 1, 'uxQLCyPZfSwfhLtRuIY9cLEjJpeIpY4jSLht6UwM58tOawY', 4981, 292, 'I', 'BRONZE', 'peñita', 'peñita', 32, 40, 'soy byangel998 y soy el mejor'),
(70, 'Hadees0', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', 'Hadees0', 'byangel998@gmail.com', 3, 25, 1, 'uxQLCyPZfSwfhLtRuIY9cLEjJpeIpY4jSLht6UwM58tOawY', 4986, 292, 'I', 'BRONZE', 'peñita', 'peñita', 32, 40, 'soy byangel998 y soy el mejor'),
(71, 'ramon56', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', 'ramon56', 'byangel998@gmail.com', 3, 25, 1, 'uxQLCyPZfSwfhLtRuIY9cLEjJpeIpY4jSLht6UwM58tOawY', 4951, 292, 'I', 'BRONZE', 'peñita', 'peñita', 32, 40, 'soy ramon y soy el mejor'),
(72, 'pepito33', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', 'khawy', 'byangel998@gmail.com', 3, 25, 1, 'uxQLCyPZfSwfhLtRuIY9cLEjJpeIpY4jSLht6UwM58tOawY', 4820, 292, 'I', 'MASTER', 'peñita', 'peñita', 32, 40, 'soy ramon y soy el mejor'),
(74, 'byangel998', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', 'ruben54', 'byangel998@gmail.com', 3, 25, 1, 'uxQLCyPZfSwfhLtRuIY9cLEjJpeIpY4jSLht6UwM58tOawY', 4989, 292, 'I', 'BRONZE', 'peñita', 'peñita', 32, 40, 'soy byangel998 y soy el mejor'),
(75, 'pepito33', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', 'pepito43', 'byangel998@gmail.com', 3, 25, 1, 'uxQLCyPZfSwfhLtRuIY9cLEjJpeIpY4jSLht6UwM58tOawY', 4820, 292, 'I', 'MASTER', 'peñita', 'peñita', 32, 40, 'soy ramon y soy el mejor'),
(76, 'ejemplo', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', 'Arxet', 'ejemplo@gmail.com', 3, 2, 1, 'yoZncRLmdpjSq_3lHOqbEzy_3yl4bQV7gh_GGjOj6G6fCiU', 3523, 145, 'III', 'BRONZE', 'ejemplo', 'ejemplo', 22, 41, 'ejemploejemploejemploejemplo'),
(78, 'katacombes', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', 'Katacombes', 'Katacombes@gmail.com', 3, 2, 1, 'uDj6ArQsOvzwju4JZ7Sbk0Ac0vY72pUJbeVArwEvW3g8TTE', 5253, 424, 'IV', 'SILVER', 'peñita', 'peñita', 73, 71, 'katacomberkatacomberkatacomberkatacomber'),
(79, 'Sneezor', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', 'Sneezor', 'sneezor@gmail.com', 3, 2, 1, 'JcMSghPU8-rM8hpwyvDZm5b0Q11p3IkGGjVDyabQSxQmCRc', 4027, 73, 'IV', 'SILVER', 'peñita', 'peñita', 54, 50, 'SneezorSneezorSneezorSneezor');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `partido`
--
ALTER TABLE `partido`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `equipo`
--
ALTER TABLE `equipo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `file`
--
ALTER TABLE `file`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `partido`
--
ALTER TABLE `partido`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
