<?php
$mysqli = new mysqli('localhost', 'root', '', 'klikspel');

if ($mysqli->connect_error) {
    echo "Failed to connect to MySQL: (" . $mysqli->connect_error . ") " . $mysqli->connect_error;
}