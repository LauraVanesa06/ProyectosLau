-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-11-2023 a las 18:57:04
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `vuelos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `comentario` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `nombre`, `comentario`, `fecha`) VALUES
(1, '', '', '2023-10-26 21:32:29'),
(2, 'dewar', 'prueba', '2023-10-26 21:35:40'),
(3, 'dewar', 'prueba', '2023-10-26 21:36:09'),
(4, 'dewar', 'prueba\r\n', '2023-10-26 21:40:30'),
(5, 'fghj', 'edrfgtyh', '2023-10-27 18:17:16'),
(6, '', '', '2023-10-27 18:17:43'),
(7, '', '', '2023-10-27 18:20:10'),
(8, 'fghj', 'edrfgtyh', '2023-10-27 18:20:17'),
(9, 'jesus', 'ese proyecto papu esta bueno', '2023-10-27 18:35:14'),
(10, 'Laura', 'fedc', '2023-10-31 00:59:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `ID_Estado` int(10) NOT NULL,
  `NomEstadoVuelo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `info_vuelos`
--

CREATE TABLE `info_vuelos` (
  `Precio` int(10) NOT NULL,
  `Horarios` varchar(4) NOT NULL,
  `Capacidad` int(5) NOT NULL,
  `ID_Vuelo` int(10) NOT NULL,
  `Destino` varchar(100) NOT NULL,
  `imagen` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `info_vuelos`
--

INSERT INTO `info_vuelos` (`Precio`, `Horarios`, `Capacidad`, `ID_Vuelo`, `Destino`, `imagen`) VALUES
(1000000, '11:1', 500, 32, 'Venezuela', '1698437556_a.png'),
(120, '20:5', 400, 33, 'colombia', '1698443470_1698436983_imagen3.jpg'),
(1, '11:1', 1, 34, 'Venezuela', '1698443626_google.png'),
(0, '12:0', 1, 35, 'a su corazon', '1698715163_descarga.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `ID_Vuelo` int(10) NOT NULL,
  `ID_Reserva` int(10) NOT NULL,
  `nombre` varchar(11) NOT NULL,
  `paisorigen` text NOT NULL,
  `paisdestino` text NOT NULL,
  `tipo` text NOT NULL,
  `fechaida` date NOT NULL,
  `fecharegreso` date NOT NULL,
  `Ntiquetes` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reserva`
--

INSERT INTO `reserva` (`ID_Vuelo`, `ID_Reserva`, `nombre`, `paisorigen`, `paisdestino`, `tipo`, `fechaida`, `fecharegreso`, `Ntiquetes`) VALUES
(1, 0, '0', '0', '0', '0', '0000-00-00', '0000-00-00', 0),
(2, 0, '0', '0', '0', '0', '0000-00-00', '0000-00-00', 3),
(3, 0, '0', '0', '0', '0', '2023-10-26', '2023-11-04', 2),
(4, 0, '0', '0', '0', '0', '2023-10-26', '2023-11-03', 2),
(5, 0, '0', '0', '0', '0', '2023-10-27', '2023-11-04', 2),
(6, 0, 'Laura Vanes', 'Colombia', 'Bogotá', 'on', '2023-10-27', '2023-11-02', 1),
(7, 0, 'Laura ', 'colombia', 'dfgmh', 'on', '2023-10-27', '2023-10-29', 2),
(8, 0, 'Laura de la', 'Colombia', 'asdfghjk', 'on', '2023-10-27', '2023-10-31', 3),
(9, 0, 'dfg', 'fgthj', 'bogota', 'on', '2023-10-27', '2023-11-02', 2),
(10, 0, 'dfgh', 'fgth', 'Bogota', 'on', '2023-10-27', '2023-11-02', 1),
(11, 0, 'sdfgh', 'dfghj', 'Bogota', 'on', '2023-10-27', '2023-11-01', 1),
(12, 0, 'Laura ', 'colombia', 'bogota', 'on', '2023-10-27', '2023-10-27', 8),
(13, 0, 'Laura ', 'colombia', 'bogota', 'on', '2023-10-27', '2023-10-27', 8),
(14, 0, 'fvb', 'df', 'Bogota', 'on', '2023-10-13', '2023-10-20', 1),
(15, 0, 'Laura ', 'colombia', 'bogota', 'on', '2023-10-01', '2023-10-28', 2),
(16, 0, 'Laura ', 'colombia', 'bogota', 'on', '2023-10-12', '2023-11-04', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo de usuario`
--

CREATE TABLE `tipo de usuario` (
  `ID_TipoUsu` int(10) NOT NULL,
  `Nom_Tipo_Usu` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ID_Usu` int(10) NOT NULL,
  `ID_TipoUsu` int(1) NOT NULL,
  `Nombre` text NOT NULL,
  `Apellido` text NOT NULL,
  `Correo` varchar(25) NOT NULL,
  `TDoc` varchar(30) NOT NULL,
  `pais` text NOT NULL,
  `f_nacimiento` date NOT NULL,
  `pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ID_Usu`, `ID_TipoUsu`, `Nombre`, `Apellido`, `Correo`, `TDoc`, `pais`, `f_nacimiento`, `pass`) VALUES
(456789, 3, 'Sara', 'Castro', 'dfg@gmail.cim', '', 'Medellin', '2023-10-06', '$2y$10$HfZ7y0vcWw7qDUwQBY7dmuOfO/jcLVXuMsXRL/TbJ6L3Y7ckV9AwG'),
(14224930, 3, 'aLIX', 'HERÁNDEZ', 'ALXIX@GMZIL.XCVB', '', 'VENEZUELA', '2023-10-06', '$2y$10$XCsHqNBy/MGZSkhTyDnf6embcNAU4HphjupsJJtcCmw8I6pG4te2i'),
(1042249249, 1, 'Laura Vanesa', 'De la Hoz', 'lvanesa@gmail.com', '', 'Colombia', '2023-10-26', '$2y$10$BaJGFccMXrr1ki.hz0i1teH2BnX1LPh0q9LrIZEtRDvpCKp31th.O'),
(1042250742, 3, 'Omar', 'martinez', 'om2676@gmail.com', '', 'Colombia', '2023-10-06', '$2y$10$BlcozWCDFUeJW1kymPFdHe2kKD09824jWEqO1tvvfI9lLlawFtwte'),
(1043436816, 3, 'Dewar Stid', 'Madariaga Pineda', 'dewarpineda@gmail.com', '', 'Colombia', '2004-10-16', '$2y$10$ANr55UKRPiyjecIvcseM3u5YybZRJ6pa3Xh3HUlJ2JZY1eaOc1wKO'),
(1043441495, 3, 'Victor ', 'Perez', 'victorperez@idetp.edu.co', '', 'Colombia', '2006-05-24', '$2y$10$3e8Qz9sQS1xIWllC27Dwh.CSndius4en5boj6LIotsnxsbiffpP.2'),
(1044618949, 1, 'Jesús David', 'Cárdenas vargas', 'jesuscardenas@idetp.edu.c', '', 'Colombia', '2006-10-01', '$2y$10$JHtJvpwCtbVaSTXN/KykTOM6kMv8rhAR/CYqOMGN1sPoleapSW1KK'),
(1111111111, 3, 'Jesùs Adriàn', 'Càrdenas Vargas', 'jesu@owo.com', '', 'Venezuela', '2023-10-05', '$2y$10$/Zs5V1TdRQ43lJ2PjrzlquJ0OWqEJZ/8zA3mMUxcgk0L0YxcenQ4i'),
(1420011159, 3, 'Manchitas sofia', 'De la Hoz Martinez', 'lvanesa@gmail', '', 'Colombia', '2014-03-27', '$2y$10$Ct2GrAvvaykOlwFwnGF6Nee0n0avFfXC1tQfD/OqeI5gK97IxYKUS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vuelos`
--

CREATE TABLE `vuelos` (
  `ID_Vuelo` int(10) NOT NULL,
  `Avión` int(50) NOT NULL,
  `Capacidad` int(3) NOT NULL,
  `ID_Estado` int(10) NOT NULL,
  `Piloto` varchar(30) NOT NULL,
  `ID_Usu` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`ID_Estado`);

--
-- Indices de la tabla `info_vuelos`
--
ALTER TABLE `info_vuelos`
  ADD PRIMARY KEY (`ID_Vuelo`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`ID_Vuelo`);

--
-- Indices de la tabla `tipo de usuario`
--
ALTER TABLE `tipo de usuario`
  ADD PRIMARY KEY (`ID_TipoUsu`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ID_Usu`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `info_vuelos`
--
ALTER TABLE `info_vuelos`
  MODIFY `ID_Vuelo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `ID_Vuelo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
