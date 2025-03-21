-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Июн 23 2024 г., 20:15
-- Версия сервера: 10.4.28-MariaDB
-- Версия PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `Spotifyyy`
--

-- --------------------------------------------------------

--
-- Структура таблицы `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `artworkPath` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Дамп данных таблицы `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`) VALUES
(1, '505', 2, 2, 'Includies/3/img/artwork/el3.jpeg'),
(2, 'EP#5', 2, 2, 'Includies/3/img/artwork/el1.jpg'),
(3, '#1', 2, 4, 'Includies/3/img/artwork/el2.jpeg'),
(4, 'Nuclear Rap', 1, 4, 'Includies/3/img/artwork/tt1.jpeg'),
(5, '2rbina 2rista', 1, 4, 'Includies/3/img/artwork/tt2.jpeg'),
(6, 'Australopithecus', 1, 6, 'Includies/3/img/artwork/tt3.jpg'),
(7, 'Man-hours', 3, 9, 'Includies/3/img/artwork/DT3.jpeg'),
(8, 'Eyes are afraid', 3, 9, 'Includies/3/img/artwork/DT2.jpeg'),
(9, 'See Fig. 1', 3, 9, 'Includies/3/img/artwork/DT1.jpeg'),
(10, 'Kamnem po golove', 4, 9, 'Includies/3/img/artwork/KiSh1.jpeg'),
(11, 'Akustichesky Albom', 4, 9, 'Includies/3/img/artwork/KiSh2.jpeg'),
(12, 'Mutiny on the Ship', 4, 9, 'Includies/3/img/artwork/KiSh3.jpg'),
(13, 'Part of something bigger', 5, 10, 'Includies/3/img/artwork/VC1.jpeg'),
(14, 'Entertainment', 5, 10, 'Includies/3/img/artwork/VC2.jpeg'),
(15, 'Calm down and relax', 5, 10, 'Includies/3/img/artwork/VC3.jpeg');

-- --------------------------------------------------------

--
-- Структура таблицы `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Дамп данных таблицы `artists`
--

INSERT INTO `artists` (`id`, `name`) VALUES
(1, '2rbina 2rista'),
(2, 'Elektroforez'),
(3, 'Daite tank (!)'),
(4, 'Korol i Szut'),
(5, 'Valentin Strykalo');

-- --------------------------------------------------------

--
-- Структура таблицы `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Дамп данных таблицы `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Rock'),
(2, 'Synthpop'),
(3, 'Hip Hop'),
(4, 'Rapcore'),
(5, 'Classical'),
(6, 'Techno'),
(7, 'Jazz'),
(8, 'Folk'),
(9, 'Punk Rock'),
(10, 'Indie Rock');

-- --------------------------------------------------------

--
-- Структура таблицы `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Дамп данных таблицы `playlists`
--

INSERT INTO `playlists` (`id`, `name`, `owner`, `dateCreated`) VALUES
(10, 'test', 'levkovickata4', '2024-06-20 00:00:00'),
(11, '211', 'levkovickata4', '2024-06-20 00:00:00'),
(15, '1', 'levkovickata4', '2024-06-23 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `playlistSongs`
--

CREATE TABLE `playlistSongs` (
  `id` int(11) NOT NULL,
  `songId` int(11) NOT NULL,
  `playlistId` int(11) NOT NULL,
  `playlistOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Дамп данных таблицы `playlistSongs`
--

