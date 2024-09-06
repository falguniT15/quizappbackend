-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2024 at 09:02 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `answer_text` varchar(255) NOT NULL,
  `is_correct` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `question_id`, `answer_text`, `is_correct`) VALUES
(1, 1, 'Ice Hockey', 1),
(2, 1, 'Football', 0),
(3, 1, 'Basketball', 0),
(4, 1, 'Baseball', 0),
(5, 2, 'Ice Hockey', 1),
(6, 2, 'Soccer', 0),
(7, 2, 'Tennis', 0),
(8, 2, 'Cricket', 0),
(9, 3, '7', 0),
(10, 3, '9', 0),
(11, 3, '11', 1),
(12, 3, '12', 0),
(13, 4, 'Baseball', 0),
(14, 4, 'Soccer', 0),
(15, 4, 'Football', 1),
(16, 4, 'Volleyball', 0),
(17, 5, 'Badminton', 1),
(18, 5, 'Tennis', 0),
(19, 5, 'Squash', 0),
(20, 5, 'Table Tennis', 0),
(21, 6, 'Brazil', 0),
(22, 6, 'France', 1),
(23, 6, 'Germany', 0),
(24, 6, 'Argentina', 0),
(25, 7, '13', 0),
(26, 7, '15', 1),
(27, 7, '7', 0),
(28, 7, '11', 0),
(29, 8, 'Tennis', 0),
(30, 8, 'Soccer', 1),
(31, 8, 'Basketball', 0),
(32, 8, 'Golf', 0),
(33, 9, 'Beijing', 1),
(34, 9, 'London', 0),
(35, 9, 'Sydney', 0),
(36, 9, 'Athens', 0),
(37, 10, 'Babe Ruth', 0),
(38, 10, 'Hank Aaron', 0),
(39, 10, 'Barry Bonds', 1),
(40, 10, 'Alex Rodriguez', 0),
(41, 11, 'Michael Jordan', 0),
(42, 11, 'Kareem Abdul-Jabbar', 1),
(43, 11, 'LeBron James', 0),
(44, 11, 'Kobe Bryant', 0),
(45, 12, 'Mike Tyson', 0),
(46, 12, 'Muhammad Ali', 1),
(47, 12, 'Floyd Mayweather', 0),
(48, 12, 'George Foreman', 0),
(49, 13, 'Rio de Janeiro', 1),
(50, 13, 'Tokyo', 0),
(51, 13, 'Paris', 0),
(52, 13, 'Los Angeles', 0),
(53, 14, 'Nelson Mandela', 0),
(54, 14, 'Muhammad Ali', 1),
(55, 14, 'Michael Jordan', 0),
(56, 14, 'Jackie Robinson', 0),
(57, 15, '1896', 1),
(58, 15, '1900', 0),
(59, 15, '1920', 0),
(60, 15, '1936', 0),
(61, 16, '45 minutes', 0),
(62, 16, '60 minutes', 0),
(63, 16, '90 minutes', 1),
(64, 16, '120 minutes', 0),
(65, 17, 'Basketball', 0),
(66, 17, 'Baseball', 1),
(67, 17, 'Soccer', 0),
(68, 17, 'Tennis', 0),
(69, 18, '5', 0),
(70, 18, '6', 1),
(71, 18, '7', 0),
(72, 18, '8', 0),
(73, 19, '11', 0),
(74, 19, '13', 0),
(75, 19, '15', 1),
(76, 19, '17', 0),
(77, 20, 'Tennis', 0),
(78, 20, 'Basketball', 0),
(79, 20, 'Soccer', 1),
(80, 20, 'Cricket', 0),
(81, 21, 'Cristiano Ronaldo', 0),
(82, 21, 'Lionel Messi', 0),
(83, 21, 'Just Fontaine', 1),
(84, 21, 'Pelé', 0),
(85, 22, '1946', 1),
(86, 22, '1950', 0),
(87, 22, '1960', 0),
(88, 22, '1970', 0),
(89, 23, 'Kylian Mbappé', 0),
(90, 23, 'Harry Kane', 1),
(91, 23, 'Luka Modrić', 0),
(92, 23, 'Antoine Griezmann', 0),
(93, 24, 'USA', 0),
(94, 24, 'China', 1),
(95, 24, 'Russia', 0),
(96, 24, 'Great Britain', 0),
(97, 25, 'Usain Bolt', 1),
(98, 25, 'Tyson Gay', 0),
(99, 25, 'Yohan Blake', 0),
(100, 25, 'Justin Gatlin', 0),
(161, 26, 'Vincent van Gogh', 0),
(162, 26, 'Leonardo da Vinci', 1),
(163, 26, 'Pablo Picasso', 0),
(164, 26, 'Claude Monet', 0),
(165, 27, 'Oil paint', 0),
(166, 27, 'Marble', 1),
(167, 27, 'Watercolor', 0),
(168, 27, 'Charcoal', 0),
(169, 28, 'Impressionism', 0),
(170, 28, 'Surrealism', 1),
(171, 28, 'Cubism', 0),
(172, 28, 'Expressionism', 0),
(173, 29, 'Claude Monet', 0),
(174, 29, 'Edgar Degas', 0),
(175, 29, 'Vincent van Gogh', 1),
(176, 29, 'Henri Matisse', 0),
(177, 30, 'Oil painting', 0),
(178, 30, 'Fresco', 1),
(179, 30, 'Etching', 0),
(180, 30, 'Watercolor', 0),
(181, 31, 'Encaustic', 0),
(182, 31, 'Tempera', 1),
(183, 31, 'Acrylic', 0),
(184, 31, 'Oil', 0),
(185, 32, 'Michelangelo', 1),
(186, 32, 'Donatello', 0),
(187, 32, 'Bernini', 0),
(188, 32, 'Rodin', 0),
(189, 33, 'Realistic representation', 0),
(190, 33, 'Emotional expression', 0),
(191, 33, 'Geometric shapes and forms', 1),
(192, 33, 'Portraiture', 0),
(193, 34, 'Pointillism', 1),
(194, 34, 'Impasto', 0),
(195, 34, 'Stippling', 0),
(196, 34, 'Cross-hatching', 0),
(197, 35, 'Salvador Dalí', 1),
(198, 35, 'René Magritte', 0),
(199, 35, 'Marc Chagall', 0),
(200, 35, 'Joan Miró', 0),
(201, 36, 'Texture', 0),
(202, 36, 'Contrast', 1),
(203, 36, 'Color', 0),
(204, 36, 'Perspective', 0),
(205, 37, 'Cubism', 1),
(206, 37, 'Surrealism', 0),
(207, 37, 'Impressionism', 0),
(208, 37, 'Expressionism', 0),
(209, 38, 'Sgraffito', 1),
(210, 38, 'Collage', 0),
(211, 38, 'Monotype', 0),
(212, 38, 'Lithography', 0),
(213, 39, 'Mark Rothko', 1),
(214, 39, 'Jackson Pollock', 0),
(215, 39, 'Willem de Kooning', 0),
(216, 39, 'Franz Kline', 0),
(217, 40, 'Realism', 0),
(218, 40, 'Impressionism', 1),
(219, 40, 'Post-Impressionism', 0),
(220, 40, 'Symbolism', 0);

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `name`) VALUES
(1, 'Beginner'),
(2, 'Intermediate'),
(3, 'Professional');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `level_id` int(11) DEFAULT NULL,
  `question_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `subject_id`, `level_id`, `question_text`) VALUES
(1, 1, 1, 'What is the national sport of Canada?'),
(2, 1, 1, 'Which sport uses a puck?'),
(3, 1, 1, 'How many players are there on a soccer team?'),
(4, 1, 1, 'In which sport do you score touchdowns?'),
(5, 1, 1, 'Which sport is played with a shuttlecock?'),
(6, 1, 2, 'Which country won the FIFA World Cup in 2018?'),
(7, 1, 2, 'What is the maximum number of players on a rugby team?'),
(8, 1, 2, 'Which sport is known as \"The Beautiful Game\"?'),
(9, 1, 2, 'In which city were the 2008 Summer Olympics held?'),
(10, 1, 2, 'Who holds the record for the most home runs in Major League Baseball history?'),
(11, 1, 3, 'Who is the all-time leading scorer in the NBA?'),
(12, 1, 3, 'Which athlete is known as \"The Greatest\" in boxing?'),
(13, 1, 3, 'Which city hosted the 2016 Summer Olympics?'),
(14, 1, 3, 'Who is the only athlete to win the Nobel Peace Prize?'),
(15, 1, 3, 'In which year was the first modern Olympic Games held?'),
(16, 1, 1, 'What is the duration of a standard soccer match?'),
(17, 1, 1, 'In which sport is the term \"home run\" used?'),
(18, 1, 1, 'How many players are there on a standard volleyball team?'),
(19, 1, 1, 'What is the maximum number of players allowed on the field for each team in a rugby match?'),
(20, 1, 1, 'Which sport is known as \"the king of sports\"?'),
(21, 1, 3, 'Who holds the record for the most goals scored in a single World Cup tournament?'),
(22, 1, 3, 'In which year was the first NBA game played?'),
(23, 1, 3, 'Who won the FIFA World Cup Golden Boot in 2018?'),
(24, 1, 3, 'Which country won the most gold medals in the 2008 Beijing Olympics?'),
(25, 1, 3, 'Which athlete holds the record for the fastest 100m sprint?'),
(26, 3, 1, 'Who painted the Mona Lisa?'),
(27, 3, 1, 'What is the primary material used in sculptures?'),
(28, 3, 1, 'Which art movement is Salvador Dalí associated with?'),
(29, 3, 1, 'The Starry Night is a painting by which artist?'),
(30, 3, 1, 'What technique involves applying pigment to wet plaster?'),
(31, 3, 2, 'What is the term for a painting done on wood?'),
(32, 3, 2, 'Which famous artist created the sculpture \"David\" in marble?'),
(33, 3, 2, 'What is the primary focus of abstract art?'),
(34, 3, 2, 'What is the name of the technique where artists use small dots of color?'),
(35, 3, 2, 'Who is known for the painting \"The Persistence of Memory\"?'),
(36, 3, 3, 'The term \"chiaroscuro\" refers to the use of light and shadow to create what effect?'),
(37, 3, 3, 'Which art movement aimed to break away from traditional perspectives and was characterized by fragmented forms?'),
(38, 3, 3, 'What is the name of the art technique that involves scratching through a surface to reveal a lower layer?'),
(39, 3, 3, 'Who is known for the development of the color field painting technique?'),
(40, 3, 3, 'Which artistic movement was centered around the idea of capturing the effects of light on different surfaces?');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`) VALUES
(1, 'Sports'),
(2, 'Science & Technology'),
(3, 'Arts'),
(4, 'Politics');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `level_id` (`level_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`);

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `questions_ibfk_2` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
