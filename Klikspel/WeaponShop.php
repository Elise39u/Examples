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

$phand = getStat('phand',$userID);
$query = "SELECT DISTINCT(id), name, price FROM items WHERE type = 'Weapon' ORDER BY RAND() LIMIT 5 ;";
$result = mysqli_query($mysqli, $query);
$weapons = array();
while($row = mysqli_fetch_assoc($result)) {
    array_push($weapons,$row);
}

$shand = getStat('shand',$userID);
$phand_query = sprintf("SELECT name FROM items WHERE id = %s",
    mysqli_real_escape_string($mysqli, $phand));
$result = mysqli_query($mysqli, $phand_query);
if($result) {
    list($phand_name) = mysqli_fetch_row($result);
    $smarty->assign('phand',$phand_name);
}
$shand_query = sprintf("SELECT name FROM items WHERE id = %s",
    mysqli_real_escape_string($mysqli, $shand));
$result = mysqli_query($mysqli, $shand_query);
if($result) {
    list($shand_name) = mysqli_fetch_row($result);
    $smarty->assign('shand',$shand_name);
}

if(isset($_POST['swap'])) {
    setStat('phand',$userID,$shand);
    setStat('shand',$userID,$phand);
    $temp = $shand;
    $shand = $phand;
    $phand = $temp;
}
if (isset($_POST['sell'])) {
    $weaponID = getStat($_POST['sell'],$userID);
    $query = sprintf("SELECT price FROM items WHERE id = %s",mysqli_real_escape_string($mysqli, $weaponID));
    $result = mysqli_query($mysqli, $query);
    list($price) = mysqli_fetch_row($result);

    $gold = getStat('gc',$userID);
    setStat('gc',$userID,($gold + $price));
    setStat($_POST['sell'],$userID,'');
    $phand = getStat('phand',$userID);
    $shand = getStat('shand',$userID);
}
if(isset($_POST['weapon-id'])) {
    $weaponID = $_POST['weapon-id'];
    $query = sprintf("SELECT price FROM items WHERE id = %s",mysqli_real_escape_string($mysqli, $weaponID));
    $result = mysqli_query($mysqli, $query);
    list($cost) = mysqli_fetch_row($result);
    $gold = getStat('gc',$userID);
    if($gold > $cost) {
        // subtract gold, equip weapon, go from there.
        if(!$phand) {
            setStat('phand',$userID,$weaponID);
            setStat('gc',$userID,($gold - $cost));
            $phand = $weaponID;
            $smarty->assign('message','You equipped the weapon in your primary hand.');
        } else {
            if(!$shand) {
                setStat('shand',$userID,$weaponID);
                setStat('gc',$userID,($gold - $cost));
                $shand = $weaponID;
                $smarty->assign('message','You equipped the weapon in your secondary hand.');
            } else {
                $smarty->assign('error','You already have two weapons! You must sell one before equipping another one.');
            }
        }
    } else {
        $smarty->assign('error','You cannot afford that weapon!');
    }
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

$smarty->assign('level',getStat('lvl',$userID));
$smarty->assign('experience',getStat('exp',$userID));
$smarty->assign('exp_remaining',getStat('exp_rem',$userID));
$smarty->assign('party', $party);
$smarty->assign('weapons', $weapons);
$smarty->assign('inventory', $inventory);
$smarty->assign('attack',getStat('atk',$userID));
$smarty->assign('magic',getStat('mdef',$userID));
$smarty->assign('defence',getStat('def',$userID));
$smarty->assign('gold',getStat('gc',$userID));
$smarty->assign('inbank',getStat('bankgc',$userID));
$smarty->assign('currentHP',getStat('curhp',$userID));
$smarty->assign('maximumHP',getStat('maxhp',$userID));
$smarty->assign('pagetitle', $pagetitle);
$smarty->display("tpl/WeaponShop.html.tpl");