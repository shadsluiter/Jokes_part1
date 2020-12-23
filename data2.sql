-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--

-- this is a two table solution.  Jokes and Users tables.  Used to track logins and ownership of jokes.

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `JokesDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `Jokes_table`
--

CREATE TABLE `Jokes_table` (
  `JokeID` int(11) NOT NULL,
  `Joke_question` varchar(500) NOT NULL,
  `Joke_answer` varchar(500) NOT NULL,
  `user_id` char(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Jokes_table`
--

INSERT INTO `Jokes_table` (`JokeID`, `Joke_question`, `Joke_answer`, `user_id`) VALUES
(1, 'What time is it when an elephant sits on your fence?', 'It\'s time to buy a new fence.', '13'),
(3, 'Why did the chicken cross the road?', 'To get to the other side.', '15'),
(4, 'What did the mother buffalo say to her son when she dropped him off at school?', 'Bison', '16'),
(5, 'Why did the chicken cross the playground?', 'To get to the other slide.', '13'),
(6, 'What happens to a frog\'s car when it breaks down?', 'It gets toad.', '15'),
(7, 'How does a frog start his car when the battery is dead?', 'He gets a jump start.', '16'),
(10, 'what to hear a joke?', 'Your life', '13'),
(17, 'Why can\'t you trust an atom?', 'They make up everything.', '15'),
(18, 'My sister bet me $100 that I couldn\'t make a car out of spagetti', 'You should have seen the look on her face when I drove pasta.', '16'),
(19, 'Where do animals go when their tail falls off?', 'The retail store.', '23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` text NOT NULL,
  `password` text NOT NULL,
  `email_address` text,
  `admin_role` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `password`, `email_address`, `admin_role`) VALUES
(13, 'bill', 'password', 'bill.gates@microsoft.com', 1),
(15, 'kim', 'password', ' kim.ill@north.ko', 0),
(16, '   don   ', 'don', '   don.trump@whitehouse.gov   ', 0),
(17, 'bob', ' bob ', ' bob@microsoft.com', 0),
(18, ' melinda ', 'm', '  melinda.gates@microsoft.com ', 0),
(19, 'jim', 'jim', 'jim@msn.com', 0),
(23, 'obama', 'password', 'barak@whitehouse.gov', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Jokes_table`
--
ALTER TABLE `Jokes_table`
  ADD PRIMARY KEY (`JokeID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Jokes_table`
--
ALTER TABLE `Jokes_table`
  MODIFY `JokeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
