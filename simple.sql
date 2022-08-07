-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220623.a68b47d354
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Авг 07 2022 г., 18:39
-- Версия сервера: 8.0.29
-- Версия PHP: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `simple`
--

-- --------------------------------------------------------

--
-- Структура таблицы `tasks`
--

CREATE TABLE `tasks` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `text`) VALUES
(22, '11113143114', '1111111111111111'),
(23, 'Первый пост', 'ШзшпизшгйкгщШзшпизшгйкгщШ зшпизшгйкгщ ШзшпизшгйкгщШзшпиз шгйк гщШзшпизшгйкгщШзшпизш гйкгщШзшпизш  кгщШзшп к гщШзшпизшгйкгщШзшп изшгйкгщШзшпи зшгйкгщШз шпизшгйкгщШ шгйкгщШзшпиз пи з шгйкгщШзшп изшгйкгщШзшпизшгйкгщШзшп зшгй кгщШзшп изшгйкгщШзш пизшгйкгщ Шзшпизшгй кгщШз шпизшгйкгщШзш пизшгйк щШзш пизшгйкгщШзшп изшгйкгщШ зшпизшгй кгщШзшпиз шгйкгщШ зшп изшгй кгщШзш пизшгйкгщ '),
(26, 'Второй пост222', 'ШзшпизшгйкгщШзшпизшгйкгщШ зшпизшгйкгщ ШзшпизшгйкгщШзшпиз шгйк гщШзшпизшгйкгщШзшпизш гйкгщШзшпизш  кгщШзшп к гщШзшпизшгйкгщШзшп изшгйкгщШзшпи зшгйкгщШз шпизшгйкгщШ шгйкгщШзшпиз пи з шгйкгщШзшп изшгйкгщШзшпизшгйкгщШзшп зшгй кгщШзшп изшгйкгщШзш пизшгйкгщ Шзшпизшгй кгщШз шпизшгйкгщШзш пизшгйк щШзш пизшгйкгщШзшп изшгйкгщШ зшпизшгй кгщШзшпиз шгйкгщШ зшп изшгй кгщШзш пизшгйкгщ '),
(28, 'Первый пост', 'ШзшпизшгйкгщШзшпизшгйкгщШ зшпизшгйкгщ ШзшпизшгйкгщШзшпиз шгйк гщШзшпизшгйкгщШзшпизш гйкгщШзшпизш  кгщШзшп к гщШзшпизшгйкгщШзшп изшгйкгщШзшпи зшгйкгщШз шпизшгйкгщШ шгйкгщШзшпиз пи з шгйкгщШзшп изшгйкгщШзшпизшгйкгщШзшп зшгй кгщШзшп изшгйкгщШзш пизшгйкгщ Шзшпизшгй кгщШз шпизшгйкгщШзш пизшгйк щШзш пизшгйкгщШзшп изшгйкгщШ зшпизшгй кгщШзшпиз шгйкгщШ зшп изшгй кгщШзш пизшгйкгщ '),
(30, 'Первый пост', 'ШзшпизшгйкгщШзшпизшгйкгщШ зшпизшгйкгщ ШзшпизшгйкгщШзшпиз шгйк гщШзшпизшгйкгщШзшпизш гйкгщШзшпизш  кгщШзшп к гщШзшпизшгйкгщШзшп изшгйкгщШзшпи зшгйкгщШз шпизшгйкгщШ шгйкгщШзшпиз пи з шгйкгщШзшп изшгйкгщШзшпизшгйкгщШзшп зшгй кгщШзшп изшгйкгщШзш пизшгйкгщ Шзшпизшгй кгщШз шпизшгйкгщШзш пизшгйк щШзш пизшгйкгщШзшп изшгйкгщШ зшпизшгй кгщШзшпиз шгйкгщШ зшп изшгй кгщШзш пизшгйкгщ '),
(31, 'Второй пост222', 'ШзшпизшгйкгщШзшпизшгйкгщШ зшпизшгйкгщ ШзшпизшгйкгщШзшпиз шгйк гщШзшпизшгйкгщШзшпизш гйкгщШзшпизш  кгщШзшп к гщШзшпизшгйкгщШзшп изшгйкгщШзшпи зшгйкгщШз шпизшгйкгщШ шгйкгщШзшпиз пи з шгйкгщШзшп изшгйкгщШзшпизшгйкгщШзшп зшгй кгщШзшп изшгйкгщШзш пизшгйкгщ Шзшпизшгй кгщШз шпизшгйкгщШзш пизшгйк щШзш пизшгйкгщШзшп изшгйкгщШ зшпизшгй кгщШзшпиз шгйкгщШ зшп изшгй кгщШзш пизшгйкгщ '),
(33, 'Первый пост', 'ШзшпизшгйкгщШзшпизшгйкгщШ зшпизшгйкгщ ШзшпизшгйкгщШзшпиз шгйк гщШзшпизшгйкгщШзшпизш гйкгщШзшпизш  кгщШзшп к гщШзшпизшгйкгщШзшп изшгйкгщШзшпи зшгйкгщШз шпизшгйкгщШ шгйкгщШзшпиз пи з шгйкгщШзшп изшгйкгщШзшпизшгйкгщШзшп зшгй кгщШзшп изшгйкгщШзш пизшгйкгщ Шзшпизшгй кгщШз шпизшгйкгщШзш пизшгйк щШзш пизшгйкгщШзшп изшгйкгщШ зшпизшгй кгщШзшпиз шгйкгщШ зшп изшгй кгщШзш пизшгйкгщ '),
(34, '2442411212121212', 'yовый текст'),
(35, 'Первый пост', 'ШзшпизшгйкгщШзшпизшгйкгщШ зшпизшгйкгщ ШзшпизшгйкгщШзшпиз шгйк гщШзшпизшгйкгщШзшпизш гйкгщШзшпизш  кгщШзшп к гщШзшпизшгйкгщШзшп изшгйкгщШзшпи зшгйкгщШз шпизшгйкгщШ шгйкгщШзшпиз пи з шгйкгщШзшп изшгйкгщШзшпизшгйкгщШзшп зшгй кгщШзшп изшгйкгщШзш пизшгйкгщ Шзшпизшгй кгщШз шпизшгйкгщШзш пизшгйк щШзш пизшгйкгщШзшп изшгйкгщШ зшпизшгй кгщШзшпиз шгйкгщШ зшп изшгй кгщШзш пизшгйкгщ '),
(36, 'Второй пост222', 'ШзшпизшгйкгщШзшпизшгйкгщШ зшпизшгйкгщ ШзшпизшгйкгщШзшпиз шгйк гщШзшпизшгйкгщШзшпизш гйкгщШзшпизш  кгщШзшп к гщШзшпизшгйкгщШзшп изшгйкгщШзшпи зшгйкгщШз шпизшгйкгщШ шгйкгщШзшпиз пи з шгйкгщШзшп изшгйкгщШзшпизшгйкгщШзшп зшгй кгщШзшп изшгйкгщШзш пизшгйкгщ Шзшпизшгй кгщШз шпизшгйкгщШзш пизшгйк щШзш пизшгйкгщШзшп изшгйкгщШ зшпизшгй кгщШзшпиз шгйкгщШ зшп изшгй кгщШзш пизшгйкгщ '),
(37, '11113143114', '1111111111111111'),
(38, 'Первый пост', 'ШзшпизшгйкгщШзшпизшгйкгщШ зшпизшгйкгщ ШзшпизшгйкгщШзшпиз шгйк гщШзшпизшгйкгщШзшпизш гйкгщШзшпизш  кгщШзшп к гщШзшпизшгйкгщШзшп изшгйкгщШзшпи зшгйкгщШз шпизшгйкгщШ шгйкгщШзшпиз пи з шгйкгщШзшп изшгйкгщШзшпизшгйкгщШзшп зшгй кгщШзшп изшгйкгщШзш пизшгйкгщ Шзшпизшгй кгщШз шпизшгйкгщШзш пизшгйк щШзш пизшгйкгщШзшп изшгйкгщШ зшпизшгй кгщШзшпиз шгйкгщШ зшп изшгй кгщШзш пизшгйкгщ '),
(40, 'Первый пост', 'ШзшпизшгйкгщШзшпизшгйкгщШ зшпизшгйкгщ ШзшпизшгйкгщШзшпиз шгйк гщШзшпизшгйкгщШзшпизш гйкгщШзшпизш  кгщШзшп к гщШзшпизшгйкгщШзшп изшгйкгщШзшпи зшгйкгщШз шпизшгйкгщШ шгйкгщШзшпиз пи з шгйкгщШзшп изшгйкгщШзшпизшгйкгщШзшп зшгй кгщШзшп изшгйкгщШзш пизшгйкгщ Шзшпизшгй кгщШз шпизшгйкгщШзш пизшгйк щШзш пизшгйкгщШзшп изшгйкгщШ зшпизшгй кгщШзшпиз шгйкгщШ зшп изшгй кгщШзш пизшгйкгщ '),
(41, 'Второй пост222', 'ШзшпизшгйкгщШзшпизшгйкгщШ зшпизшгйкгщ ШзшпизшгйкгщШзшпиз шгйк гщШзшпизшгйкгщШзшпизш гйкгщШзшпизш  кгщШзшп к гщШзшпизшгйкгщШзшп изшгйкгщШзшпи зшгйкгщШз шпизшгйкгщШ шгйкгщШзшпиз пи з шгйкгщШзшп изшгйкгщШзшпизшгйкгщШзшп зшгй кгщШзшп изшгйкгщШзш пизшгйкгщ Шзшпизшгй кгщШз шпизшгйкгщШзш пизшгйк щШзш пизшгйкгщШзшп изшгйкгщШ зшпизшгй кгщШзшпиз шгйкгщШ зшп изшгй кгщШзш пизшгйкгщ '),
(42, '11113143114', '1111111111111111'),
(45, 'Первый пост', 'ШзшпизшгйкгщШзшпизшгйкгщШ зшпизшгйкгщ ШзшпизшгйкгщШзшпиз шгйк гщШзшпизшгйкгщШзшпизш гйкгщШзшпизш  кгщШзшп к гщШзшпизшгйкгщШзшп изшгйкгщШзшпи зшгйкгщШз шпизшгйкгщШ шгйкгщШзшпиз пи з шгйкгщШзшп изшгйкгщШзшпизшгйкгщШзшп зшгй кгщШзшп изшгйкгщШзш пизшгйкгщ Шзшпизшгй кгщШз шпизшгйкгщШзш пизшгйк щШзш пизшгйкгщШзшп изшгйкгщШ зшпизшгй кгщШзшпиз шгйкгщШ зшп изшгй кгщШзш пизшгйкгщ '),
(48, 'Первый пост', 'ШзшпизшгйкгщШзшпизшгйкгщШ зшпизшгйкгщ ШзшпизшгйкгщШзшпиз шгйк гщШзшпизшгйкгщШзшпизш гйкгщШзшпизш  кгщШзшп к гщШзшпизшгйкгщШзшп изшгйкгщШзшпи зшгйкгщШз шпизшгйкгщШ шгйкгщШзшпиз пи з шгйкгщШзшп изшгйкгщШзшпизшгйкгщШзшп зшгй кгщШзшп изшгйкгщШзш пизшгйкгщ Шзшпизшгй кгщШз шпизшгйкгщШзш пизшгйк щШзш пизшгйкгщШзшп изшгйкгщШ зшпизшгй кгщШзшпиз шгйкгщШ зшп изшгй кгщШзш пизшгйкгщ '),
(49, '2442411212121212', 'yовый текст'),
(50, 'Первый пост', 'ШзшпизшгйкгщШзшпизшгйкгщШ зшпизшгйкгщ ШзшпизшгйкгщШзшпиз шгйк гщШзшпизшгйкгщШзшпизш гйкгщШзшпизш  кгщШзшп к гщШзшпизшгйкгщШзшп изшгйкгщШзшпи зшгйкгщШз шпизшгйкгщШ шгйкгщШзшпиз пи з шгйкгщШзшп изшгйкгщШзшпизшгйкгщШзшп зшгй кгщШзшп изшгйкгщШзш пизшгйкгщ Шзшпизшгй кгщШз шпизшгйкгщШзш пизшгйк щШзш пизшгйкгщШзшп изшгйкгщШ зшпизшгй кгщШзшпиз шгйкгщШ зшп изшгй кгщШзш пизшгйкгщ '),
(51, 'Второй пост222', 'ШзшпизшгйкгщШзшпизшгйкгщШ зшпизшгйкгщ ШзшпизшгйкгщШзшпиз шгйк гщШзшпизшгйкгщШзшпизш гйкгщШзшпизш  кгщШзшп к гщШзшпизшгйкгщШзшп изшгйкгщШзшпи зшгйкгщШз шпизшгйкгщШ шгйкгщШзшпиз пи з шгйкгщШзшп изшгйкгщШзшпизшгйкгщШзшп зшгй кгщШзшп изшгйкгщШзш пизшгйкгщ Шзшпизшгй кгщШз шпизшгйкгщШзш пизшгйк щШзш пизшгйкгщШзшп изшгйкгщШ зшпизшгй кгщШзшпиз шгйкгщШ зшп изшгй кгщШзш пизшгйкгщ '),
(52, '11113143114', '1111111111111111'),
(57, '11113143114', '1111111111111111'),
(58, 'Первый пост', 'ШзшпизшгйкгщШзшпизшгйкгщШ зшпизшгйкгщ ШзшпизшгйкгщШзшпиз шгйк гщШзшпизшгйкгщШзшпизш гйкгщШзшпизш  кгщШзшп к гщШзшпизшгйкгщШзшп изшгйкгщШзшпи зшгйкгщШз шпизшгйкгщШ шгйкгщШзшпиз пи з шгйкгщШзшп изшгйкгщШзшпизшгйкгщШзшп зшгй кгщШзшп изшгйкгщШзш пизшгйкгщ Шзшпизшгй кгщШз шпизшгйкгщШзш пизшгйк щШзш пизшгйкгщШзшп изшгйкгщШ зшпизшгй кгщШзшпиз шгйкгщШ зшп изшгй кгщШзш пизшгйкгщ '),
(59, '2442411212121212', 'yовый текст'),
(61, 'Второй пост222', 'ШзшпизшгйкгщШзшпизшгйкгщШ зшпизшгйкгщ ШзшпизшгйкгщШзшпиз шгйк гщШзшпизшгйкгщШзшпизш гйкгщШзшпизш  кгщШзшп к гщШзшпизшгйкгщШзшп изшгйкгщШзшпи зшгйкгщШз шпизшгйкгщШ шгйкгщШзшпиз пи з шгйкгщШзшп изшгйкгщШзшпизшгйкгщШзшп зшгй кгщШзшп изшгйкгщШзш пизшгйкгщ Шзшпизшгй кгщШз шпизшгйкгщШзш пизшгйк щШзш пизшгйкгщШзшп изшгйкгщШ зшпизшгй кгщШзшпиз шгйкгщШ зшп изшгй кгщШзш пизшгйкгщ '),
(62, '11113143114', '1111111111111111'),
(63, 'Первый пост', 'ШзшпизшгйкгщШзшпизшгйкгщШ зшпизшгйкгщ ШзшпизшгйкгщШзшпиз шгйк гщШзшпизшгйкгщШзшпизш гйкгщШзшпизш  кгщШзшп к гщШзшпизшгйкгщШзшп изшгйкгщШзшпи зшгйкгщШз шпизшгйкгщШ шгйкгщШзшпиз пи з шгйкгщШзшп изшгйкгщШзшпизшгйкгщШзшп зшгй кгщШзшп изшгйкгщШзш пизшгйкгщ Шзшпизшгй кгщШз шпизшгйкгщШзш пизшгйк щШзш пизшгйкгщШзшп изшгйкгщШ зшпизшгй кгщШзшпиз шгйкгщШ зшп изшгй кгщШзш пизшгйкгщ '),
(64, '2442411212121212', 'yовый текст'),
(65, 'Первый пост', 'ШзшпизшгйкгщШзшпизшгйкгщШ зшпизшгйкгщ ШзшпизшгйкгщШзшпиз шгйк гщШзшпизшгйкгщШзшпизш гйкгщШзшпизш  кгщШзшп к гщШзшпизшгйкгщШзшп изшгйкгщШзшпи зшгйкгщШз шпизшгйкгщШ шгйкгщШзшпиз пи з шгйкгщШзшп изшгйкгщШзшпизшгйкгщШзшп зшгй кгщШзшп изшгйкгщШзш пизшгйкгщ Шзшпизшгй кгщШз шпизшгйкгщШзш пизшгйк щШзш пизшгйкгщШзшп изшгйкгщШ зшпизшгй кгщШзшпиз шгйкгщШ зшп изшгй кгщШзш пизшгйкгщ '),
(66, 'Второй пост222', 'ШзшпизшгйкгщШзшпизшгйкгщШ зшпизшгйкгщ ШзшпизшгйкгщШзшпиз шгйк гщШзшпизшгйкгщШзшпизш гйкгщШзшпизш  кгщШзшп к гщШзшпизшгйкгщШзшп изшгйкгщШзшпи зшгйкгщШз шпизшгйкгщШ шгйкгщШзшпиз пи з шгйкгщШзшп изшгйкгщШзшпизшгйкгщШзшп зшгй кгщШзшп изшгйкгщШзш пизшгйкгщ Шзшпизшгй кгщШз шпизшгйкгщШзш пизшгйк щШзш пизшгйкгщШзшп изшгйкгщШ зшпизшгй кгщШзшпиз шгйкгщШ зшп изшгй кгщШзш пизшгйкгщ '),
(67, '11113143114', '1111111111111111'),
(68, 'Первый пост', 'ШзшпизшгйкгщШзшпизшгйкгщШ зшпизшгйкгщ ШзшпизшгйкгщШзшпиз шгйк гщШзшпизшгйкгщШзшпизш гйкгщШзшпизш  кгщШзшп к гщШзшпизшгйкгщШзшп изшгйкгщШзшпи зшгйкгщШз шпизшгйкгщШ шгйкгщШзшпиз пи з шгйкгщШзшп изшгйкгщШзшпизшгйкгщШзшп зшгй кгщШзшп изшгйкгщШзш пизшгйкгщ Шзшпизшгй кгщШз шпизшгйкгщШзш пизшгйк щШзш пизшгйкгщШзшп изшгйкгщШ зшпизшгй кгщШзшпиз шгйкгщШ зшп изшгй кгщШзш пизшгйкгщ '),
(69, '2442411212121212', 'yовый текст'),
(70, 'Первый пост', 'ШзшпизшгйкгщШзшпизшгйкгщШ зшпизшгйкгщ ШзшпизшгйкгщШзшпиз шгйк гщШзшпизшгйкгщШзшпизш гйкгщШзшпизш  кгщШзшп к гщШзшпизшгйкгщШзшп изшгйкгщШзшпи зшгйкгщШз шпизшгйкгщШ шгйкгщШзшпиз пи з шгйкгщШзшп изшгйкгщШзшпизшгйкгщШзшп зшгй кгщШзшп изшгйкгщШзш пизшгйкгщ Шзшпизшгй кгщШз шпизшгйкгщШзш пизшгйк щШзш пизшгйкгщШзшп изшгйкгщШ зшпизшгй кгщШзшпиз шгйкгщШ зшп изшгй кгщШзш пизшгйкгщ '),
(71, 'Второй пост222', 'ШзшпизшгйкгщШзшпизшгйкгщШ зшпизшгйкгщ ШзшпизшгйкгщШзшпиз шгйк гщШзшпизшгйкгщШзшпизш гйкгщШзшпизш  кгщШзшп к гщШзшпизшгйкгщШзшп изшгйкгщШзшпи зшгйкгщШз шпизшгйкгщШ шгйкгщШзшпиз пи з шгйкгщШзшп изшгйкгщШзшпизшгйкгщШзшп зшгй кгщШзшп изшгйкгщШзш пизшгйкгщ Шзшпизшгй кгщШз шпизшгйкгщШзш пизшгйк щШзш пизшгйкгщШзшп изшгйкгщШ зшпизшгй кгщШзшпиз шгйкгщШ зшп изшгй кгщШзш пизшгйкгщ '),
(73, 'Первый пост', 'ШзшпизшгйкгщШзшпизшгйкгщШ зшпизшгйкгщ ШзшпизшгйкгщШзшпиз шгйк гщШзшпизшгйкгщШзшпизш гйкгщШзшпизш  кгщШзшп к гщШзшпизшгйкгщШзшп изшгйкгщШзшпи зшгйкгщШз шпизшгйкгщШ шгйкгщШзшпиз пи з шгйкгщШзшп изшгйкгщШзшпизшгйкгщШзшп зшгй кгщШзшп изшгйкгщШзш пизшгйкгщ Шзшпизшгй кгщШз шпизшгйкгщШзш пизшгйк щШзш пизшгйкгщШзшп изшгйкгщШ зшпизшгй кгщШзшпиз шгйкгщШ зшп изшгй кгщШзш пизшгйкгщ '),
(74, '2442411212121212', 'yовый текст'),
(76, 'Второй пост222', 'ШзшпизшгйкгщШзшпизшгйкгщШ зшпизшгйкгщ ШзшпизшгйкгщШзшпиз шгйк гщШзшпизшгйкгщШзшпизш гйкгщШзшпизш  кгщШзшп к гщШзшпизшгйкгщШзшп изшгйкгщШзшпи зшгйкгщШз шпизшгйкгщШ шгйкгщШзшпиз пи з шгйкгщШзшп изшгйкгщШзшпизшгйкгщШзшп зшгй кгщШзшп изшгйкгщШзш пизшгйкгщ Шзшпизшгй кгщШз шпизшгйкгщШзш пизшгйк щШзш пизшгйкгщШзшп изшгйкгщШ зшпизшгй кгщШзшпиз шгйкгщШ зшп изшгй кгщШзш пизшгйкгщ '),
(79, '2442411212121212', 'yовый текст'),
(80, 'Первый пост', 'ШзшпизшгйкгщШзшпизшгйкгщШ зшпизшгйкгщ ШзшпизшгйкгщШзшпиз шгйк гщШзшпизшгйкгщШзшпизш гйкгщШзшпизш  кгщШзшп к гщШзшпизшгйкгщШзшп изшгйкгщШзшпи зшгйкгщШз шпизшгйкгщШ шгйкгщШзшпиз пи з шгйкгщШзшп изшгйкгщШзшпизшгйкгщШзшп зшгй кгщШзшп изшгйкгщШзш пизшгйкгщ Шзшпизшгй кгщШз шпизшгйкгщШзш пизшгйк щШзш пизшгйкгщШзшп изшгйкгщШ зшпизшгй кгщШзшпиз шгйкгщШ зшп изшгй кгщШзш пизшгйкгщ '),
(81, 'Второй пост222', 'ШзшпизшгйкгщШзшпизшгйкгщШ зшпизшгйкгщ ШзшпизшгйкгщШзшпиз шгйк гщШзшпизшгйкгщШзшпизш гйкгщШзшпизш  кгщШзшп к гщШзшпизшгйкгщШзшп изшгйкгщШзшпи зшгйкгщШз шпизшгйкгщШ шгйкгщШзшпиз пи з шгйкгщШзшп изшгйкгщШзшпизшгйкгщШзшп зшгй кгщШзшп изшгйкгщШзш пизшгйкгщ Шзшпизшгй кгщШз шпизшгйкгщШзш пизшгйк щШзш пизшгйкгщШзшп изшгйкгщШ зшпизшгй кгщШзшпиз шгйкгщШ зшп изшгй кгщШзш пизшгйкгщ '),
(82, '11113143114', '1111111111111111'),
(83, 'Первый пост', 'ШзшпизшгйкгщШзшпизшгйкгщШ зшпизшгйкгщ ШзшпизшгйкгщШзшпиз шгйк гщШзшпизшгйкгщШзшпизш гйкгщШзшпизш  кгщШзшп к гщШзшпизшгйкгщШзшп изшгйкгщШзшпи зшгйкгщШз шпизшгйкгщШ шгйкгщШзшпиз пи з шгйкгщШзшп изшгйкгщШзшпизшгйкгщШзшп зшгй кгщШзшп изшгйкгщШзш пизшгйкгщ Шзшпизшгй кгщШз шпизшгйкгщШзш пизшгйк щШзш пизшгйкгщШзшп изшгйкгщШ зшпизшгй кгщШзшпиз шгйкгщШ зшп изшгй кгщШзш пизшгйкгщ '),
(84, '2442411212121212', 'yовый текст'),
(85, 'Первый пост', 'ШзшпизшгйкгщШзшпизшгйкгщШ зшпизшгйкгщ ШзшпизшгйкгщШзшпиз шгйк гщШзшпизшгйкгщШзшпизш гйкгщШзшпизш  кгщШзшп к гщШзшпизшгйкгщШзшп изшгйкгщШзшпи зшгйкгщШз шпизшгйкгщШ шгйкгщШзшпиз пи з шгйкгщШзшп изшгйкгщШзшпизшгйкгщШзшп зшгй кгщШзшп изшгйкгщШзш пизшгйкгщ Шзшпизшгй кгщШз шпизшгйкгщШзш пизшгйк щШзш пизшгйкгщШзшп изшгйкгщШ зшпизшгй кгщШзшпиз шгйкгщШ зшп изшгй кгщШзш пизшгйкгщ '),
(86, 'Второй пост222', 'ШзшпизшгйкгщШзшпизшгйкгщШ зшпизшгйкгщ ШзшпизшгйкгщШзшпиз шгйк гщШзшпизшгйкгщШзшпизш гйкгщШзшпизш  кгщШзшп к гщШзшпизшгйкгщШзшп изшгйкгщШзшпи зшгйкгщШз шпизшгйкгщШ шгйкгщШзшпиз пи з шгйкгщШзшп изшгйкгщШзшпизшгйкгщШзшп зшгй кгщШзшп изшгйкгщШзш пизшгйкгщ Шзшпизшгй кгщШз шпизшгйкгщШзш пизшгйк щШзш пизшгйкгщШзшп изшгйкгщШ зшпизшгй кгщШзшпиз шгйкгщШ зшп изшгй кгщШзш пизшгйкгщ '),
(88, 'Первый пост', 'ШзшпизшгйкгщШзшпизшгйкгщШ зшпизшгйкгщ ШзшпизшгйкгщШзшпиз шгйк гщШзшпизшгйкгщШзшпизш гйкгщШзшпизш  кгщШзшп к гщШзшпизшгйкгщШзшп изшгйкгщШзшпи зшгйкгщШз шпизшгйкгщШ шгйкгщШзшпиз пи з шгйкгщШзшп изшгйкгщШзшпизшгйкгщШзшп зшгй кгщШзшп изшгйкгщШзш пизшгйкгщ Шзшпизшгй кгщШз шпизшгйкгщШзш пизшгйк щШзш пизшгйкгщШзшп изшгйкгщШ зшпизшгй кгщШзшпиз шгйкгщШ зшп изшгй кгщШзш пизшгйкгщ '),
(89, '2442411212121212', 'yовый текст'),
(90, 'Первый пост', 'ШзшпизшгйкгщШзшпизшгйкгщШ зшпизшгйкгщ ШзшпизшгйкгщШзшпиз шгйк гщШзшпизшгйкгщШзшпизш гйкгщШзшпизш  кгщШзшп к гщШзшпизшгйкгщШзшп изшгйкгщШзшпи зшгйкгщШз шпизшгйкгщШ шгйкгщШзшпиз пи з шгйкгщШзшп изшгйкгщШзшпизшгйкгщШзшп зшгй кгщШзшп изшгйкгщШзш пизшгйкгщ Шзшпизшгй кгщШз шпизшгйкгщШзш пизшгйк щШзш пизшгйкгщШзшп изшгйкгщШ зшпизшгй кгщШзшпиз шгйкгщШ зшп изшгй кгщШзш пизшгйкгщ '),
(91, 'Второй пост222', 'ШзшпизшгйкгщШзшпизшгйкгщШ зшпизшгйкгщ ШзшпизшгйкгщШзшпиз шгйк гщШзшпизшгйкгщШзшпизш гйкгщШзшпизш  кгщШзшп к гщШзшпизшгйкгщШзшп изшгйкгщШзшпи зшгйкгщШз шпизшгйкгщШ шгйкгщШзшпиз пи з шгйкгщШзшп изшгйкгщШзшпизшгйкгщШзшп зшгй кгщШзшп изшгйкгщШзш пизшгйкгщ Шзшпизшгй кгщШз шпизшгйкгщШзш пизшгйк щШзш пизшгйкгщШзшп изшгйкгщШ зшпизшгй кгщШзшпиз шгйкгщШ зшп изшгй кгщШзш пизшгйкгщ ');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



