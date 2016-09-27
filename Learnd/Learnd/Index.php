<!DOCTYPE html>
<html>
<head>
    <title> Can i do it agian </title>
	<meta charset="utf-8" />
    <link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
    <div class="container">
        <h1 class="header"> HEADER FRIEND </h1>
        <p class="header">  Welcome to Davinci </p>
    </div>
    <div>
        <?php
            include_once "menu.php"
        ?>
    <h1> TRY IT</h1>
    <p> Hello world </p>

        <h1> Fill it in</h1>
        <form action="form.php" method="post">
            Course: <br>
            <input title="hello" type="text" value="" name="Number"/> <br>
            How many: <br>
            <input title="pepole" type="number" value="" name="Much"> <br>
            Price per Person: <br>
            <input title="dollar" type="text" value="" name="Price"> <br>
            Date: <br>
            <input title="Bye" type="datetime-local" value="" name="Date"> <br>
            Color-team: <br>
            <input title="color" type="color" value="" name="Color"><br>
            <input type="submit" value="Submit" name="submit" />
            </form>
        </div>
</body>
</html>
