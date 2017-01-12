<?php
session_start();
global $combat;
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

$gold = getStat('gc',$userID);
if(isset($_POST['amount'])) {
    $amount = $_POST['amount'];
    if($_POST['action'] == 'Deposit') {
        if($amount > $gold || $amount == '') {
            // the user input something weird - assume the maximum
            $amount = $gold;
        }
        else {
            if($amount < 0) {
                $amount = 0;
                $smarty->assign('info', 'Dont put a negative number');
            }
        }
        setStat('gc',$userID,getStat('gc',$userID) - $amount);
        setStat('bankgc',$userID,getStat('bankgc',$userID)+$amount);
        $smarty->assign('deposited',$amount);
    } else {
        $bankGold = getStat('bankgc',$userID);
        if($amount > $bankGold || $amount == '') {
            // the user input something weird again - again, assume the maximum
            $amount = $bankGold;
        }
        else {
            if($amount < 0) {
                $amount = 0;
                $smarty->assign('info', 'Dont put a negative number');
            }
        }
        setStat('gc',$userID,getStat('gc',$userID) + $amount);
        setStat('bankgc',$userID,getStat('bankgc',$userID)-$amount);
        $smarty->assign('withdrawn',$amount);
    }
}

$smarty->assign('inventory', $inventory);
$smarty->assign('attack',getStat('atk',$userID));
$smarty->assign('magic',getStat('mdef',$userID));
$smarty->assign('defence',getStat('def',$userID));
$smarty->assign('gold',getStat('gc',$userID));
$smarty->assign('inbank',getStat('bankgc',$userID));
$smarty->assign('currentHP',getStat('curhp',$userID));
$smarty->assign('maximumHP',getStat('maxhp',$userID));
$smarty->assign('pagetitle', $pagetitle);
$smarty->display("tpl/Counter.html.tpl");