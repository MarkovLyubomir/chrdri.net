-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 18 яну 2019 в 10:45
-- Версия на сървъра: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Структура на таблица `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `category_id`) VALUES
(1, 'Article 1', 'Asdasdsad', 1),
(2, 'Article 2', 'dasd  awdw dw', 2),
(3, 'Article 3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2),
(4, 'Article 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sit amet massa tortor. Aliquam erat volutpat. Fusce semper in lacus vitae sagittis. Suspendisse egestas erat et mi fermentum gravida id sit amet lectus. Quisque dapibus elit sit amet ante accumsan, dignissim cursus nisl pretium. Donec feugiat tempus diam, quis eleifend augue iaculis sit amet. Praesent lectus magna, faucibus non efficitur eu, placerat et mi. Nullam tincidunt urna eget lacus consequat, quis faucibus est venenatis. Sed et tortor congue, vestibulum magna at, commodo quam. Proin consequat accumsan mi porta consequat. Praesent scelerisque pretium tellus, at hendrerit tellus.\r\n\r\nInteger sagittis augue et bibendum tempor. Proin nec imperdiet nulla. Curabitur at risus semper, condimentum massa ac, auctor orci. Nunc tincidunt libero quis purus vestibulum feugiat. Fusce sed nisl et eros egestas tincidunt in scelerisque sapien. Mauris fermentum varius enim in scelerisque. Suspendisse ac magna odio. Nulla facilisi. Nulla porta mollis erat quis lacinia.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc velit sapien, dapibus eu nibh id, convallis eleifend sapien. Quisque eu finibus dolor, id sollicitudin mauris. Quisque imperdiet lacinia sapien at euismod. Aliquam erat volutpat. Sed nec convallis dui. Ut velit lorem, rutrum ac lectus ornare, cursus pretium velit. Aenean rutrum mi sit amet consectetur lobortis. Suspendisse semper lectus et rutrum sodales. Maecenas id sem eget lacus consequat ornare ut sagittis metus. Fusce iaculis est eu sodales gravida. Aenean in neque blandit, auctor nulla eget, ultrices diam. Quisque rutrum diam quis lectus mollis sagittis. Vivamus quis volutpat leo.', 1);

-- --------------------------------------------------------

--
-- Структура на таблица `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'News'),
(2, 'Documents');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
