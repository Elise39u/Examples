<?php
session_start();
global $space;
$space = 35;
require_once ('inc/loadsmarty.php');
require_once ('inc/Location.class.php');
require_once ('inc/DBconnection.php');
require_once ('inc/Choice.class.php');
require_once ('inc/Inventory.class.php');
require_once ('inc/Items.class.php');

$location_id =  (isset($_GET['location_id']) ? $_GET['location_id'] : 1);   // kijk welke locatie wordt gevraagd
$errors = [];       // hou fouten bij in deze array
$loc = new Location();  // maak lege locatie aan
$did_load_work = $loc->LoadFromDb($mysqli, $location_id);       // laad locatie en choices vanuit de database
if ($did_load_work == FALSE) {    // als het laden fout ging, voeg dan een error toe aan de array $errors
    array_push($errors, "This location does not exist in the database");
}

if($location_id == 22 ) {
    $_SESSION['Paddle'] = true;
}

if ($location_id == 23) {
    $_SESSION['Basebalbat'] = true;
}

if ($location_id == 24) {
    $_SESSION['Axe'] = true;
}

if ($location_id == 26) {
    $_SESSION['Hammer'] = true;
}

// Make Session End 2 when you reached location 27
if($location_id == 27) {
    $_SESSION['End2'] = true;
}

if (isset($loc->item_id)) {
    $_SESSION["Space"] = true;
}

$smarty->assign('pagetitle', 'Games to play');
$smarty->assign('errors', $errors);         // geef lege of gevulde array $errors mee
$smarty->assign('location', $loc);          // geef locatie (en daarin de choices) mee
$smarty->assign('location', $loc);          // geef locatie (en daarin de choices) mee
$smarty->display("tpl/index.html.tpl");

if (isset($_SESSION['Paddle']) || isset($_SESSION['End2']) || isset($_SESSION['Hammer']) || isset($_SESSION['Axe']) || isset($_SESSION['Basebalbat'])) {

            echo "<div id=\"msg\"> You have picked up the item";
            $converted = settype($location_id, 'integer');
            $converted = settype($loc->id, 'integer');
            echo "<br />";

    switch ($location_id) {
        case $location_id == 22:
            echo "You picked up the paddle";
            echo "<br />";
        break;
        case $location_id == 23;
            echo "You picked up the Basebalbat";
            echo "<br />";
        break;
        case $location_id == 24;
            echo "You picked up the Axe";
            echo "<br />";
            break;
        case $location_id == 26;
            echo "You picked up a hammer";
            echo "<br />";
            break;
        default:
            echo "no items has been picked up";
            echo "<br />";
    }
}

echo "<div id=\"msg\">";
if(isset($loc->item_id)) {
    print_r($loc->item_id); echo "</br>";
    if (isset($loc->item_id)) {
        if($loc->Inventory == NULL) {
            $sql = "INSERT INTO Inventory(player_id, item_id, space) VALUES ('1', '$loc->item_id', '$space')";
            echo "this $space left </br>";
            if ($mysqli->query($sql) === TRUE) {
                echo "New record created successfully";
            } else {
                echo "Error: " . $sql . "<br>" . $mysqli->error;
            }
        }
        elseif(isset($loc->item_id)) {
            $result = $mysqli->query("SELECT item_id FROM Inventory WHERE item_id = $loc->item_id");
            if($result->num_rows > 0) {
                echo "Exsist already Dork";
            } else {
                foreach ($loc->Inventory as $Ok) {
                    $Ok = $space;
                    $space--;
                }
                $sql = "INSERT INTO Inventory(player_id, item_id, space) VALUES ('1', '$loc->item_id', '$space')";
                if ($space <= 0) {
                     echo "<font color=white> Because you have no space left </font>";
                    die($space);
                }
                echo "this $space left </br>";
                if ($mysqli->query($sql) === TRUE) {
                    echo "New record created successfully";
                } else {
                    echo "Error: " . $sql . "<br>" . $mysqli->error;
                }
            }
        }
        else {
            echo "Wuuuttttt";
        }
    }
    else {
        echo "Nothing here";
    }
}
else {
    echo "Ehheeee so now......";
}

if ($location_id == 25 || $location_id == 29 || $location_id == 51 || $location_id == 52) {
    $sql = "TRUNCATE TABLE inventory";
    mysqli_query($mysqli, $sql);
}