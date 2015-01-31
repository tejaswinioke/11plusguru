-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 30, 2015 at 09:36 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `11plusguru`
--
CREATE DATABASE IF NOT EXISTS `11plusguru` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `11plusguru`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `cid` int(4) NOT NULL AUTO_INCREMENT,
  `category` char(35) DEFAULT NULL,
  `sid` int(2) NOT NULL,
  PRIMARY KEY (`cid`),
  KEY `sid` (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cid`, `category`, `sid`) VALUES
(0, 'numbers and their properties', 1),
(2, 'Calculations', 1),
(3, 'Comprehension', 1),
(4, 'test cate', 1),
(5, 'vcat', 1),
(6, 'default', 1),
(7, 'default', 1);

-- --------------------------------------------------------

--
-- Table structure for table `difficultylevel`
--

CREATE TABLE IF NOT EXISTS `difficultylevel` (
  `lid` int(2) NOT NULL,
  `lname` varchar(30) NOT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='table for level ';

--
-- Dumping data for table `difficultylevel`
--

INSERT INTO `difficultylevel` (`lid`, `lname`) VALUES
(0, 'easy');

-- --------------------------------------------------------

--
-- Table structure for table `evaluationtype`
--

CREATE TABLE IF NOT EXISTS `evaluationtype` (
  `evalid` int(2) NOT NULL,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`evalid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table to save evaluation types';

--
-- Dumping data for table `evaluationtype`
--

INSERT INTO `evaluationtype` (`evalid`, `type`) VALUES
(0, 'trial'),
(1, 'practice'),
(2, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `question_bank`
--

CREATE TABLE IF NOT EXISTS `question_bank` (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(2) NOT NULL,
  `cid` int(4) NOT NULL,
  `lid` int(2) NOT NULL,
  `question` varchar(250) NOT NULL,
  `qoption1` varchar(100) NOT NULL,
  `qoption2` varchar(100) NOT NULL,
  `qoption3` varchar(100) NOT NULL,
  `qoption4` varchar(100) NOT NULL,
  `qanswer` varchar(100) NOT NULL,
  `qimage` varchar(250) DEFAULT NULL,
  `evalid` int(2) NOT NULL,
  PRIMARY KEY (`qid`),
  KEY `sid` (`sid`),
  KEY `cid` (`cid`),
  KEY `lid` (`lid`),
  KEY `evalid` (`evalid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `question_bank`
--

INSERT INTO `question_bank` (`qid`, `sid`, `cid`, `lid`, `question`, `qoption1`, `qoption2`, `qoption3`, `qoption4`, `qanswer`, `qimage`, `evalid`) VALUES
(1, 0, 0, 0, '2+2', '5', '4', '6', '8', '4', NULL, 0),
(2, 0, 0, 0, '2+3', '5', '4', '6', '8', '5', NULL, 0),
(3, 0, 0, 0, 'underline two words,one from each group,that go together to form a new word. The word in the first group always comes first. (check,tick,cross)(down,side,word)', 'option1', 'option2', 'option3', 'cross,word', 'cross,word', 'null', 0),
(4, 0, 0, 0, 'underline two words,one from each group,that go together to form a new word The word in the first group always comes first (by,side,fore)(ground,paper,wall)', 'option1', 'option2', 'option3', 'fore,ground', 'fore,ground', 'null', 0),
(5, 0, 0, 0, 'underline two words,one from each group,that go together to form a new word. The word in the first group always comes first. (live,healthy,dead)(key,well,lock)', 'option1', 'option2', 'option3', 'dead,lock', 'dead,lock', 'null', 0),
(6, 0, 0, 0, 'underline two words,one from each group,that go together to form a new word The word in the first group always comes first (flood,for,furniture)(give,away,breakage)', 'option1', 'option2', 'option3', 'for,give', 'for,give', 'null', 0),
(7, 0, 0, 0, 'complete the following expressions by underlining the missing word. Frog is to tadpole as swan is (duckling,baby,cygnet) ', 'option1', 'option2', 'option3', 'cygnet', 'cygnet', 'null', 0),
(8, 0, 0, 0, 'complete the following expressions by underlining the missing word. dirty is to soiled as stained is to (sparse,tarnished,several)', 'option1', 'option2', 'option3', 'tarnished', 'tarnished', 'null', 0),
(9, 0, 0, 0, 'complete the following expressions by underlining the missing word. loud is to noisy as rowdy is to (strides,walk,boisterous)', 'option1', 'option2', 'option3', 'boisterous', 'boisterous', 'null', 0),
(10, 0, 0, 0, 'complete the following expressions by underlining the missing word.chatter is to babble as talk is to (silent,speak,moment)', 'option1', 'option2', 'option3', 'speak', 'speak', 'null', 0),
(11, 0, 0, 0, 'complete the following expressions by underlining the missing word.hungry is to peckish as famishes is to (drowning,seeing,starving)', 'option1', 'option2', 'option3', 'starving', 'starving', 'null', 0),
(12, 0, 0, 0, 'complete the following expressions by underlining the missing word.medium is to moderate as middle is to (midway,midday,midland)', 'option1', 'option2', 'option3', 'midway', 'midway', 'null', 0),
(13, 0, 0, 0, 'Anne and Emma learn ballroom dancing and judo. Emma and Lucy learn judo and fencing. Caroline and Anne learn tap dancing and ballroom dancing. who learns judo but not fencing?', 'option1', 'option2', 'option3', 'anne', 'anne', 'null', 0),
(14, 0, 0, 0, 'Anne and Emma learn ballroom dancing and judo. Emma and Lucy learn judo and fencing. Caroline and Anne learn tap dancing and ballroom dancing. who learns ballroom dancing but not tap dancing?', 'option1', 'option2', 'option3', 'emma', 'emma', 'null', 0),
(15, 0, 0, 0, 'Anne and Emma learn ballroom dancing and judo. Emma and Lucy learn judo and fencing. Caroline and Anne learn tap dancing and ballroom dancing. which activity doesn''t Anne learn?', 'option1', 'option2', 'option3', 'fencing', 'fencing', 'null', 0),
(16, 0, 0, 0, 'Anne and Emma learn ballroom dancing and judo. Emma and Lucy learn judo and fencing. Caroline and Anne learn tap dancing and ballroom dancing. which activity doesn''t Emma learn?', 'option1', 'option2', 'option3', 'TapDancing', 'TapDancing', 'null', 0),
(17, 0, 0, 0, 'Anne and Emma learn ballroom dancing and judo. Emma and Lucy learn judo and fencing. Caroline and Anne learn tap dancing and ballroom dancing. how many girls do three activities?', 'option1', 'option2', 'option3', 'two', 'two', 'null', 0),
(18, 0, 0, 0, 'Change the first word into the last word,by changing one letter at a time and making two new,different words in the middle. teak , -- , -- , rent', 'option1', 'option2', 'option3', 'teat,tent', 'teat,tent', 'null', 0),
(19, 0, 0, 0, 'Change the first word into the last word,by changing one letter at a time and making two new,different words in the middle take , -- , -- , live', 'option1', 'option2', 'option3', 'lake,like', 'lake,like', 'null', 0),
(20, 0, 0, 0, 'Change the first word into the last word,by changing one letter at a time and making two new,different words in the middle pipe, -- , -- ,  hill', 'option1', 'option2', 'option3', 'pile,pill', 'pile,pill', 'null', 0),
(21, 0, 0, 0, 'Change the first word into the last word,by changing one letter at a time and making two new,different words in the middle good,--,--,work ', 'option1', 'option2', 'option3', 'wood,worm', 'wood,worm', 'null', 0),
(22, 0, 0, 0, 'Change the first word into the last word,by changing one letter at a time and making two new,different words in the middle home,--,--ripe                                   ', 'option1', 'option2', 'option3', 'hope,rope', 'hope,rope', 'null', 0),
(23, 0, 0, 0, 'Change the first word into the last word,by changing one letter at a time and making two new,different words in the middle warm,--,--mast', 'option1', 'option2', 'option3', 'wart,mart', 'wart,mart', 'null', 0),
(24, 0, 0, 0, 'spell the following words backwards.write numbers underneath  the words to indicate their new alphabetical order FATTEN ,LIGHTEN, MOISTEN, SOFTEN', 'option1', 'option2', 'option3', '4,2,3,1', '4,2,3,1', 'null', 0),
(25, 0, 0, 0, 'spell the following words backwards.write numbers underneath  the words to indicate their new alphabetical order COMICAL, FINAL, MUSICAL, OFFICIAL', 'option1', 'option2', 'option3', '1,4,2,3', '1,4,2,3', 'null', 0);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE IF NOT EXISTS `review` (
  `rid` int(11) NOT NULL,
  `details` varchar(500) NOT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table to save reviews';

-- --------------------------------------------------------

--
-- Table structure for table `subjectlist`
--

CREATE TABLE IF NOT EXISTS `subjectlist` (
  `sid` int(2) NOT NULL AUTO_INCREMENT,
  `sname` char(30) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `subjectlist`
--

INSERT INTO `subjectlist` (`sid`, `sname`) VALUES
(0, 'default'),
(1, 'maths'),
(2, 'English'),
(3, 'Verbal'),
(4, 'NonVerbal'),
(5, 'NonVerbal1'),
(6, 'verbal1'),
(7, 'verbal2'),
(8, 'verbal3'),
(9, 'verbal4'),
(10, 'verbal'),
(12, 'default');

-- --------------------------------------------------------

--
-- Table structure for table `table 5`
--

CREATE TABLE IF NOT EXISTS `table 5` (
  `COL 1` varchar(2) DEFAULT NULL,
  `COL 2` varchar(6) DEFAULT NULL,
  `COL 3` varchar(4) DEFAULT NULL,
  `COL 4` varchar(9) DEFAULT NULL,
  `COL 5` varchar(191) DEFAULT NULL,
  `COL 6` varchar(7) DEFAULT NULL,
  `COL 7` varchar(7) DEFAULT NULL,
  `COL 8` varchar(7) DEFAULT NULL,
  `COL 9` varchar(11) DEFAULT NULL,
  `COL 10` varchar(11) DEFAULT NULL,
  `COL 11` varchar(4) DEFAULT NULL,
  `COL 12` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table 5`
--

INSERT INTO `table 5` (`COL 1`, `COL 2`, `COL 3`, `COL 4`, `COL 5`, `COL 6`, `COL 7`, `COL 8`, `COL 9`, `COL 10`, `COL 11`, `COL 12`) VALUES
('3', 'verbal', 'vcat', 'difficult', 'underline two words,one from each group,that go together to form a new word. The word in the first group always comes first. (check,tick,cross)(down,side,word)', 'option1', 'option2', 'option3', 'cross,word', 'cross,word', 'null', 'yes'),
('4', 'verbal', 'vcat', 'easy', 'underline two words,one from each group,that go together to form a new word The word in the first group always comes first (by,side,fore)(ground,paper,wall)', 'option1', 'option2', 'option3', 'fore,ground', 'fore,ground', 'null', 'no'),
('5', 'verbal', 'vcat', 'medium', 'underline two words,one from each group,that go together to form a new word. The word in the first group always comes first. (live,healthy,dead)(key,well,lock)', 'option1', 'option2', 'option3', 'dead,lock', 'dead,lock', 'null', 'yes'),
('6', 'verbal', 'vcat', 'difficult', 'underline two words,one from each group,that go together to form a new word The word in the first group always comes first (flood,for,furniture)(give,away,breakage)', 'option1', 'option2', 'option3', 'for,give', 'for,give', 'null', 'no'),
('7', 'verbal', 'vcat', 'easy', 'complete the following expressions by underlining the missing word. Frog is to tadpole as swan is (duckling,baby,cygnet) ', 'option1', 'option2', 'option3', 'cygnet', 'cygnet', 'null', 'yes'),
('8', 'verbal', 'vcat', 'medium', 'complete the following expressions by underlining the missing word. dirty is to soiled as stained is to (sparse,tarnished,several)', 'option1', 'option2', 'option3', 'tarnished', 'tarnished', 'null', 'no'),
('9', 'verbal', 'vcat', 'difficult', 'complete the following expressions by underlining the missing word. loud is to noisy as rowdy is to (strides,walk,boisterous)', 'option1', 'option2', 'option3', 'boisterous', 'boisterous', 'null', 'yes'),
('10', 'verbal', 'vcat', 'easy', 'complete the following expressions by underlining the missing word.chatter is to babble as talk is to (silent,speak,moment)', 'option1', 'option2', 'option3', 'speak', 'speak', 'null', 'no'),
('11', 'verbal', 'vcat', 'medium', 'complete the following expressions by underlining the missing word.hungry is to peckish as famishes is to (drowning,seeing,starving)', 'option1', 'option2', 'option3', 'starving', 'starving', 'null', 'yes'),
('12', 'verbal', 'vcat', 'difficult', 'complete the following expressions by underlining the missing word.medium is to moderate as middle is to (midway,midday,midland)', 'option1', 'option2', 'option3', 'midway', 'midway', 'null', 'no'),
('13', 'verbal', 'vcat', 'easy', 'Anne and Emma learn ballroom dancing and judo. Emma and Lucy learn judo and fencing. Caroline and Anne learn tap dancing and ballroom dancing. who learns judo but not fencing?', 'option1', 'option2', 'option3', 'anne', 'anne', 'null', 'yes'),
('14', 'verbal', 'vcat', 'medium', 'Anne and Emma learn ballroom dancing and judo. Emma and Lucy learn judo and fencing. Caroline and Anne learn tap dancing and ballroom dancing. who learns ballroom dancing but not tap dancing?', 'option1', 'option2', 'option3', 'emma', 'emma', 'null', 'no'),
('15', 'verbal', 'vcat', 'difficult', 'Anne and Emma learn ballroom dancing and judo. Emma and Lucy learn judo and fencing. Caroline and Anne learn tap dancing and ballroom dancing. which activity doesn''t Anne learn?', 'option1', 'option2', 'option3', 'fencing', 'fencing', 'null', 'yes'),
('16', 'verbal', 'vcat', 'easy', 'Anne and Emma learn ballroom dancing and judo. Emma and Lucy learn judo and fencing. Caroline and Anne learn tap dancing and ballroom dancing. which activity doesn''t Emma learn?', 'option1', 'option2', 'option3', 'tap dancing', 'tap dancing', 'null', 'no'),
('17', 'verbal', 'vcat', 'medium', 'Anne and Emma learn ballroom dancing and judo. Emma and Lucy learn judo and fencing. Caroline and Anne learn tap dancing and ballroom dancing. how many girls do three activities?', 'option1', 'option2', 'option3', 'two', 'two', 'null', 'yes'),
('18', 'verbal', 'vcat', 'difficult', 'Change the first word into the last word,by changing one letter at a time and making two new,different words in the middle. teak , -- , -- , rent', 'option1', 'option2', 'option3', 'teat ,tent', 'teat ,tent', 'null', 'no'),
('19', 'verbal', 'vcat', 'easy', 'Change the first word into the last word,by changing one letter at a time and making two new,different words in the middle take , -- , -- , live', 'option1', 'option2', 'option3', 'lake, like', 'lake, like', 'null', 'yes'),
('20', 'verbal', 'vcat', 'medium', 'Change the first word into the last word,by changing one letter at a time and making two new,different words in the middle pipe, -- , -- ,  hill', 'option1', 'option2', 'option3', 'pile, pill', 'pile, pill', 'null', 'no'),
('21', 'verbal', 'vcat', 'difficult', 'Change the first word into the last word,by changing one letter at a time and making two new,different words in the middle good,--,--,work ', 'option1', 'option2', 'option3', 'wood,worm', 'wood,worm', 'null', 'yes'),
('22', 'verbal', 'vcat', 'easy', 'Change the first word into the last word,by changing one letter at a time and making two new,different words in the middle home,--,--ripe                                   ', 'option1', 'option2', 'option3', 'hope,rope', 'hope,rope', 'null', 'no'),
('23', 'verbal', 'vcat', 'medium', 'Change the first word into the last word,by changing one letter at a time and making two new,different words in the middle warm,--,--mast', 'option1', 'option2', 'option3', 'wart,mart', 'wart,mart', 'null', 'yes'),
('24', 'verbal', 'vcat', 'difficult', 'spell the following words backwards.write numbers underneath  the words to indicate their new alphabetical order FATTEN ,LIGHTEN, MOISTEN, SOFTEN', 'option1', 'option2', 'option3', '4,2,3,1', '4,2,3,1', 'null', 'no'),
('25', 'verbal', 'vcat', 'easy', 'spell the following words backwards.write numbers underneath  the words to indicate their new alphabetical order COMICAL, FINAL, MUSICAL, OFFICIAL', 'option1', 'option2', 'option3', '1,4,2,3', '1,4,2,3', 'null', 'yes'),
('', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` char(15) NOT NULL,
  `lastname` char(15) NOT NULL,
  `userid` char(15) NOT NULL,
  `password` varchar(150) NOT NULL,
  `emailid` char(25) NOT NULL,
  `schoolname` char(25) DEFAULT NULL,
  `schoolpostcode` char(10) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `firstname`, `lastname`, `userid`, `password`, `emailid`, `schoolname`, `schoolpostcode`) VALUES
(1, 'admin', 'admin', 'admin', 'ef5a76e360fc46fa3e9e3ecaf9de965a76ffe7f83860ab803f97307defb68e813b9c574156955d2217df3bc8a37e84e053b0c9a2bc445b10488a2dc8b5e42a40', 'admin@11plusguru.com', 'admin', 'admin'),
(2, 'gayatri', 'awate', 'gawate', 'c919fd835891cd89d5250188d35bc1fbd4d1a54244fac89e6866bb4b553781b441c1f3377da8d774ad3592cdaa527f261b88bb981e3086df3e990e3b4e3655ec', 'gayatri.awate@gmail.com', 'garware', 'india'),
(3, 'ruchir', 'awate', 'rawate', '4eeb91cd5cf1010ef62cf7e750e062c4d15f4fdd7165ebd4c0fa8c266ee5e5e884bfeeb81f27be9ba76705668a326940dc89cf2ec6c466670fe82579f6faadd0', 'rawate@gmail.com', 'all saints', 'rg40 2es'),
(4, 'yogesh', 'awate', 'yawate', '4eeb91cd5cf1010ef62cf7e750e062c4d15f4fdd7165ebd4c0fa8c266ee5e5e884bfeeb81f27be9ba76705668a326940dc89cf2ec6c466670fe82579f6faadd0', 'yogesh.awate@gmail.com', 'dnyanprabodini', 'deccan');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `SubjectCat` FOREIGN KEY (`sid`) REFERENCES `subjectlist` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `question_bank`
--
ALTER TABLE `question_bank`
  ADD CONSTRAINT `CatQuestion` FOREIGN KEY (`cid`) REFERENCES `categories` (`cid`),
  ADD CONSTRAINT `EvaluationQuestion` FOREIGN KEY (`evalid`) REFERENCES `evaluationtype` (`evalid`),
  ADD CONSTRAINT `LevelQuestion` FOREIGN KEY (`lid`) REFERENCES `difficultylevel` (`lid`),
  ADD CONSTRAINT `SubjectQuestion` FOREIGN KEY (`sid`) REFERENCES `subjectlist` (`sid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
