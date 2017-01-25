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

if (!isset($_COOKIE['Quest21'])) {
    setcookie('Quest21', false, time() + 2147483647, '', '', '', true);
    $sql = sprintf("SELECT * FROM party WHERE player_id = (SELECT id FROM player WHERE username = '%s')",
        mysqli_real_escape_string($mysqli, $_SESSION['username']));
    $party = mysqli_query($mysqli, $sql);

    if (mysqli_num_rows($party) > 0) {
    }
    else{
        $sql3 = sprintf("INSERT INTO party(player_id) VALUES ((SELECT id FROM player WHERE username = '%s'))",
            mysqli_real_escape_string($mysqli, $_SESSION['username']));
        mysqli_query($mysqli, $sql3);
    }

    $sql2 = sprintf("SELECT stat_id FROM npc_stats WHERE npc_id= 21");
    $query = mysqli_query($mysqli, $sql2);
    $row = $query->fetch_row();

    if ($_SESSION['Emma2'] == true) {}
    elseif (in_array("13", $row)) {
    $update = "UPDATE npc_stats SET stat_id = 14 WHERE npc_id = 21";
    mysqli_query($mysqli, $update);

    $insert = sprintf("Insert Into party_members (party_id, npc_id) VALUES((SELECT id FROM party WHERE player_id=(
        SELECT id FROM player WHERE username='%s')), (
        SELECT id FROM npc WHERE id = 21))",
        mysqli_real_escape_string($mysqli, $_SESSION['username']));
    mysqli_query($mysqli, $insert);
    $_SESSION['Emma'] = true;}
}

if (isset($_COOKIE['Quest21'])) {
    if ($_COOKIE['Quest21'] == true) {
        if (isset($_SESSION['PageNpc21'])) {
            $_SESSION['PageNpc21']++;
        } else {
            $_SESSION['PageNpc21'] = 1;
        }
    }
}

if (isset($_COOKIE['Quest21'])) {
    if ($_COOKIE['Quest21'] == true) {
        $money = getStat('gc', $userID);
        $Hai = $money + 450;
        if (isset($Hai)) {
            setStat('gc', $userID, $Hai);
        }
    }
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
$smarty->display("tpl/NPC21.html.tpl");