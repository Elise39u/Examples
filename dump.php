<!-- Maakt een tabel aan met de kopjes -->
<table>
<th> Naam </th> <th> leeftijd </th>
<?php 

// Maakt verbinding met de database
$link = mysqli_connect('localhost', 'root', '', 'test');

// Select onze tabel
$sql = "SELECT * FROM Dump";
// Zorgt er voor dat de query wordt uitgevoerd
$result = mysqli_quey($link, $sql);

// als we resultaat hebben loop er over heen
if ($result->num_rows > 0) {
	while ($row = $result->fetch_assoc()) {
		// Maak een lijstje met de benodige $var
		$post_Title = $row['title'];

		// Echo de benodigede $var into een tabel
		echo "<tr>
		<td>$post_Title</td>
		</tr>";
	}
}
// Als we niks vinden echo dit dan
else {
	echo "0 rows found";
}
</table>