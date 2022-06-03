-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 03 2022 г., 19:30
-- Версия сервера: 10.4.21-MariaDB
-- Версия PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `iteh_var0`
--

-- --------------------------------------------------------

--
-- Структура таблицы `authors`
--

CREATE TABLE `authors` (
  `ID_Authors` int(10) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `authors`
--

INSERT INTO `authors` (`ID_Authors`, `name`) VALUES
(1, 'Jon Krakauer'),
(2, 'Stephen King'),
(3, 'J. K. Rowling'),
(4, 'John Grisham'),
(5, 'James Patterson');

-- --------------------------------------------------------

--
-- Структура таблицы `book_authors`
--

CREATE TABLE `book_authors` (
  `FID_book` int(10) NOT NULL,
  `FID_Authors` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `book_authors`
--

INSERT INTO `book_authors` (`FID_book`, `FID_Authors`) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 2),
(5, 3),
(6, 3),
(7, 4),
(8, 5),
(9, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `literature`
--

CREATE TABLE `literature` (
  `ID_Book` int(10) NOT NULL,
  `title` text DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `ISBN` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `number` text DEFAULT NULL,
  `publisher` text DEFAULT NULL,
  `literate` enum('Book','Journal','Newspaper') NOT NULL,
  `Fid_resourse` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `literature`
--

INSERT INTO `literature` (`ID_Book`, `title`, `quantity`, `ISBN`, `date`, `year`, `number`, `publisher`, `literate`, `Fid_resourse`) VALUES
(1, 'Into the Wild', 250, ' 2-266-11156-6', NULL, 2001, NULL, 'Villard', 'Book', 1),
(2, 'National Geographic Magazine', 15, ' 2-266-11156-10', '2008-12-12', NULL, '1', 'National Geographic', 'Journal', 1),
(3, 'It', 400, ' 2-266-11156-13', NULL, 1998, NULL, 'Villard', 'Book', 1),
(4, 'The Shining', 350, ' 2-266-11156-28', NULL, 2003, NULL, 'Doubleday', 'Book', 2),
(5, 'Fantastic Beasts: The Secrets of Dumbledore - The Original Screenplay', 800, ' 2-266-11156-99', NULL, 2007, NULL, 'Doubleday', 'Book', 3),
(6, 'Harry Potter and the Philosopher\'s Stone', 480, ' 2-266-11156-98', NULL, 2010, NULL, 'Doubleday', 'Book', 1),
(7, 'A Time to Kill', 250, ' 2-266-11156-56', NULL, 2013, NULL, 'Doubleday', 'Book', 2),
(8, 'Weekend Today', 15, ' 2-266-11156-77', '2015-08-01', NULL, '1', 'Weekend Today', 'Journal', 1),
(9, 'Weekend Today', 17, ' 2-266-11156-78', '2015-08-08', NULL, '2', 'Weekend Today', 'Journal', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `resourse`
--

CREATE TABLE `resourse` (
  `id_resourse` int(10) NOT NULL,
  `title_resourse` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `resourse`
--

INSERT INTO `resourse` (`id_resourse`, `title_resourse`) VALUES
(1, 'disk'),
(2, 'site'),
(3, 'radio');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`ID_Authors`);

--
-- Индексы таблицы `literature`
--
ALTER TABLE `literature`
  ADD PRIMARY KEY (`ID_Book`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
