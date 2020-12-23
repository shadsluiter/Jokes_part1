
<?php

include "db_connect.php";

$new_joke_question = addslashes($_GET['newjoke']);
$new_joke_answer = addslashes($_GET['jokeanswer']);

echo $keywordfromform;

echo "<h2>Trying to add a new joke " . $new_joke_question . " and " . $new_joke_answer . "</h2>";

$sql = "INSERT INTO Jokes_table (JokeID, Joke_question, Joke_answer) VALUES (null, '$new_joke_question', '$new_joke_answer')";

$result = $mysqli->query($sql) or die (mysqli_error($mysqli));

include "search_all_jokes.php";

echo "<a href = 'index.php'>Return to main</a>";
?>
