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

if(isset($_POST['amount'])) {
    $amount = $_POST['amount'];
    $gold = getStat('gc',$userID);
    $needed = getStat('maxhp',$userID) - getStat('curhp',$userID);
    if($amount > $needed || $amount == '') {
        $amount = $needed;
    }
    if($amount > $gold) {
        $amount = $gold;
    }
    if($amount < $needed) {
        $amount = 0;
        $smarty->assign('info', 'Dont put a negative number');
    }
    setStat('gc',$userID,getStat('gc',$userID) - $amount);
    setStat('curhp',$userID,getStat('curhp',$userID) + $amount);
    $smarty->assign('healed',$amount);
}

if(isset($_POST['potion-id'])) {
    $potionID = $_POST['potion-id'];
    $Quantity = $_POST['Quantity'];
    $query = sprintf("SELECT price FROM items WHERE id = %s",mysqli_real_escape_string($mysqli, $potionID));
    $result = mysqli_query($mysqli, $query);
    list($cost) = mysqli_fetch_row($result);
    $gold = getStat('gc',$userID);
    if($gold > $cost) {
        $query = sprintf("SELECT item_id FROM Inventory WHERE item_id = '%s'",
            mysqli_real_escape_string($mysqli, $potionID));
        $result = mysqli_query($mysqli, $query);
        mysqli_fetch_row($result);
        if ($result->num_rows > 0) {
            if ($Quantity == 0) {
                $sql = "UPDATE Inventory SET quantity = quantity + 1 WHERE item_id=$potionID";
                mysqli_query($mysqli, $sql);
                setStat('gc', $userID, ($gold - $cost));
                $smarty->assign('message', '1 more Potion added!');
                $smarty->assign('Nope', 'No number has filled in');
            }
            else {
                $LOL = $cost * $Quantity;
                if ($Quantity < 0) {
                    $smarty->assign('Damm', 'A Negative number has been filed in');
                }
                elseif ($LOL >= $gold) {
                    $smarty->assign('NoNo', 'Not enough coins to buy');
                } else {
                    $sql = "UPDATE Inventory SET quantity = quantity + $Quantity WHERE item_id=$potionID";
                    mysqli_query($mysqli, $sql);
                    setStat('gc', $userID, ($gold - $LOL));
                    $smarty->assign('message', $Quantity . ' more Potions added!');
                }
            }
        }
         else {
             foreach ($inventory as $Ok) {
                 $Ok = $space;
                 $space--;
             }
             if ($Quantity == '') {
                 $sql = "INSERT INTO Inventory(player_id, item_id, space, quantity) VALUES ($userID, '$potionID', '$space', 1)";
                 mysqli_query($mysqli, $sql);
                 setStat('gc', $userID, ($gold - $cost));
                 $smarty->assign('message', 'You Bought that Potion!');
             }
             else {
                 $LOL = $cost * $Quantity;
                 if ($Quantity < 0) {
                     $smarty->assign('Damm', 'A Negative number has been filed in');
                 }
                 elseif ($LOL >= $gold) {
                     $smarty->assign('NoNo', 'Not enough coins to buy');
                 }
                 else {
                     $sql = "INSERT INTO Inventory(player_id, item_id, space, quantity) VALUES ($userID, '$potionID', '$space', $Quantity)";
                     mysqli_query($mysqli, $sql);
                     setStat('gc', $userID, ($gold - $LOL));
                     $smarty->assign('message', 'You Bought ' . $Quantity . ' Potions! ');
                 }
             }
         }
    }
    else {
        $smarty->assign('error','You cannot afford that Potion!');
    }
}
$query = "SELECT DISTINCT(id), name, price FROM items WHERE type = 'Potion' ORDER BY RAND() LIMIT 5;";
$result = mysqli_query($mysqli, $query);
$Potion = array();
while($row = mysqli_fetch_assoc($result)) {
    array_push($Potion,$row);
}

$smarty->assign('curhp',getStat('curhp',$userID));
$smarty->assign('maxhp',getStat('maxhp',$userID));
$smarty->assign('gold',getStat('gc',$userID));
$smarty->assign('potion',$Potion);
$smarty->assign('inventory', $inventory);
$smarty->assign('attack',getStat('atk',$userID));
$smarty->assign('magic',getStat('mdef',$userID));
$smarty->assign('defence',getStat('def',$userID));
$smarty->assign('gold',getStat('gc',$userID));
$smarty->assign('inbank',getStat('bankgc',$userID));
$smarty->assign('currentHP',getStat('curhp',$userID));
$smarty->assign('maximumHP',getStat('maxhp',$userID));
$smarty->assign('pagetitle', $pagetitle);
$smarty->display("tpl/Potion.html.tpl");