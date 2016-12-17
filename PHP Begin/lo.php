<!DOCTYPE html>
<html>
<head>
	<title>s</title>
</head>
<?php 
include_once 'menu.php';

//mysqli_connect("127.0.0.1", "my_user", "my_password", "my_db");
$conn = mysqli_connect("localhost", "root", "", "test");
if (!$conn) {
    echo "Error: Unable to connect to MySQL." . PHP_EOL;
    echo "Debugging errno: " . mysqli_connect_errno() . PHP_EOL;
    echo "Debugging error: " . mysqli_connect_error() . PHP_EOL;
    exit;
}

$sql = "SELECT * FROM landen";
$result = $conn->query($sql);

if ($result->num_rows > 0 ) {
while ($row = $result->fetch_assoc()) {
	echo "LandNaam:" . $row['LandNaam'] . " Is the name "; 
	echo "</br>"; 
	echo "City " . ($row['Hoofdstad']) . " is your captial"; 
	echo "</br></br>";
	}
} else {
	echo "No rows found ";
}

$conn->close();
?>
<body>

</body>
</html>