-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-09-2020 a las 01:04:55
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cakephp_adsi_ajpb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `body` text DEFAULT NULL,
  `published` tinyint(1) DEFAULT 0,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `articles`
--

INSERT INTO `articles` (`id`, `user_id`, `title`, `slug`, `body`, `published`, `created`, `modified`) VALUES
(1, 1, 'First Post', 'first-post', 'This is the first post.', 1, '2020-09-24 00:55:36', '2020-09-24 00:55:36'),
(4, 1, 'Llantas MX MICHELIN  ', 'MICHELIN-STARCROSS-5-MEDIUM', 'MICHELIN  STARCROSS 5 MEDIUM.\r\nLas llantas de alto desempeño para motocross en terrenos mixtos y duros.\r\nTenemos 20 llantas para para rines delantero de 21 pulg.\r\nTenemos 20 llantas para para rines delantero de 17 pulg.\r\nprecio por unidad de llantas delanteras \"$98.000\" pesos\r\nprecio por unidad de llantas delanteras \"$90.000\" pesos', 0, '2020-09-24 21:29:14', '2020-09-24 21:31:53'),
(5, 1, 'Llantas SuperMoto', 'Llantas-SuperMoto', 'POWER SUPERMOTO\r\n\r\nLa línea para supermotos número 1 del mundo, creada con los mejores pilotos de la categoría para un desempeño, maniobrabilidad y adherencia sobresalientes.\r\nNos quedan 10 en bodega y estan en oferta al precio por unidad es de $120.000 pesos', 0, '2020-09-24 21:35:35', '2020-09-24 22:28:01'),
(6, 1, 'Llantas Automóvil', 'Llantas-Automovil', 'Obtén el mayor beneficio de tu auto deportivo con la llanta de competencia Michelin Pilot Sport Cup 2, desarrollada en conjunto con los fabricantes de los vehículos: Porsche 918 Spyder, Porsche 911 GT3, Ferrari 458 Speciale y AMG SLS Coupe Black Series.\r\nPrecio 250.000', 0, '2020-09-24 22:11:05', '2020-09-24 22:11:05'),
(7, 1, 'MICHELIN  PILOT SPORT 4', 'MICHELIN-PILOT-SPORT-4', 'Frena hasta 2m antes en piso mojado y hasta 1m. antes en piso seco*.\r\n\r\nPrueba sobre piso mojado* [%]\r\nFrenado en piso mojado\r\n- Frenos ABS\r\n- Intervalo de velocidad en la prueba: 80 a 20 km/h\r\n- Medición obtenida en base a equipos con tecnología GPS (V-box)\r\n- Pruebas realizadas en superficies con coeficiente de adherencia alto y bajo (dentro del rango permitido por el reglamento ECE R117)\r\nVelocidad de los competidores cuando la llanta MICHELIN Pilot Sport 4 se detuvo: 20 km/h.\r\nprecio 300.000', 0, '2020-09-24 22:13:53', '2020-09-24 22:13:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articles_tags`
--

CREATE TABLE `articles_tags` (
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `articles_tags`
--

INSERT INTO `articles_tags` (`article_id`, `tag_id`) VALUES
(4, 4),
(5, 3),
(6, 5),
(7, 2),
(7, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tags`
--

INSERT INTO `tags` (`id`, `title`, `created`, `modified`) VALUES
(2, 'Llantas michelin buen precio', '2020-09-24 22:24:45', '2020-09-24 22:24:45'),
(3, 'llantas para carreteras de pavimento ', '2020-09-24 22:25:26', '2020-09-24 22:26:41'),
(4, 'llantas de motocroos', '2020-09-24 22:27:07', '2020-09-24 22:27:07'),
(5, 'Porsche 918 Spyder, Porsche 911 GT3', '2020-09-24 22:30:07', '2020-09-24 22:30:07'),
(6, 'llantas con mejor frenado ', '2020-09-24 22:31:08', '2020-09-24 22:31:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `created`, `modified`) VALUES
(1, 'cakephp@example.com', '$2y$10$yE8uFBXTf4KTZjh0IxfhOOJBnmlJYszGmYoTzpqH8A9LNqTATK9.6', '2020-09-24 00:55:35', '2020-09-24 19:32:03'),
(2, 'ange.dt175@gmail.com', '$2y$10$cOsTNFgAHxa.FUBHsSJkquh9SkB0m71UHm3nUs6joB3mXSJKYJ1Am', '2020-09-24 19:25:21', '2020-09-24 19:25:21'),
(3, 'markis@gmail.com', '$2y$10$qs4QvMGI.RKFnirJa8LN6.I4aZzB6jJH8m3ZKYmBkaf3Mpo2TqMuS', '2020-09-24 20:29:10', '2020-09-24 20:29:10'),
(4, 'miguelrp@misena.edu.com', '12345678', NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `user_key` (`user_id`);

--
-- Indices de la tabla `articles_tags`
--
ALTER TABLE `articles_tags`
  ADD PRIMARY KEY (`article_id`,`tag_id`),
  ADD KEY `tag_key` (`tag_id`);

--
-- Indices de la tabla `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `user_key` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `articles_tags`
--
ALTER TABLE `articles_tags`
  ADD CONSTRAINT `article_key` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`),
  ADD CONSTRAINT `tag_key` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
