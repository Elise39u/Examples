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

$hp = getStat('curhp', $userID);
$_SESSION['Dmg'] = 0;
$turns = 0;
$Hit1 = [];
$Pass1 = [];
$mine = 500;
$i = 0;
while ($turns < 5) {
    $var = rand(0,100);

    if ($var <= 25) {
        $i++;
        array_push($Hit1, "You hit a mine");
        $smarty->assign('Hit', $Hit1);
    } else {
        array_push($Pass1, "You passed a mine");
        $smarty->assign('Pass', $Pass1);
    }
    $turns++;
}
$_SESSION['Dmg'] = $mine * $i;

if ($turns >= 5) {
    $Ok = $hp - $_SESSION['Dmg'];
    setStat('curhp', $userID, $Ok);
    $smarty->assign('Damage', $_SESSION['Dmg']);
}
$Health = getStat('curhp', $userID);

if ($Health <= 0) {
    $smarty->assign("Dead", "Mines");
    $link = "http://localhost/Examplecode/Klikspel/index.php";
    echo "<a class='item' href='" . $link . "'> Game over  </a>";
} else {
    $smarty->assign("Yes", "You have made it go on");
    $linkie = "http://localhost/Examplecode/Klikspel/PrisonDocks.php";
    $link4 = "http://localhost/Examplecode/Klikspel/PrisonSea.php";
    echo "<a class='item' href='" . $linkie . "'> Go to the Prison  </a>"; echo "</br>";
    echo "<a class='item' href='" . $link4 . "'> Go to the Sea  </a>";
}

$party = array();
$query1 = sprintf("SELECT name FROM npc WHERE id =(SELECT npc_id FROM party_members)");
$result1 = mysqli_query($mysqli, $query1);
$row = mysqli_fetch_assoc($result1);
array_push($party, $row);

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
$smarty->display("tpl/Mine.html.tpl");