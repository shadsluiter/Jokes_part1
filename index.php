<html>
<head>
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

<h1>Jokes Page</h1>
<a href="search_all_jokes.php">Show all jokes</a>
<br>

<?php
ini_set('display_errors', '1');
ini_set('display_startup_errors', '1');
error_reporting(E_ALL);

    include "db_connect.php"; 
?>

<form class="form-horizontal" action="search_keyword.php">
<fieldset>
    <legend>Search for a Joke</legend>

    <div class="form-group">
        <label class="col-md-4 control-label" for="keyword">Search input</label>
            <div class="col-md-5">
                <input id = "keyword" type="search" name="keyword" placeholder="e.g. chicken" class="form-control input-md" required="">
            <p class="help-block">Enter a keyword to search for in the joke database</p>
        </div>
    </div>

    <div class="form-group">
        <label for="submit" class="col-md-4 control-label"></label>
        <div class-"col-md-4">
            <button id="submit" name="submit" class="btn btn-primary">Search</button>
        </div>
    </div>
</fieldset>
</form>

<hr>

<form class="form-horizontal" action="add_joke.php">
<fieldset>
    <legend>Add a new Joke</legend>

    <div class="form-group">
        <label class="col-md-4 control-label" for="newjoke">New Joke</label>
        <div class="col-md-5">
            <input id = "newjoke" type="text" name="newjoke" placeholder="joke question" class="form-control input-md" required="">
            <p class="help-block">Enter the joke question</p>
        </div>
        <label class="col-md-4 control-label" for="jokeanswer">Joke Answer</label>
        <div class="col-md-5">
            <input id = "jokeanswer" type="text" name="jokeanswer" placeholder="joke answer" class="form-control input-md" required="">
            <p class="help-block">Enter the joke answer</p>
        </div>
    </div>

    <div class="form-group">
        <label for="submit" class="col-md-4 control-label"></label>
        <div class-"col-md-4">
            <button id="submit" name="submit" class="btn btn-primary">OK</button>
        </div>
    </div>

    </fieldset>
</form>

 
<?php 
$mysqli->close();
?>

</body>
</html>