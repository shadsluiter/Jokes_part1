<head>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#accordion" ).accordion();
  } );
  </script>
</head><?php

include "db_connect.php";
ini_set('display_errors', '1');
ini_set('display_startup_errors', '1');
error_reporting(E_ALL);


$keywordfromform = $_GET['keyword'];
echo $keywordfromform;

echo "<h2>Show all jokes with the word " . $keywordfromform . "</h2>";

$sql = "SELECT JokeID, Joke_question, Joke_answer FROM Jokes_table WHERE Joke_question LIKE '%$keywordfromform%'";
$result = $mysqli->query($sql);

if ($result->num_rows > 0) {
    // output data of each row

    echo "<div id='accordion'>";
    while($row = $result->fetch_assoc()) {
        echo "<h3>" . $row['Joke_question'] . "</h3>";
        
        echo "<div><p>" . $row["Joke_answer"]. "</p></div>";
    }

    echo "</div>";
} else {
    echo "0 results";
}
?>