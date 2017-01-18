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

if (!isset($_COOKIE['Quest10_1'])) {
        setcookie('Quest10_1', false, time() + 2147483647, '', '', '', true);
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

    $sql2 = sprintf("SELECT stat_id FROM npc_stats WHERE npc_id= 10");
    $query = mysqli_query($mysqli, $sql2);
    $row = $query->fetch_row();

    if (in_array("13", $row)) {
        $update = "UPDATE npc_stats SET stat_id = 14 WHERE npc_id = 10";
        mysqli_query($mysqli, $update);

        $insert = sprintf("Insert Into party_members (party_id, npc_id) VALUES((SELECT id FROM party WHERE player_id=(
        SELECT id FROM player WHERE username='%s')), (
        SELECT id FROM npc WHERE id = 10))",
        mysqli_real_escape_string($mysqli, $_SESSION['username']));
        mysqli_query($mysqli, $insert);
        $_SESSION['Dumb'] = true;
        var_dump($insert);
    }
    elseif (isset($_COOKIE['10_1']) == true) {
        $update = "Update npc_stars SET stat_id = 13 WHERE npc_id = 10";
        mysqli_query($mysqli, $update);
    }
}

if (isset($_COOKIE['10_1'])) {
    if ($_COOKIE['10_1'] == true) {
        setcookie('Quest10_2', false, time() + 2146483647, '', '', '', true);
    }
}

if (isset($_COOKIE['Quest10_1'])) {
    if ($_COOKIE['Quest10_1'] == true) {
        if (isset($_SESSION['PageNpc10_1'])) {
            $_SESSION['PageNpc10_1']++;
        } else {
            $_SESSION['PageNpc10_1'] = 1;
        }
    }
}

if (isset($_COOKIE['Quest10_1'])) {
    if ($_COOKIE['Quest10_1'] == true) {
        $money = getStat('gc', $userID);
        $Hai = $money + 2450;
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

$smarty->assign('inventory', $inventory);
$smarty->assign('attack',getStat('atk',$userID));
$smarty->assign('magic',getStat('mdef',$userID));
$smarty->assign('defence',getStat('def',$userID));
$smarty->assign('gold',getStat('gc',$userID));
$smarty->assign('inbank',getStat('bankgc',$userID));
$smarty->assign('currentHP',getStat('curhp',$userID));
$smarty->assign('maximumHP',getStat('maxhp',$userID));
$smarty->assign('pagetitle', $pagetitle);
$smarty->display("tpl/NPC10.html.tpl");