-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:4306
-- Generation Time: Jan 16, 2023 at 10:39 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `search_field`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `a_id` int(11) NOT NULL,
  `a_title` varchar(256) NOT NULL,
  `a_text` text NOT NULL,
  `a_author` varchar(256) NOT NULL,
  `a_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`a_id`, `a_title`, `a_text`, `a_author`, `a_date`) VALUES
(3, 'What You Need to Know About the Kraken Covid Variant', 'XBB.1.5, aka the Kraken, is sweeping the Northeast US and dodging immunity. But that doesn’t mean it’s time to panic.', 'AMANDA HOOVER', '2023-01-12'),
(4, 'Where the AI Art Boom Came From—and Where It’s Going', 'In the past year algorithms got a lot better at generating illustrations, art, and photo-real scenes. Next up? Video.', 'WILL KNIGHT', '2023-01-10'),
(5, 'Why the Search for Life in Space Starts With Ancient Earth', 'Need to estimate, from trillions of miles away, how likely another world is to host life? There’s a flowchart for that.', 'RAMIN SKIBBA', '2023-01-13'),
(6, 'ChatGPT Has Investors Drooling—but Can It Bring Home the Bacon?', 'The loquacious bot has Microsoft ready to sink a reported $10 billion into OpenAI. It’s unclear what products can be built on the technology.', 'WILL KNIGHT', '2023-01-13'),
(7, 'Let’s Go to Mars. Let’s Not Live There', 'Space agencies and companies aim to send people to the Red Planet. But settling there would be hell on—well, you know what we mean.', 'RAMIN SKIBBA', '2022-12-28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`a_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
