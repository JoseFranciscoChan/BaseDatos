-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-11-2021 a las 03:58:51
-- Versión del servidor: 10.4.20-MariaDB-log
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `agenda2022`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eactividad`
--

CREATE TABLE `eactividad` (
  `AId_Actividad` int(11) NOT NULL,
  `ANombre` varchar(50) NOT NULL,
  `ADescripcion` text NOT NULL,
  `AId_Fecha` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `eactividad`
--

INSERT INTO `eactividad` (`AId_Actividad`, `ANombre`, `ADescripcion`, `AId_Fecha`) VALUES
(1, 'Aplica examen', 'Según el calendario de exámenes, toca examen', 1),
(2, 'Reunion', 'Primera reunión', 2),
(3, 'Entrega de evidencias', 'Se ha asignado la fecha que permite la entrega de sus evidencias', 3),
(4, 'Reiscripcion', 'Único día para poder escribirse. ', 4),
(5, 'Entrega de prototipo', 'Único día para entregar su prototipo.', 5),
(6, 'Entrega de ideas de negocios', 'Podrán mostrar sus ideas a generar y aclarar ideas.', 6),
(7, 'Entrega de investigación', 'se realizar la entrega de sus investigaciónes', 7),
(8, 'Segunda reunion', 'se requiere la opinión durante la reunion ', 8),
(9, 'Inicio de clases', 'se inicia el periodo escolar', 9),
(10, 'practica de laboratorio ', 'Realización de la practica de laboratorio', 10),
(11, 'Entrega de proyectos', 'será el único día de entregas de proyectos ', 11),
(12, 'Entregas de resultados', 'obtendrán sus resultados finales ', 12),
(13, 'Tercera reunión', 'se propondrán nuevas ideas.', 13),
(14, 'cuarta reunión', 'entrega de primeras evidencias', 14),
(15, 'quinta reunion', 'se genera la entrega de prototipos', 15),
(16, 'Expo emprendedores ', 'tendrán que llevar su prototipo as expo 2022', 16),
(17, 'fiestas patrias', 'celebración ', 17),
(18, 'Dia de revolución Mexicana', 'Dia inhábil ', 18),
(19, 'Día de la madre ', 'celebración para todas las madres', 19),
(20, 'sesión en línea ', 'ultima clase se presenta examen', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `efecha`
--

CREATE TABLE `efecha` (
  `Aid_fecha` int(11) NOT NULL,
  `AAño` int(11) NOT NULL,
  `AMes` varchar(50) NOT NULL,
  `ADia` varchar(50) NOT NULL,
  `ANpmbreDia` varchar(50) NOT NULL,
  `Ainicio` time NOT NULL,
  `Afin` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `efecha`
--

INSERT INTO `efecha` (`Aid_fecha`, `AAño`, `AMes`, `ADia`, `ANpmbreDia`, `Ainicio`, `Afin`) VALUES
(1, 2022, 'Noviembre', '25', 'Viernes', '18:00:00', '21:00:00'),
(2, 2022, 'Enero', '20', 'Jueves', '13:00:00', '15:00:00'),
(3, 2022, 'marzo', '03', 'Jueves', '18:00:00', '21:00:00'),
(4, 2022, 'Mayo', '19', 'Jueves', '09:00:00', '21:00:00'),
(5, 2022, 'Mayo', '20', 'Viernes', '20:00:00', '21:00:00'),
(6, 2022, 'Agosto', '12', 'Viernes', '20:00:00', '21:00:00'),
(7, 2022, 'Enero', '06', 'Jueves', '12:00:00', '21:00:00'),
(8, 2022, 'Marzo', '09', 'Miércoles', '13:00:00', '15:00:00'),
(9, 2022, 'Febrero', '10', 'Jueves', '08:00:00', '13:00:00'),
(10, 2022, 'Agosto', '16', 'Martes', '13:00:00', '15:00:00'),
(11, 2022, 'Julio', '25', 'Lunes', '13:00:00', '21:00:00'),
(12, 2022, 'Marzo', '23', 'Miércoles', '13:00:00', '15:00:00'),
(13, 2022, 'Marzo', '31', 'Jueves', '13:00:00', '15:00:00'),
(14, 2022, 'Abril', '13', 'Miércoles', '20:00:00', '21:00:00'),
(15, 2022, 'Abril', '18', 'Lunes', '13:00:00', '15:00:00'),
(16, 2022, 'Noviembre', '28', 'Lunes', '13:00:00', '18:00:00'),
(17, 2022, 'Septiembre', '15', 'Jueves', '20:00:00', '23:00:00'),
(18, 2022, 'Noviembre', '20', 'Domingo', '20:00:00', '23:00:00'),
(19, 2022, 'Mayo', '10', 'Martes', '19:00:00', '22:00:00'),
(20, 2022, 'Noviembre', '25', 'Viernes', '18:00:00', '20:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `epersona`
--

CREATE TABLE `epersona` (
  `AId_persona` int(11) NOT NULL,
  `ANombre` varchar(50) NOT NULL,
  `AApellido` varchar(50) NOT NULL,
  `ATelefono` int(11) NOT NULL,
  `AEdad` int(11) NOT NULL,
  `Aid_actividad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `epersona`
--

INSERT INTO `epersona` (`AId_persona`, `ANombre`, `AApellido`, `ATelefono`, `AEdad`, `Aid_actividad`) VALUES
(1, 'Heribe F', 'Uribe Santiago', 1234567898, 25, 1),
(2, 'sds', 'asa', 48484, 28, 2),
(3, 'as', 'dff', 2324, 23, 3),
(4, 'we', 'sd', 4784478, 23, 4),
(5, 'gtg', 'ss', 777, 21, 5),
(6, 'jp', 'fr', 14566, 26, 6),
(7, 'fg', 'de', 4144, 25, 7),
(8, 'df', 'df', 2212, 22, 8),
(9, 'ff', 'dd', 44224, 21, 9),
(10, 'dfd', 'df', 51414, 21, 10),
(11, 'jg', 'de', 14515, 21, 11),
(12, 'sa', 'as', 18454, 24, 12),
(13, 'jd', 'sd', 5145, 24, 13),
(14, 'jf', 'ch', 1515, 21, 14),
(15, 'd', 'xc', 15165, 28, 15),
(16, 's', 'sd', 46546, 21, 16),
(17, 'e', 's', 22144, 21, 17),
(18, 'c', 'j', 1225, 20, 18),
(19, 'k', 'o', 4444, 20, 19),
(20, 'd', 'c', 222, 20, 20);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `eactividad`
--
ALTER TABLE `eactividad`
  ADD PRIMARY KEY (`AId_Actividad`);

--
-- Indices de la tabla `efecha`
--
ALTER TABLE `efecha`
  ADD PRIMARY KEY (`Aid_fecha`);

--
-- Indices de la tabla `epersona`
--
ALTER TABLE `epersona`
  ADD PRIMARY KEY (`AId_persona`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `efecha`
--
ALTER TABLE `efecha`
  MODIFY `Aid_fecha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
