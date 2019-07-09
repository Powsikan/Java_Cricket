-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2019 at 03:41 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cricket`
--

-- --------------------------------------------------------

--
-- Table structure for table `batting`
--

CREATE TABLE `batting` (
  `ID` int(11) NOT NULL,
  `M_ID` varchar(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Runs` int(11) NOT NULL,
  `Balls` int(11) NOT NULL,
  `6s` int(11) NOT NULL,
  `4s` int(11) NOT NULL,
  `Innings` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `batting`
--

INSERT INTO `batting` (`ID`, `M_ID`, `Name`, `Runs`, `Balls`, `6s`, `4s`, `Innings`) VALUES
(1, 'm1', 'Jason roy', 54, 53, 0, 8, 1),
(2, 'm1', 'Jonny Bairstow', 0, 1, 0, 0, 1),
(3, 'm1', 'Joy Root', 51, 59, 0, 5, 1),
(4, 'm1', 'Eoin morgan', 57, 60, 3, 4, 1),
(5, 'm1', 'Ben stoks', 89, 79, 0, 9, 1),
(6, 'm1', 'Jos buttler', 18, 16, 0, 0, 1),
(7, 'm1', 'Moeen Ali', 3, 9, 0, 0, 1),
(8, 'm1', 'liam Plunkett', 9, 6, 0, 1, 1),
(9, 'm1', 'Jofra Archer', 7, 3, 0, 1, 1),
(10, 'm1', 'Chris woakes', 13, 14, 0, 1, 1),
(11, 'm1', 'Q.de kock', 68, 74, 2, 6, 2),
(12, 'm1', 'H.Amla', 13, 23, 0, 4, 2),
(13, 'm1', 'A.markral', 11, 12, 0, 2, 2),
(14, 'm1', 'Faf du plessis', 5, 7, 0, 1, 2),
(15, 'm1', 'R.van der dussel', 50, 61, 1, 4, 2),
(16, 'm1', 'J.P Duminy', 8, 11, 0, 1, 2),
(17, 'm1', 'D.Pretorius', 1, 1, 0, 0, 2),
(18, 'm1', 'A.Phehlukwayo', 24, 25, 0, 4, 2),
(19, 'm1', 'K.Rabada', 11, 19, 0, 2, 2),
(20, 'm1', 'L.Ngidi', 6, 5, 1, 0, 2),
(21, 'm1', 'I.Tahir', 0, 1, 0, 0, 2),
(22, 'm2', 'Imam-ul-Haq', 2, 11, 0, 0, 1),
(23, 'm2', 'Fahkar Zaman', 22, 16, 1, 2, 1),
(24, 'm2', 'Babar Azam', 22, 33, 0, 2, 1),
(25, 'm2', 'Haris Sohail', 8, 11, 0, 1, 1),
(26, 'm2', 'Sarfaraz Ahmed', 8, 12, 0, 1, 1),
(27, 'm2', 'Mohammad Hafeez', 16, 24, 0, 2, 1),
(28, 'm2', 'Imad Wasim', 1, 3, 0, 0, 1),
(29, 'm2', 'Shadab Khan', 0, 1, 0, 0, 1),
(30, 'm2', 'Hasan Ali', 1, 4, 0, 0, 1),
(31, 'm2', 'Wahab Riaz', 18, 11, 2, 1, 1),
(32, 'm2', 'Mohammad Amir', 3, 6, 0, 0, 1),
(33, 'm2', 'Chris Gayle', 50, 34, 3, 6, 2),
(34, 'm2', 'Shai Hope', 11, 17, 0, 1, 2),
(35, 'm2', 'Darren Bravo', 0, 4, 0, 0, 2),
(36, 'm2', 'Nicholas Pooran', 34, 19, 2, 4, 2),
(37, 'm2', 'Shimron Hetmyer', 7, 8, 0, 0, 2),
(38, 'm3', 'Martin Guptill', 138, 139, 5, 11, 1),
(39, 'm3', 'Colin Munro', 13, 14, 1, 1, 1),
(40, 'm3', 'Kane Williamson', 76, 74, 0, 6, 1),
(41, 'm3', 'Ross Taylor', 54, 37, 2, 6, 1),
(42, 'm3', 'Henry Nicholls', 15, 12, 0, 1, 1),
(43, 'm3', 'Tim Seifert', 11, 10, 0, 1, 1),
(44, 'm3', 'James Neesham', 47, 13, 6, 0, 1),
(45, 'm3', 'Matt Henry', 6, 5, 0, 1, 1),
(46, 'm3', 'Ish Sodhi', 0, 0, 0, 0, 1),
(47, 'm3', 'Niroshan Dickwella', 76, 50, 3, 8, 2),
(48, 'm3', 'Danushka Gunathilaka', 43, 62, 0, 3, 2),
(49, 'm3', 'Kusal Perera', 102, 86, 1, 13, 2),
(50, 'm3', 'Kusal Mendis', 18, 20, 0, 2, 2),
(51, 'm3', 'Dinesh Chandimal', 10, 18, 0, 0, 2),
(52, 'm3', 'Asela Gunaratne', 11, 23, 0, 0, 2),
(53, 'm3', 'Thisara Perera', 4, 5, 0, 0, 2),
(54, 'm3', 'Seekkuge Prasanna', 16, 14, 1, 0, 2),
(55, 'm3', 'Lasith Malinga', 11, 7, 1, 0, 2),
(56, 'm3', 'Lakshan Sandakan', 6, 7, 0, 1, 2),
(57, 'm3', 'Nuwan Pradeep', 6, 3, 1, 0, 2),
(58, 'm4', 'Mohammad Shahzad (wk)', 0, 3, 0, 0, 1),
(59, 'm4', 'Hazratullah Zazai', 0, 2, 0, 0, 1),
(60, 'm4', 'Rahmat Shah', 43, 60, 0, 6, 1),
(61, 'm4', 'Hashmatullah Shahidi', 18, 34, 0, 3, 1),
(62, 'm4', 'Mohammad Nabi', 7, 22, 0, 0, 1),
(63, 'm4', 'Gulbadin Naib (c)', 31, 33, 1, 4, 1),
(64, 'm4', 'Najibullah Zadran', 51, 49, 2, 7, 1),
(65, 'm4', 'Rashid Khan', 27, 11, 3, 2, 1),
(66, 'm4', 'Dawlat Zadran', 4, 6, 0, 1, 1),
(67, 'm4', 'Mujeeb Ur Rahman', 13, 9, 1, 1, 1),
(68, 'm4', 'Hamid Hassan', 1, 2, 0, 0, 1),
(69, 'm4', 'Aaron Finch (c)', 66, 49, 4, 6, 2),
(70, 'm4', 'David Warner', 89, 114, 0, 8, 2),
(71, 'm4', 'Usman Khawaja', 15, 20, 0, 1, 2),
(72, 'm4', 'Steven Smith', 18, 27, 0, 1, 2),
(73, 'm4', 'Glenn Maxwell', 4, 1, 0, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `bowling`
--

CREATE TABLE `bowling` (
  `ID` int(11) NOT NULL,
  `M_ID` varchar(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Overs` double NOT NULL,
  `Runs` int(11) NOT NULL,
  `Wickets` int(11) NOT NULL,
  `Innings` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bowling`
--

INSERT INTO `bowling` (`ID`, `M_ID`, `Name`, `Overs`, `Runs`, `Wickets`, `Innings`) VALUES
(1, 'm1', 'Imran Tahir', 10, 61, 2, 1),
(2, 'm1', 'Lungi Ngidi', 10, 66, 3, 1),
(3, 'm1', 'Kagiso Rabada', 10, 66, 2, 1),
(4, 'm1', 'Dwaine Pretorius', 7, 42, 0, 1),
(5, 'm1', 'Andile Phehlukwayo', 8, 44, 1, 1),
(6, 'm1', 'Jean-Paul Duminy', 2, 14, 0, 1),
(7, 'm1', 'Aiden Markram', 3, 16, 0, 1),
(8, 'm1', 'Chris Woakes', 5, 24, 0, 2),
(9, 'm1', 'Jofra Archer', 7, 27, 3, 2),
(10, 'm1', 'Adil Rashid', 8, 35, 1, 2),
(11, 'm1', 'Moeen Ali', 10, 63, 1, 2),
(12, 'm1', 'Liam Plunkett', 7, 37, 2, 2),
(13, 'm1', 'Ben Stokes', 2.5, 12, 2, 2),
(14, 'm2', 'Sheldon Cottrell', 4, 18, 1, 1),
(15, 'm2', 'Jason Holder (c)', 5, 42, 3, 1),
(16, 'm2', 'Andre Russell', 3, 4, 2, 1),
(17, 'm2', 'Carlos Brathwaite', 4, 14, 0, 1),
(18, 'm2', 'Oshane Thomas', 5.4, 27, 4, 1),
(19, 'm2', 'Mohammad Amir', 6, 26, 3, 2),
(20, 'm2', 'Hasan Ali', 4, 39, 0, 2),
(21, 'm2', 'Hasan Ali', 3.4, 40, 0, 2),
(22, 'm3', 'Matt Henry', 7, 29, 3, 1),
(23, 'm3', 'Trent Boult', 9, 44, 1, 1),
(24, 'm3', 'Lockie Ferguson', 6.2, 22, 3, 1),
(25, 'm3', 'Colin de Grandhomme', 2, 14, 1, 1),
(26, 'm3', 'James Neesham', 3, 21, 1, 1),
(27, 'm3', 'Mitchell Santner', 2, 5, 1, 1),
(28, 'm3', 'Lasith Malinga', 5, 46, 0, 2),
(29, 'm3', 'Suranga Lakmal', 4, 28, 0, 2),
(30, 'm3', 'Isuru Udana', 3, 24, 0, 2),
(31, 'm3', 'Thisara Perera', 3, 25, 0, 2),
(32, 'm3', 'Jeevan Mendis', 1.1, 11, 0, 2),
(33, 'm4', 'MA Starc', 7, 31, 1, 1),
(34, 'm4', 'PJ Cummins', 8.2, 40, 3, 1),
(35, 'm4', 'NM Coulter-Nile', 8, 36, 0, 1),
(36, 'm4', 'MP Stoinis', 7, 37, 2, 1),
(37, 'm4', 'A Zampa', 8, 60, 3, 1),
(38, 'm4', 'Mujeeb Ur Rahman', 4.5, 45, 1, 2),
(39, 'm4', 'Hamid Hassan', 6, 15, 0, 2),
(40, 'm4', 'Dawlat Zadran', 5, 32, 0, 2),
(41, 'm4', 'Gulbadin Naib', 5, 32, 1, 2),
(42, 'm4', 'Mohammad Nabi', 6, 32, 0, 2),
(43, 'm4', 'Rashid Khan', 8, 52, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `match_details`
--

CREATE TABLE `match_details` (
  `M_ID` varchar(10) NOT NULL,
  `Details` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `match_details`
--

INSERT INTO `match_details` (`M_ID`, `Details`) VALUES
('m1', 'Eng vs RSA'),
('m2', 'WI vs Pak'),
('m3', 'NZ vs SL'),
('m4', 'Afg vs Aus');

-- --------------------------------------------------------

--
-- Table structure for table `overview`
--

CREATE TABLE `overview` (
  `M_ID` varchar(10) NOT NULL,
  `Details` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `overview`
--

INSERT INTO `overview` (`M_ID`, `Details`) VALUES
('m1', 'RSA won the toss and decide to bowl \r\n\r\nEngland - 311/8 \r\n\r\nRSA   -  207 \r\n\r\nEngland won by 104 runs\r\n'),
('m2', 'WI won the toss and decide to bowl\r\n\r\nPakistan -105\r\n\r\nWest Indies -108/3\r\n\r\nWest Indies won by 7 wickets'),
('m3', 'NZ won the toss decide to bowl first\r\n\r\nSriLanka - 136\r\n\r\nNew Zealand - 137\r\n\r\nNZ won by 10 wickets'),
('m4', 'Afg won the toss and decide to bat first\r\n\r\nAfghanistan - 207\r\n\r\nAustralia  - 209/3\r\n\r\nAus won by 7 wicket');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `batting`
--
ALTER TABLE `batting`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `bowling`
--
ALTER TABLE `bowling`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `match_details`
--
ALTER TABLE `match_details`
  ADD PRIMARY KEY (`M_ID`);

--
-- Indexes for table `overview`
--
ALTER TABLE `overview`
  ADD PRIMARY KEY (`M_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `batting`
--
ALTER TABLE `batting`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `bowling`
--
ALTER TABLE `bowling`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
