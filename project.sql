-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2019 at 09:58 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `AID` int(11) NOT NULL,
  `AName` text NOT NULL,
  `correct` tinyint(1) NOT NULL,
  `QID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`AID`, `AName`, `correct`, `QID`) VALUES
(1, 'programming language', 1, 1),
(2, 'simple programming language', 1, 1),
(3, 'difficult programming language', 0, 1),
(4, 'framework ', 0, 1),
(5, 'web language ', 0, 1),
(6, 'it isn\'t real-world, production language ', 0, 1),
(7, 'print <expression> ', 1, 2),
(8, 'print variable ', 1, 2),
(9, ' variable print ', 0, 2),
(10, ' variable ', 0, 2),
(11, ' cout ', 0, 2),
(12, ' hello world ', 0, 2),
(13, ' Data Science ', 1, 3),
(14, ' Machine Learning ', 1, 3),
(15, ' Sport ', 0, 3),
(16, ' Economics ', 0, 3),
(17, ' Commerce ', 0, 3),
(18, ' Agriculture ', 0, 3),
(19, ' Py ', 1, 4),
(20, ' PyCharm ', 1, 4),
(21, ' Photoshop ', 0, 4),
(22, ' Priemir ', 0, 4),
(23, ' After Effect ', 0, 4),
(24, ' Cinema 4D ', 0, 4),
(25, ' programming language ', 1, 5),
(26, ' simple programming language ', 1, 5),
(27, ' web language  ', 0, 5),
(28, ' framework  ', 0, 5),
(29, ' Android  ', 0, 5),
(30, ' ios ', 0, 5),
(31, '<variable> = <expression> ', 1, 6),
(32, '<variable> = <expression> ex: age = 19', 1, 6),
(33, '<expression> = <variable>', 0, 6),
(34, 'Hello', 0, 6),
(35, 'cout', 0, 6),
(36, 'int', 0, 6),
(37, 'programming language', 1, 7),
(38, 'it is real-world, production language', 1, 7),
(39, 'framework ', 0, 7),
(40, 'web language ', 0, 7),
(41, 'Android ', 0, 7),
(42, 'ios ', 0, 7),
(43, 'cin>> <expression> ', 1, 8),
(44, 'cin>> <expression> ex: cin>>x; ', 1, 8),
(45, 'cout>> <expression> ex: cout>>x; ', 0, 8),
(46, 'cout>> <expression>  ', 0, 8),
(47, 'cout<< <expression>  ', 0, 8),
(48, 'cin<< <expression>  ', 0, 8),
(49, 'cout<< <expression>  ', 1, 9),
(50, 'cout<< <expression> ex: cout<< x;  ', 1, 9),
(51, 'cout>> <expression> ex: cout>> x;  ', 0, 9),
(52, 'cout>> <expression>  ', 0, 9),
(53, 'cin>> <expression>  ', 0, 9),
(54, 'cin<< <expression>  ', 0, 9),
(55, '<variable> = <expression>  ', 1, 10),
(56, '<variable> = <expression> ex: age = 19  ', 1, 10),
(57, '<expression> = <variable>', 0, 10),
(58, 'cin', 0, 10),
(59, 'cout', 0, 10),
(60, 'Hello', 0, 10),
(61, 'programming language', 1, 11),
(62, ' production language ', 1, 11),
(63, ' framework  ', 0, 11),
(64, 'web language ', 0, 11),
(65, 'Android ', 0, 11),
(66, 'IOS', 0, 11),
(67, 'cin', 1, 12),
(68, 'cout', 1, 12),
(69, 'Hello', 0, 12),
(70, 'Abo trieka', 0, 12),
(71, 'ozil', 0, 12),
(72, 'Mo Salah', 0, 12),
(73, 'programming language', 1, 13),
(74, 'web language', 1, 13),
(75, 'it isn\'t real-world, production language ', 0, 13),
(76, 'Android ', 0, 13),
(77, 'IOS ', 0, 13),
(78, 'framework ', 0, 13),
(79, 'System.in(<expressin>)', 1, 14),
(80, 'System.in(<expressin>) ex:System.in(x) ', 1, 14),
(81, 'System.out', 0, 14),
(82, 'print', 0, 14),
(83, 'cout', 0, 14),
(84, 'input', 0, 14),
(85, 'System.out.print(x)', 1, 15),
(86, 'System.out.print(<expression>) ', 1, 15),
(87, 'System.in.print(<expression>) ', 0, 15),
(88, 'System.print(<expression>) ', 0, 15),
(89, 'print(<expression>) ', 0, 15),
(90, 'cin(<expression>) ', 0, 15),
(91, '<variable> = <expression> ', 1, 16),
(92, '<variable> = <expression> ex: age = 19', 1, 16),
(93, '<expression> = <variable>', 0, 16),
(94, 'Can\'t implented', 0, 16),
(95, '<expression> = <variable> ex: 19 = age', 0, 16),
(96, '<expression>=value', 0, 16),
(97, 'programming language', 1, 17),
(98, 'web language', 1, 17),
(99, 'non production language', 0, 17),
(100, 'Android', 0, 17),
(101, 'IOS', 0, 17),
(102, 'framework', 0, 17),
(103, 'IF', 1, 18),
(104, 'WHILE', 1, 18),
(105, 'Hello', 0, 18),
(106, 'Mostafa', 0, 18),
(107, 'Mo Salah', 0, 18),
(108, 'Abo Trieka', 0, 18),
(109, 'web language ', 1, 19),
(110, 'Programming language', 1, 19),
(111, 'framework', 0, 19),
(112, 'it isn\'t real-World', 0, 19),
(113, 'Anroid', 0, 19),
(114, 'IOS', 0, 19),
(115, '$_POST[\'variable\'])', 1, 20),
(116, '$_POST[\'variable\']) ex:$_POST[\'username\'])', 1, 20),
(117, 'cin', 0, 20),
(118, 'input', 0, 20),
(119, 'system.in', 0, 20),
(120, 'cout', 0, 20),
(121, 'echo<< <expression>', 1, 21),
(122, 'print<< <expression>', 1, 21),
(123, 'System.out.print', 0, 21),
(124, 'System.out', 0, 21),
(125, 'out.print', 0, 21),
(126, 'printf <expression>', 0, 21),
(127, '<variable> = <expression>', 1, 22),
(128, '<variable> = <expression> ex: age = 19', 1, 22),
(129, '<expression> = <variable>', 0, 22),
(130, '<expression> = <variable> ex: 18= age', 0, 22),
(131, '<expression> = value ', 0, 22),
(132, 'Can\'t implemented', 0, 22),
(133, 'programming language', 1, 23),
(134, 'web language', 1, 23),
(135, 'framework', 0, 23),
(136, 'isn\'t real-world', 0, 23),
(137, 'Android', 0, 23),
(138, 'ios', 0, 23),
(139, 'echo', 1, 24),
(140, 'print', 1, 24),
(141, 'printf', 0, 24),
(142, 'Hello', 0, 24),
(143, 'System.out', 0, 24),
(144, 'System.in', 0, 24),
(145, 'Cascade Style Sheet', 1, 25),
(146, ' stylesheet language', 1, 25),
(147, 'IOS ', 0, 25),
(148, 'Android', 0, 25),
(149, 'FrameWork', 0, 25),
(150, 'isnt real-world,', 0, 25),
(151, 'BY ID', 1, 26),
(152, '.Class', 1, 26),
(153, 'css hasn\'t selectors', 0, 26),
(154, '.selectors', 0, 26),
(155, '.select', 0, 26),
(156, 'hello', 0, 26),
(157, 'Internal,External,Inline', 1, 27),
(158, 'Inline,Internal,External', 1, 27),
(159, 'Intera,Internal,External', 0, 27),
(160, 'Inline,Internal,Intera', 0, 27),
(161, 'Inline,Intra,External', 0, 27),
(162, 'Inline,Extra,External', 0, 27),
(163, 'Cascade Style Sheet', 1, 28),
(164, 'Cascading Style Sheet', 1, 28),
(165, 'Customer Service Sheet', 0, 28),
(166, 'Cross Service Sheet', 0, 28),
(167, 'Cristiano Salah Sadio', 0, 28),
(168, 'Cable Service Sheet', 0, 28),
(169, 'Cascade Style Sheet', 1, 29),
(170, 'StyleSheet language', 1, 29),
(171, 'IOS Language', 0, 29),
(172, 'Android Language', 0, 29),
(173, 'FrameWork', 0, 29),
(174, 'Programming Language', 0, 29),
(175, 'They can be used to define text styles', 1, 30),
(176, 'They can be  used to format the layout of Web pages', 1, 30),
(177, 'They can be  used to make a database', 0, 30),
(178, 'They can be  used to establish connection', 0, 30),
(179, 'They can be  used to validate the buttons', 0, 30),
(180, 'They can be  used to make a large validation', 0, 30);

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `CID` int(11) NOT NULL,
  `CName` text NOT NULL,
  `CPhone_number` int(11) NOT NULL,
  `CMail` text NOT NULL,
  `CPassword` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`CID`, `CName`, `CPhone_number`, `CMail`, `CPassword`) VALUES
(1, 'yousef ibrahim', 1012355641, 'yousef.ibrahim1@yahoo.com', 1111),
(2, 'mostafa mohamed', 1113296123, 'mostafa.mohamed851@yahoo.com', 2222),
(3, 'Ahmed Abdallah', 1102351254, 'ahmed.abdallah3@yahoo.com', 3333),
(4, 'mohamed hussien', 1123124565, 'mohamed.hussien4@yahoo.com', 4444),
(5, 'ahmed mohamed', 1123546872, 'ahmed.mohamed5@yahoo.com', 5555);

-- --------------------------------------------------------

--
-- Table structure for table `candidate_answer`
--

CREATE TABLE `candidate_answer` (
  `CID` int(11) NOT NULL,
  `ExamID` int(11) NOT NULL,
  `QID` int(11) NOT NULL,
  `AID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate_answer`
--

INSERT INTO `candidate_answer` (`CID`, `ExamID`, `QID`, `AID`) VALUES
(1, 1, 1, 1),
(1, 1, 3, 2),
(1, 1, 4, 3),
(1, 1, 5, 2),
(1, 1, 6, 1),
(1, 2, 2, 3),
(1, 2, 3, 4),
(1, 2, 4, 2),
(1, 2, 5, 1),
(1, 2, 6, 1),
(1, 3, 1, 1),
(1, 3, 3, 4),
(1, 3, 4, 2),
(1, 3, 5, 2),
(1, 3, 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `ExamID` int(11) NOT NULL,
  `ExamName` text NOT NULL,
  `ExamType` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`ExamID`, `ExamName`, `ExamType`) VALUES
(1, 'python language', 'python'),
(2, 'c++ language', 'c++'),
(3, 'java language', 'java'),
(4, 'php language', 'php'),
(5, 'css language', 'css');

-- --------------------------------------------------------

--
-- Table structure for table `hr`
--

CREATE TABLE `hr` (
  `HRID` int(11) NOT NULL,
  `HRName` text NOT NULL,
  `HRMail` text NOT NULL,
  `HRPassword` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hr`
