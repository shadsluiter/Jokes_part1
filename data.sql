 

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `jokesPart1`
--

-- --------------------------------------------------------

--
-- Table structure for table `jokes_table`
--

CREATE TABLE `jokes_table` (
  `JokeID` int(11) NOT NULL,
  `Joke_question` varchar(200) NOT NULL,
  `Joke_answer` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jokes_table`
--

INSERT INTO `jokes_table` (`JokeID`, `Joke_question`, `Joke_answer`) VALUES
(1, 'What time is it when an elephant sits on your fence?', 'Time to buy a new fence.'),
(2, 'Why did the chicken cross the road?', 'To get to the other side'),
(3, 'What did the mother buffalo say to her son when she dropped him off at school?', 'Bison'),
(4, 'Why did the chicken cross the playground?', 'To get to the other slide.'),
(5, 'What happens to a frog when his car breaks down?', 'He gets toad.'),
(6, 'How does a frog start his car when the battery is dead?', 'He gets a jump start.'),
(7, 'Can a kangaroo jump higher than the empire state building?', 'Of course. The Empire State building cannot jump.\r\n'),
(13, ' What did the duck say when he purchased new lipstick?', 'Put that on my bill.'),
(14, 'Want to hear a joke?', 'Your life.'),
(15, ' How does NASA plan a party?', ' They planet.'),
(16, 'Cargo space?', 'No. Car no do that. Car no fly.'),
(17, 'What did the farmer say when he lost his tractor?', 'Where is my tractor?'),
(18, 'I\'ve been told I\'m condescending.', '(that means I talk down to people)'),
(19, 'It\'s hard to explain puns to kleptomaniacs...', 'because they always take things literally.'),
(20, 'When you look really closely, all mirrors...', 'look like eyeballs.'),
(21, 'Why did the old man fall in the well?', 'Because he couldn\'t see that well.'),
(22, 'What\'s ET short for?', 'He\'s only got little legs.'),
(23, 'How do you tell the gender of an ant?', 'Put it in a glass of water. If it sinks its a girl ant. If it floats its buoyant.'),
(24, 'Why do cows have hooves instead of feet?', 'They lactose.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jokes_table`
--
ALTER TABLE `jokes_table`
  ADD PRIMARY KEY (`JokeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jokes_table`
--
ALTER TABLE `jokes_table`
  MODIFY `JokeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
