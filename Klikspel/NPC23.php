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

/*
 foreach($_COOKIE as $v){
    echo htmlentities($v, 6, 'UTF-8').'<br />';
}
*/

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
$smarty->display("tpl/NPC23.html.tpl");