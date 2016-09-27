<?php
session_start();
require_once ('inc/loadsmarty.php');
require_once ('inc/Location.class.php');
require_once ('inc/DBconnection.php');
require_once ('inc/Choice.class.php');
require_once ('inc/Inventory.class.php');

$location_id =  (isset($_GET['location_id']) ? $_GET['location_id'] : 1);   // kijk welke locatie wordt gevraagd
$errors = [];       // hou fouten bij in deze array
$loc = new Location();  // maak lege locatie aan
$did_load_work = $loc->LoadFromDb($mysqli, $location_id);       // laad locatie en choices vanuit de database
if ($did_load_work == false) {    // als het laden fout ging, voeg dan een error toe aan de array $errors
    array_push($errors, "This location does not exist in the database");
}
$smarty->assign('pagetitle', 'Games to play');
$smarty->assign('errors', $errors);         // geef lege of gevulde array $errors mee
$smarty->assign('location', $loc);          // geef locatie (en daarin de choices) mee
$smarty->display("tpl/index.html.tpl");

if($location_id == 22 or 23 or 24) {
    $_SESSION['Pickup'] = true;
}
// When player reached location 19 Make Session End 2
if ($location_id == 19) {
    $_SESSION['End2'] = true;
}
if (isset($_SESSION['Pickup'])) {

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