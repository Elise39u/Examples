<?php
session_start();
global $space;
global $inventory;
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

$pagetitle = "Mine game";

if(isset($_POST['item-id'])) {
    $itemID = $_POST['item-id'];
    $Quantity = $_POST['Quantity'];
    $query = sprintf("SELECT price FROM items WHERE id = %s",mysqli_real_escape_string($mysqli, $itemID));
    $result = mysqli_query($mysqli, $query);
    list($cost) = mysqli_fetch_row($result);
    $gold = getStat('gc',$userID);
    if($gold > $cost) {
        setStat('gc',$userID,($gold - $cost));
        $query = sprintf("SELECT count(id) FROM Inventory WHERE player_id = '%s' AND item_id = '%s'",
            mysqli_real_escape_string($mysqli, $userID),
            mysqli_real_escape_string($mysqli, $itemID));
        $result = mysqli_query($mysqli, $query);
        list($Apple) = mysqli_fetch_row($result);
        if ($Apple > 0) {
            if ($Quantity == 0) {
                $sql = "UPDATE Inventory SET quantity = quantity + 1 WHERE item_id=$itemID";
                setStat('gc', $userID, ($gold - $cost));
                $smarty->assign('message', '1 more item added!');
                $smarty->assign('Nope', 'No number has filled in');
            } else {
                $sql = "UPDATE Inventory SET quantity = quantity + $Quantity WHERE item_id=$itemID";
                mysqli_query($mysqli, $sql);
                $LOL = $cost * $Quantity;
                if ($LOL < $gold) {
                    $smarty->assign('Jup', 'No more coins left to buy it');
                }
                setStat('gc', $userID, ($gold - $LOL));
                $smarty->assign('message', '1 more Item added!');
            }
            $smarty->assign('message', '1 more Item added!');
        } else {
            foreach ($inventory as $Ok) {
                $Ok = $space;
                $space--;
            }
            if ($Quantity == '') {
                $sql = "INSERT INTO Inventory(player_id, item_id, space, quantity) VALUES ($userID, '$itemID', '$space', 1)";
                mysqli_query($mysqli, $sql);
                setStat('gc', $userID, ($gold - $cost));
                $smarty->assign('message', 'You Bought that Item!');
            }
            else {
                $sql = "INSERT INTO Inventory(player_id, item_id, space, quantity) VALUES ($userID, '$itemID', '$space', $Quantity)";
                mysqli_query($mysqli, $sql);$LOL = $cost * $Quantity;
                if ($LOL < $gold) {
                    $smarty->assign('Jup', 'No more coins left to buy it');
                    setStat('gc', $userID, ($gold - $LOL));
                    $smarty->assign('message', 'You Bought This  '. $Quantity . ' Items!');
                }
            }
        }
    }
    else {
        $smarty->assign('error','You cannot afford that item!');
    }
}
if(isset($_POST['sell-id'])) {
    if ($_POST['sell-id']) {
        $itemID = $_POST['sell-id'];
        $query = sprintf("SELECT price FROM items WHERE id = '%s'", mysqli_real_escape_string($mysqli, $itemID));
        $result = mysqli_query($mysqli, $query);
        list($cost) = mysqli_fetch_row($result);
        $gold = getStat('gc', $userID);
        setStat('gc', $userID, ($gold + $cost));
        $query = sprintf("SELECT quantity FROM Inventory WHERE player_id = '%s' AND item_id = '%s'",
            mysqli_real_escape_string($mysqli, $userID),
            mysqli_real_escape_string($mysqli, $itemID));
        $result = mysqli_query($mysqli, $query);
        list($quantity) = mysqli_fetch_row($result);
        if ($quantity > 1) {
            $query = sprintf("UPDATE inventory SET quantity = quantity - 1 WHERE player_id = '%s' AND item_id = '%s'",
                mysqli_real_escape_string($mysqli, $userID),
                mysqli_real_escape_string($mysqli, $itemID));
        } else {
            $query = sprintf("DELETE FROM inventory WHERE player_id = '%s' AND item_id = '%s'",
                mysqli_real_escape_string($mysqli, $userID),
                mysqli_real_escape_string($mysqli, $itemID));
        }
        mysqli_query($mysqli, $query);
        $smarty->assign('message', 'You sold the item.');
    }
}


$query = "SELECT DISTINCT(id), name, price FROM items WHERE type = 'Usable' ORDER BY RAND() LIMIT 5;";
$result = mysqli_query($mysqli, $query);
$items = array();
while($row = mysqli_fetch_assoc($result)) {
    array_push($items,$row);
}
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

$smarty->assign('items',$items);
$smarty->assign('inventory', $inventory);
$smarty->assign('attack',getStat('atk',$userID));
$smarty->assign('magic',getStat('mdef',$userID));
$smarty->assign('defence',getStat('def',$userID));
$smarty->assign('gold',getStat('gc',$userID));
$smarty->assign('inbank',getStat('bankgc',$userID));
$smarty->assign('currentHP',getStat('curhp',$userID));
$smarty->assign('maximumHP',getStat('maxhp',$userID));
$smarty->assign('pagetitle', $pagetitle);
$smarty->display("tpl/ItemShop.html.tpl");