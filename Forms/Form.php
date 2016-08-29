<html>
<head>
    <title> TEST </title>
</head>
<body>
<form action="Form.php">
    Name: <input type="text" name="name"><br>
    E-mail: <input type="text" name="email"><br>
    <input type="submit">
</form>
</body>
</html>

<?php

echo "Welcome"; echo $_GET["name"]; ?><br>
Your email address is: <?php echo $_GET["email"];

?>