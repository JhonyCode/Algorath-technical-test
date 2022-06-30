-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 30-06-2022 a las 17:09:09
-- Versión del servidor: 8.0.29-0ubuntu0.20.04.3
-- Versión de PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Algorath`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220630095934', '2022-06-30 11:59:36', 433),
('DoctrineMigrations\\Version20220630104148', '2022-06-30 12:41:55', 42),
('DoctrineMigrations\\Version20220630105109', '2022-06-30 12:51:15', 180);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `refresh_tokens`
--

CREATE TABLE `refresh_tokens` (
  `id` int NOT NULL,
  `refresh_token` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valid` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `refresh_tokens`
--

INSERT INTO `refresh_tokens` (`id`, `refresh_token`, `username`, `valid`) VALUES
(1, 'dbdbf01617866a6b3283cbe6ded88421394502ac151faf1e3d6abe94ae2826096a4cc22bd903e5e386a69a0dde9eafc9ee44bb54c22d9e3c77bc60a45d35a372', 'Algorath', '2022-07-30 12:06:03'),
(2, 'cdc43daf147dc9b18e3590633b64dc2ad4bc7a55297f78f0244c12878e0ed75ffe54d4afcf05082d7d15f2434f2f7f3bf3ebd66135d36a4788d659d8c4b1fa2e', 'Algorath', '2022-07-30 12:18:50'),
(3, '23d26e5b840f8d4592ecd63903609017efe71a38534522ef9170ef49c261d1f59871c412da2f6fd8aa7e3e732c4bd44efb1093c27d35413c208f3bb2005ce3a9', 'Algorath', '2022-07-30 13:51:37'),
(4, '645480ccb75b68e958746dddab1356cd1a9f16f7819df20f78eac6f111904eaf02fbf583802bfff3451a2691649a4b947c16202519ac8e0924687867563d9dc3', 'Algorath', '2022-07-30 14:44:14'),
(5, '40f31bfa0cd839aa083afd12a6d402c3f168dcb104151f2d9d5f3614393644a9b6cabdeb374447ea1fab993e4f8ee6dd8f80538bc36659295339789f94d44c3a', 'Algorath', '2022-07-30 16:28:31'),
(6, '546c68a265245b79f4914bb9559ebe6efebb11f70f2e21cf1c144c923d7e5c658439c648a835afb3c82289239999c522aff33fec648ae763b1cea2f33e63b1e0', 'Algorath', '2022-07-30 16:30:03'),
(7, '2982ebbde2c6d3dd73bab3154f174c81a12af3da5b852fb59cff42ff3003e02a2980ed1b184d2ba4bc51675b160e18d823249cf33236c119bbdd7c36b7d05b86', 'Algorath', '2022-07-30 16:35:22'),
(8, 'be59173b2ec5e51af9727ebb4b5624b97c995eb99e749464ce3e896e2bc1dabc9d882e5cc319bd6d6f21346f3e491226097558c6065b874c6cef81cc1be0016f', 'Algorath', '2022-07-30 16:35:50'),
(9, 'a1793cc3517ee065b4a2c8077f5cac3d5c7b455f330efe73fa3b65826b0d09970f6db63e96af001185c78540e29f71fecdb40e5ff54e260090a60bb9b022ead6', 'Algorath', '2022-07-30 16:37:41'),
(10, '78f8c89bc69614172d0119e41cefb89ea8db29512c6d643e7c73f5cea8bbff1882d37c2dc2fcdc80732cfb1e9b14821dd2cf0873f5927f6d3bfc8d25795ad374', 'Algorath', '2022-07-30 16:38:29'),
(11, 'c5c688b1d04c6d50c27d56482326d8ef1d82a4ab0a5224e9d6d2e75270d8fa7801bf97e5c59e52e30cac39a0594bc5a0e4274fefcb06180e15fb2ba737fed42d', 'Algorath', '2022-07-30 16:54:29'),
(12, '7d38098088805fa1ae456b53e4cc453b14ed1360b760b02b0f4a4ea8f19aa20015b0de1f6a4da9ab21e66d1f43ec990df4f5f02a54db5f86ff6a867f6c0ed266', 'Algorath', '2022-07-30 17:03:35'),
(13, '5a42685573f35a52c0e563ed103852396cb8a75f993ee5104aa720d3c1176728eea22977bca7712a298aab07dcab9ed4c213be9f88824c5bae8959f03d1e4d0f', 'Algorath', '2022-07-30 17:04:59'),
(14, '8d07bdd2692cee4d0a3d549519ebd1c90f8c44aac53fa6480f2f53cadad95014ba6e37e76eb543d82c858a79a501701276d25f6ef1a039c04781d11d55bfe876', 'Algorath', '2022-07-30 17:08:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relations`
--

CREATE TABLE `relations` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `user_sons_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `relations`
--

INSERT INTO `relations` (`id`, `user_id`, `user_sons_id`) VALUES
(1, 3, 2),
(2, 2, 1),
(3, 1, 3),
(4, 2, 2),
(5, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relation_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `username`, `roles`, `password`, `avatar`, `relation_id`) VALUES
(1, 'Algorath', '[]', '$2y$13$O/oBxeTy8axZNAtjLvx05OQDNh3NJPkEhBRpGkkfyfRkAdwAqvOke', 'avatar1.png', 1),
(2, 'Algorath1', '[]', '$2y$13$O/oBxeTy8axZNAtjLvx05OQDNh3NJPkEhBRpGkkfyfRkAdwAqvOke', 'avatar2.png', 2),
(3, 'Algorath2', '[]', '$2y$13$O/oBxeTy8axZNAtjLvx05OQDNh3NJPkEhBRpGkkfyfRkAdwAqvOke', 'avatar1.png', 4),
(25, 'Algorath3', '[]', '$2y$13$NSwDiVIUiiDUCwK6ufJnSOaugMoVquELgmKqhZ2PlREl6AatzMf7e', 'avatar2.png', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indices de la tabla `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Indices de la tabla `refresh_tokens`
--
ALTER TABLE `refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_9BACE7E1C74F2195` (`refresh_token`);

--
-- Indices de la tabla `relations`
--
ALTER TABLE `relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_146CBF78A76ED395` (`user_id`),
  ADD KEY `IDX_146CBF7827CB6C31` (`user_sons_id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`),
  ADD KEY `IDX_8D93D6493256915B` (`relation_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `refresh_tokens`
--
ALTER TABLE `refresh_tokens`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `relations`
--
ALTER TABLE `relations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `relations`
--
ALTER TABLE `relations`
  ADD CONSTRAINT `FK_146CBF7827CB6C31` FOREIGN KEY (`user_sons_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_146CBF78A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Filtros para la tabla `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_8D93D6493256915B` FOREIGN KEY (`relation_id`) REFERENCES `relations` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