INSERT INTO `playlistSongs` (`id`, `songId`, `playlistId`, `playlistOrder`) VALUES
(20, 14, 10, 1),
(21, 1, 10, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `duration` varchar(8) NOT NULL,
  `path` varchar(500) NOT NULL,
  `albumOrder` int(11) NOT NULL,
  `plays` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Дамп данных таблицы `songs`
--

INSERT INTO `songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`) VALUES
(1, 'Paid', 3, 9, 2, '4:04', 'Includies/3/music/1DT1.mp3', 1, 7),
(2, 'Spam', 3, 9, 2, '3:41', 'Includies/3/music/2DT1.mp3', 2, 0),
(3, 'Have fan', 3, 9, 2, '3:03', 'Includies/3/music/3DT1.mp3', 3, 2),
(4, 'Sparks', 3, 9, 2, '4:49', 'Includies/3/music/4DT1.mp3', 4, 4),
(5, 'Friend', 3, 9, 2, '3:58', 'Includies/3/music/5DT1.mp3', 5, 3),
(6, 'Demons', 3, 9, 2, '2:20', 'Includies/3/music/6DT1.mp3', 6, 5),
(7, 'Courier', 3, 9, 2, '3:40', 'Includies/3/music/7DT1.mp3', 7, 5),
(8, 'Professional', 3, 7, 2, '3:39', 'Includies/3/music/1DT2.mp3', 1, 0),
(9, 'People', 3, 7, 2, '2:42', 'Includies/3/music/2DT2.mp3', 2, 2),
(10, 'Alternative', 3, 7, 2, '3:50', 'Includies/3/music/3DT2.mp3', 3, 3),
(11, 'Chance', 3, 7, 2, '3:28', 'Includies/3/music/4DT2.mp3', 4, 5),
(12, 'Fairy tales', 3, 7, 2, '3:36', 'Includies/3/music/5DT2.mp3', 5, 1),
(13, 'Mess', 3, 7, 2, '3:27', 'Includies/3/music/6DT2.mp3', 6, 1),
(14, 'Retro', 3, 7, 2, '1:47', 'Includies/3/music/7DT2.mp3', 7, 6),
(15, 'Voila', 3, 8, 2, '3:32', 'Includies/3/music/1DT3.mp3', 1, 2),
(16, 'Immunity', 3, 8, 2, '2:09', 'Includies/3/music/2DT3.mp3', 2, 3),
(17, 'Plague', 3, 8, 2, '4:14', 'Includies/3/music/3DT3.mp3', 3, 6),
(18, 'Smart', 3, 8, 2, '1:51', 'Includies/3/music/4DT3.mp3', 4, 5),
(19, 'Fanny', 3, 8, 2, '3:37', 'Includies/3/music/5DT3.mp3', 5, 3),
(20, 'Wave', 3, 8, 2, '3:36', 'Includies/3/music/6DT3.mp3', 6, 1),
(21, 'Sin', 3, 8, 2, '2:05', 'Includies/3/music/7DT3.mp3', 7, 6),
(22, '2rbina 2rista', 1, 4, 4, '3:23', 'Includies/3/music/1tt1.mp3', 1, 2),
(23, 'Blood bath', 1, 4, 4, '5:08', 'Includies/3/music/2tt1.mp3', 2, 3),
(24, 'Lycanthrope', 1, 4, 4, '3.17', 'Includies/3/music/3tt1.mp3', 3, 6),
(25, 'Cupid - messenger of Lucifer', 1, 4, 4, '4:05', 'Includies/3/music/4tt1.mp3', 4, 6),
(26, 'Finished', 1, 4, 4, '3:33', 'Includies/3/music/5tt1.mp3', 5, 7),
(27, 'Cannibal hookah', 1, 4, 4, '4:10', 'Includies/3/music/6tt1.mp3', 6, 5),
(28, 'Zombie', 1, 4, 4, '4:38', 'Includies/3/music/7tt1.mp3', 7, 2),
(29, 'Bad Boys', 1, 5, 4, '3:59', 'Includies/3/music/1tt2.mp3', 1, 3),
(30, 'Nuclear Rap', 1, 5, 4, '4:55', 'Includies/3/music/2tt2.mp3', 2, 2),
(31, 'Leaves', 1, 5, 4, '2:58', 'Includies/3/music/3tt2.mp3', 3, 1),
(32, 'Drug tester', 1, 5, 4, '4:58', 'Includies/3/music/4tt2.mp3', 4, 6),
(33, 'There is no need to bury us', 1, 5, 4, '3:56', 'Includies/3/music/5tt2.mp3', 5, 1),
(34, 'Ural Magic Tour', 1, 5, 4, '2:09', 'Includies/3/music/6tt2.mp3', 6, 1),
(35, 'Baron Saturday', 1, 6, 4, '3:30', 'Includies/3/music/1tt3.mp3', 1, 5),
(36, 'MoralFuck', 1, 6, 4, '2:38', 'Includies/3/music/2tt3.mp3', 2, 4),
(37, 'BA-BA-DOOK', 1, 6, 4, '3:32', 'Includies/3/music/3tt3.mp3', 3, 4),
(38, 'Mortal Kombat', 1, 6, 4, '4:01', 'Includies/3/music/4tt3.mp3', 4, 7),
(39, 'Khodynka', 2, 1, 2, '2:10', 'Includies/3/music/1el3.mp3', 1, 5),
(40, '505(It is easy to go crazy)', 2, 1, 2, '3:06', 'Includies/3/music/2el3.mp3', 2, 7),
(41, 'Late', 2, 1, 2, '2:55', 'Includies/3/music/3el3.mp3', 3, 19),
(42, 'Primrose', 2, 1, 2, '3:21', 'Includies/3/music/4el3.mp3', 4, 4),
(43, 'Evil', 2, 1, 2, '3:55', 'Includies/3/music/5el3.mp3', 5, 2),
(44, 'I cant help myself', 2, 1, 2, '4:32', 'Includies/3/music/6el3.mp3', 6, 3),
(45, 'Over broken mirrors', 2, 1, 2, '3:14', 'Includies/3/music/7el3.mp3', 7, 7),
(46, 'Fireworks', 2, 1, 2, '3:23', 'Includies/3/music/8el3.mp3', 8, 10),
(47, ' Alcohol is my enemy', 2, 1, 2, '2:47', 'Includies/3/music/9el3.mp3', 9, 3),
(48, 'It was like that', 2, 1, 2, '3:17', 'Includies/3/music/10el3.mp3', 10, 4),
(49, 'Friends (You and Me)', 2, 2, 2, '3:01', 'Includies/3/music/1el1.mp3', 1, 3),
(50, 'Jesus', 2, 2, 2, '4:11', 'Includies/3/music/2el1.mp3', 2, 3),
(51, 'Ikea', 2, 2, 2, '3:52', 'Includies/3/music/3el1.mp3', 3, 5),
(52, 'Relationships = shit', 2, 2, 2, '3:16', 'Includies/3/music/4el1.mp3', 4, 3),
(53, 'Bride', 2, 3, 2, '3:31', 'Includies/3/music/1el2.mp3', 1, 3),
(54, 'Yenisei', 2, 3, 2, '3:35', 'Includies/3/music/2el2.mp3', 2, 3),
(55, 'PPSh', 2, 3, 2, '2:44', 'Includies/3/music/3el2.mp3', 3, 6),
(56, 'Satan, go away!', 2, 3, 2, '3:18', 'Includies/3/music/4el2.mp3', 4, 3),
(57, 'Margaret', 2, 3, 2, '3:34', 'Includies/3/music/5el2.mp3', 5, 3),
(58, 'The daredevil and the wind', 4, 10, 9, '3:01', 'Includies/3/music/1KiSh1.mp3', 1, 4),
(59, 'Sudden head', 4, 10, 9, '2:25', 'Includies/3/music/2KiSh1.mp3', 2, 2),
(60, 'Blue ball', 4, 10, 9, '1:15', 'Includies/3/music/3KiSh1.mp3', 3, 1),
(61, 'Fisherman', 4, 10, 9, '1:17', 'Includies/3/music/4KiSh1.mp3', 4, 3),
(62, 'Cold body', 4, 10, 9, '2:41', 'Includies/3/music/5KiSh1.mp3', 5, 4),
(63, 'The Fool and the Lightning', 4, 10, 9, '1:54', 'Includies/3/music/6KiSh1.mp3', 6, 1),
(64, 'A stone to the head', 4, 10, 9, '2:38', 'Includies/3/music/7KiSh1.mp3', 7, 1),
(65, 'Sorcerer doll', 4, 11, 9, '3:24', 'Includies/3/music/1KiSh2.mp3', 1, 2),
(66, 'I wll jump off a cliff', 4, 11, 9, '3:13', 'Includies/3/music/2KiSh2.mp3', 2, 2),
(67, 'Pull!', 4, 11, 9, '2:56', 'Includies/3/music/3KiSh2.mp3', 3, 1),
(68, 'Morning sunrise', 4, 11, 9, '2:29', 'Includies/3/music/4KiSh2.mp3', 4, 2),
(69, 'Sausage', 4, 11, 9, '2:29', 'Includies/3/music/5KiSh2.mp3', 5, 1),
(70, 'Witch and Donkey', 4, 11, 9, '2:58', 'Includies/3/music/6KiSh2.mp3', 6, 8),
(71, 'The men ate meat (Bonus)', 4, 11, 9, '2:14', 'Includies/3/music/7KiSh2.mp3', 7, 1),
(72, 'The magic eye of old man Alons', 4, 12, 9, '1:37', 'Includies/3/music/1KiSh3.mp3', 1, 1),
(73, 'Confessions of a Vampire', 4, 12, 9, '3:35', 'Includies/3/music/2KiSh3.mp3', 2, 7),
(74, 'Harrys Revenge', 4, 12, 9, '3:08', 'Includies/3/music/3KiSh3.mp3', 3, 1),
(75, 'Idol', 4, 12, 9, '3:00', 'Includies/3/music/4KiSh3.mp3', 4, 1),
(76, 'Riot on the ship!', 4, 12, 9, '1:52', 'Includies/3/music/5KiSh3.mp3', 5, 2),
(77, 'Call', 4, 12, 9, '1:59', 'Includies/3/music/6KiSh3.mp3', 6, 1),
(78, 'Owner of the forest', 4, 12, 9, '3:08', 'Includies/3/music/7KiSh3.mp3', 7, 2),
(79, 'Office Hipster', 5, 13, 10, '2:15', 'Includies/3/music/1VC1.mp3', 1, 4),
(80, 'You know, Tanya', 5, 13, 10, '4:35', 'Includies/3/music/2VC1.mp3', 2, 11),
(81, 'Airplane Graveyard', 5, 13, 10, '5:54', 'Includies/3/music/3VC1.mp3', 3, 7),
(82, 'You are Not Like That', 5, 13, 10, '3:59', 'Includies/3/music/4VC1.mp3', 4, 1),
(83, 'Fuck you, Albina', 5, 13, 10, '2:48', 'Includies/3/music/5VC1.mp3', 5, 7),
(84, 'Steelworkers Street', 5, 13, 10, '4:19', 'Includies/3/music/6VC1.mp3', 6, 2),
(85, '92', 5, 14, 10, '3:50', 'Includies/3/music/1VC2.mp3', 1, 4),
(86, 'Useless', 5, 14, 10, '7:04', 'Includies/3/music/2VC2.mp3', 2, 2),
(87, 'Hotel Cooperator', 5, 15, 10, '3:56', 'Includies/3/music/1VC3.mp3', 1, 2),
(88, 'Funk', 5, 15, 10, '3:16', 'Includies/3/music/2VC3.mp3', 2, 2),
(89, 'Song For Girls', 5, 15, 10, '4:17', 'Includies/3/music/3VC3.mp3', 3, 6),
(90, 'Rustem', 5, 15, 10, '3:33', 'Includies/3/music/4VC3.mp3', 4, 5),
(91, '45 years', 5, 15, 10, '2:23', 'Includies/3/music/5VC3.mp3', 5, 1),
(92, 'Cayenne', 5, 15, 10, '2:57', 'Includies/3/music/6VC3.mp3', 6, 2),
(93, 'Only Once', 5, 15, 10, '2:12', 'Includies/3/music/7VC3.mp3', 7, 0),
(94, 'Seryozha', 5, 15, 10, '3:54', 'Includies/3/music/8VC3.mp3', 8, 2),
(95, 'May Day', 5, 15, 10, '3:40', 'Includies/3/music/9VC3.mp3', 9, 4),
(96, 'It is so warm', 5, 15, 10, '4:38', 'Includies/3/music/10VC3.mp3', 10, 2),
(97, 'Cheap Drams', 5, 15, 10, '3:43', 'Includies/3/music/11VC3.mp3', 11, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `Users`
--

CREATE TABLE `Users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `signup_date` datetime NOT NULL,
  `profile_pic` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Дамп данных таблицы `Users`
--

INSERT INTO `Users` (`id`, `username`, `firstname`, `lastname`, `email`, `password`, `signup_date`, `profile_pic`) VALUES
(4, 'levkovickata4', 'Kate', 'Levkovich', 'levkovickata4@gmail.com', 'bba7727453d16f19a43d22c3f7e7740c', '2024-06-18 00:00:00', '3/img/profile/user.png'),
(5, 'asdasd232', 'Kate', 'Levkovich', 'Levkovickata4@gmail.com', 'bba7727453d16f19a43d22c3f7e7740c', '2024-06-18 00:00:00', '3/img/profile/user.png'),
(6, 'levkovickata4', 'Kate', 'Levkovich', 'Levkovickata4@gmail.com', 'bba7727453d16f19a43d22c3f7e7740c', '2024-06-18 00:00:00', '3/img/profile/user.png'),
(7, 'asdasd232', 'Kate', 'Levkovich', 'Levkovickata4@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2024-06-19 00:00:00', '3/img/profile/user.png'),
(8, 'levkovickata4', 'Kate', 'Levkovich', 'Levkovickata4@gmail.com', 'bba7727453d16f19a43d22c3f7e7740c', '2024-06-19 00:00:00', '3/img/profile/user.png'),
(9, 'Levkovich', 'levkovich', '', 'levkovickata@gmail.com', '', '2024-06-19 23:57:27', 'Includies/3/img/profile-pics/user.png'),
(10, 'Levkovich', 'levkovich', '12345678', 'levkovickata@gmail.com', '12345678', '2024-06-19 23:57:27', 'Includies/3/img/profile-pics/user.png'),
(11, 'levkovickata4', 'Kate', 'Levkovich', 'S29858@pjwstk.edu.pl', '25d55ad283aa400af464c76d713c07ad', '2024-06-19 00:00:00', '3/img/profile/user.png'),
(12, 'levkovickata4', 'Kate', 'Levkovich', 'Kate25072006@gmail.com', '01310713aa3be324e7e24f9b69a2f3f1', '2024-06-23 00:00:00', '3/img/profile/user.png'),
(13, 'kate25072006', 'Kate', 'Levkovich', 'Kate25072006@gmail.com', '', '2024-06-23 00:00:00', '3/img/profile/user.png'),
(14, 'asdasd232', 'Kate', 'Levkovich', 'Kate25072006@gmail.com', 'kate25072006', '2024-06-23 00:00:00', '3/img/profile/user.png'),
(15, 'asdasd23233', 'Kate', 'Levkovich', 'Kate25072006@gmail.com', 'kate25072006', '2024-06-23 00:00:00', '3/img/profile/user.png');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `playlistSongs`
--
ALTER TABLE `playlistSongs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `playlistSongs`
--
ALTER TABLE `playlistSongs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT для таблицы `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
