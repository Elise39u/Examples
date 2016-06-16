<?php
session_start();

// vergeet de zaklamp
unset($_SESSION['flashlight']);
?>

<html>
<body>
<p>Je legt de zaklamp weg.</p>
<p><a href="inventory.php">Terug</a></p>
</body>
</html>
