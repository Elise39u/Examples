<?php
session_start();
global $space;
global $count;
$space = 50;
$count = 1;
require_once ('inc/loadsmarty.php');
require_once ('inc/DBconnection.php');
include_once ('inc/playerstats.php');
include_once ('inc/Monster.php');
include_once ('inc/ItemStats.php');
include_once ('inc/WeaponStat.php');
include_once('inc/ChopperLocation.class.php');
include_once('inc/ChopperChoice.class.php');
global $location_id;

if (isset($_SESSION['Chop_Three'])) {
    $location_id = (isset($_GET['location_id']) ? $_GET['location_id'] : 3);   // kijk welke locatie wordt gevraagd
} elseif (isset($_SESSION['Chop_two'])) {
    $location_id = (isset($_GET['location_id']) ? $_GET['location_id'] : 2);   // kijk welke locatie wordt gevraagd
}   elseif (isset($_SESSION['Chop_One']) || isset($_SESSION['Chopper'])) {
    $location_id = (isset($_GET['location_id']) ? $_GET['location_id'] : 1);   // kijk welke locatie wordt gevraagd
} elseif (isset($_SESSION['Chop_Four'])) {
    $location_id = (isset($_GET['location_id']) ? $_GET['location_id'] : 4);   // kijk welke locatie wordt gevraagd
}
$chop = new Chopper_Location();  // maak lege locatie aan
$did_load_work = $chop->LoadFromDb($mysqli, $location_id);       // laad locatie en choices vanuit de database

$query = sprintf("SELECT id FROM player WHERE UPPER(username) = UPPER('%s')",
    mysqli_real_escape_string($mysqli, $_SESSION['username']));
$result = mysqli_query($mysqli, $query);
list($value) = mysqli_fetch_row($result);
$userID = $value;

$pagetitle = "Mine game";

$inventory = array();
$query = sprintf("SELECT * FROM inventory WHERE player_id = '%s'",
    mysqli_real_escape_string($mysqli, $userID));
$result = mysqli_query($mysqli, $query);

while ($row = mysqli_fetch_assoc($result)) {
    $item_query = sprintf("SELECT name FROM items WHERE id = '%s'",
        mysqli_real_escape_string($mysqli, $row['item_id']));
    $item_result = mysqli_query($mysqli, $item_query);
    list($row['name']) = mysqli_fetch_row($item_result);
    array_push($inventory, $row);
}

$party = array();
$query1 = sprintf("SELECT name FROM npc WHERE id IN(SELECT npc_id FROM party_members WHERE party_id=(
    SELECT id FROM party WHERE player_id=
    (SELECT id FROM player WHERE username = '%s')))",
    mysqli_real_escape_string($mysqli, $_SESSION['username']));;
$result1 = mysqli_query($mysqli, $query1);
if ($result1 == false) {}
else {
    while ($row = mysqli_fetch_assoc($result1))
    array_push($party, $row);
}

if ($chop->id == 3) {
    unset($_SESSION['Chop_One']);
    unset($_SESSION['Chop_two']);
    unset($_SESSION['Chop_Four']);
    $_SESSION['Chop_Three'] = true;
} elseif ($chop->id == 2) {
    $_SESSION['Chop_two'] = true;
    unset($_SESSION['Chop_One']);
    unset($_SESSION['Chop_Three']);
    unset($_SESSION['Chop_Four']);
}
elseif ($chop->id == 4) {
    $_SESSION['Chop_Four'] = true;
    unset($_SESSION['Chop_One']);
    unset($_SESSION['Chop_Tow']);
    unset($_SESSION['Chop_Three']);
}
else {
    $_SESSION['Chop_One'] = true;
    unset($_SESSION['Chop_two']);
    unset($_SESSION['Chop_Three']);
    unset($_SESSION['Chop_Four']);
}

unset($_SESSION['Chopper']);
$smarty->assign('level',getStat('lvl',$userID));
$smarty->assign('experience',getStat('exp',$userID));
$smarty->assign('exp_remaining',getStat('exp_rem',$userID));
$smarty->assign('party', $party);
$smarty->assign('inventory', $inventory);
$smarty->assign('attack',getStat('atk',$userID));
$smarty->assign('magic',getStat('mdef',$userID));
$smarty->assign('defence',getStat('def',$userID));
$smarty->assign('gold',getStat('gc',$userID));
$smarty->assign('inbank',getStat('bankgc',$userID));
$smarty->assign('currentHP',getStat('curhp',$userID));
$smarty->assign('maximumHP',getStat('maxhp',$userID));
$smarty->assign('pagetitle', $pagetitle);
$smarty->assign('location', $chop);
$smarty->display("tpl/Chopper.html.tpl");