--

INSERT INTO `hr` (`HRID`, `HRName`, `HRMail`, `HRPassword`) VALUES
(1, 'ahmed yassin', 'ahmed.yassin1@yahoo.com', 1111),
(2, 'mostafa abdallah', 'mostafa.abdallah2@yahoo.com', 2222),
(3, 'mo salah', 'mo.salah3@yahoo.com', 3333),
(4, 'origi', 'origi4@yahoo.com', 4444);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `QID` int(11) NOT NULL,
  `QName` text NOT NULL,
  `ExamID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`QID`, `QName`, `ExamID`) VALUES
(1, 'what is python?', 1),
(2, 'how to make output in python?', 1),
(3, 'what is most important field in python?', 1),
(4, 'which development tool is used python? ', 1),
(5, 'in which category python is considered?', 1),
(6, 'how to make an assignment operator in python?', 1),
(7, 'what is c++?', 2),
(8, 'how to make an input in c++?', 2),
(9, 'how to make an output in c++?', 2),
(10, 'how to make an assignment operator in c++?', 2),
(11, 'C++ is considered ......?', 2),
(12, 'which word is reserved in c++?', 2),
(13, 'what is java?', 3),
(14, 'how to make an input in java?', 3),
(15, 'how to make an output in java?', 3),
(16, 'how to make  assignment operator in java?', 3),
(17, 'java is considered ......?', 3),
(18, 'which word is reserved in java?', 3),
(19, 'what is php?', 4),
(20, 'how to make an input in php?', 4),
(21, 'how to make an output in php?', 4),
(22, 'how to make an assignment operator in php?', 4),
(23, 'php is considered ......?', 4),
(24, 'which word is reserved in php?', 4),
(25, 'what is css?', 5),
(26, 'Which one is considered a Selector Type in CSS ?', 5),
(27, 'What are the 3 types of CSS?', 5),
(28, 'css is stands for?', 5),
(29, 'css is considered ......?', 5),
(30, 'What is CSS used for?', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`AID`),
  ADD KEY `QID` (`QID`);

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`CID`);

--
-- Indexes for table `candidate_answer`
--
ALTER TABLE `candidate_answer`
  ADD PRIMARY KEY (`CID`,`ExamID`,`QID`,`AID`),
  ADD KEY `CID` (`CID`),
  ADD KEY `ExamID` (`ExamID`),
  ADD KEY `QID` (`QID`),
  ADD KEY `AID` (`AID`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`ExamID`);

--
-- Indexes for table `hr`
--
ALTER TABLE `hr`
  ADD PRIMARY KEY (`HRID`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`QID`),
  ADD KEY `ExamID` (`ExamID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `candidate_answer`
--
ALTER TABLE `candidate_answer`
  ADD CONSTRAINT `candidate_answer_ibfk_1` FOREIGN KEY (`CID`) REFERENCES `candidate` (`CID`),
  ADD CONSTRAINT `candidate_answer_ibfk_2` FOREIGN KEY (`ExamID`) REFERENCES `exam` (`ExamID`),
  ADD CONSTRAINT `candidate_answer_ibfk_3` FOREIGN KEY (`AID`) REFERENCES `answer` (`AID`),
  ADD CONSTRAINT `candidate_answer_ibfk_4` FOREIGN KEY (`QID`) REFERENCES `question` (`QID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
