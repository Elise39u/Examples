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
    $sql8 = "SELECT name FROM items WHERE id =$itemID";
    $result5 = mysqli_query($mysqli, $sql8);
    $Item = mysqli_fetch_assoc($result5);

    $query = sprintf("SELECT price FROM items WHERE id = '%s'",mysqli_real_escape_string($mysqli, $itemID));
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
                $smarty->assign('message', '1 more '. $Item['name'] . ' added!');
                $smarty->assign('Nope', 'No number has filled in');
                mysqli_query($mysqli, $sql);
            } else {
                $LOL = $cost * $Quantity;
                if ($Quantity < 0) {
                        $smarty->assign('Damm', 'A Negative number has been filed in');
                }
                elseif ($LOL > $gold) {
                    $LOL = 0;
                    $gold = 0;
                    $smarty->assign('NoNo', 'Not enough coins to buy');
                }
                else {
                    $sql = "UPDATE Inventory SET quantity = quantity + $Quantity WHERE item_id=$itemID";
                    mysqli_query($mysqli, $sql);
                    setStat('gc', $userID, ($gold - $LOL));
                    $smarty->assign('message', $Quantity . ' more ' .  $Item['name'] . '  added!');
                }
            }
        } else {
            foreach ($inventory as $Ok) {
                $Ok = $space;
                $space--;
            }
            if ($Quantity == '') {
                $sql = "INSERT INTO Inventory(player_id, item_id, space, quantity) VALUES ($userID, '$itemID', '$space', 1)";
                mysqli_query($mysqli, $sql);
                setStat('gc', $userID, ($gold - $cost));
                $smarty->assign('message', 'You Bought ' . $Item['name'] . '');
            }
            else {
                $LOL = $cost * $Quantity;
                if ($Quantity < 0) {
                    $smarty->assign('Damm', 'A Negative number has been filed in');
                }
                elseif ($LOL >= $gold) {
                    $LOL = 0;
                    $gold = 0;
                    $smarty->assign('NoNo', 'Not enough coins to buy');
                }
                else {
                    $sql = "INSERT INTO Inventory(player_id, item_id, space, quantity) VALUES ($userID, '$itemID', '$space', $Quantity)";
                    mysqli_query($mysqli, $sql);
                    setStat('gc', $userID, ($gold - $LOL));
                    $smarty->assign('message', 'You Bought ' . $Quantity . ' Up an '. $Item['name'] . '');
                    }
                }
            }
        }
    else {
        $smarty->assign('error','You cannot afford that ' . $Item['name'] . '');
    }
}

$Query4 = sprintf("SELECT id FROM items WHERE id IN(SELECT item_id FROM Inventory)");
$result4 = mysqli_query($mysqli, $Query4);
foreach ($result4 as $row) {
    global $itemID1;
    $itemID1 = $row['id'];
}


$Query = sprintf("SELECT * FROM Inventory");
$result9 = mysqli_query($mysqli, $Query);
while ($row = mysqli_fetch_assoc($result9)) {
    if ($row['quantity'] == 0) {
        $query = sprintf("DELETE FROM inventory WHERE player_id = '%s' AND item_id = '%s'",
            mysqli_real_escape_string($mysqli, $userID),
            mysqli_real_escape_string($mysqli, $itemID1));
    }
}

if(isset($_POST['sell-id'])) {
    if ($_POST['sell-id']) {
        $itemID = $_POST['sell-id'];
        $Quantity = $_POST['Quantity'];
        $query9 = sprintf("SELECT name FROM items WHERE id IN(SELECT $itemID FROM Inventory)",
            mysqli_real_escape_string($mysqli, $itemID));
        $result20 = mysqli_query($mysqli, $query9);

        while ($row = mysqli_fetch_assoc($result20)) {
            $ItemName = $row;
            $GLOBALS['ItemName'];
        }

        $query = sprintf("SELECT price FROM items WHERE id = '%s'", mysqli_real_escape_string($mysqli, $itemID));
        $result = mysqli_query($mysqli, $query);
        list($cost) = mysqli_fetch_row($result);
        $query = sprintf("SELECT quantity FROM Inventory WHERE player_id = '%s' AND item_id = '%s'",
            mysqli_real_escape_string($mysqli, $userID),
            mysqli_real_escape_string($mysqli, $itemID));
        $result = mysqli_query($mysqli, $query);
        list($quantity) = mysqli_fetch_row($result);

        if ($quantity <= 0){
            $query = sprintf("DELETE FROM inventory WHERE player_id = '%s' AND item_id = '%s'",
                mysqli_real_escape_string($mysqli, $userID),
                mysqli_real_escape_string($mysqli, $itemID));
            $gold = getStat('gc', $userID);
            $Fine = $cost * $Quantity;
            setStat('gc', $userID, ($gold + $Fine));
        }
        elseif($quantity < $Quantity) {
            $Quantity = 0;
            $smarty->assign('Much', 'Too much filled in');
        }
        elseif ($Quantity == "") {
            $Quantity = 1;
            if ($quantity <= $Quantity) {
                $smarty->assign('Delete', 'Last ' . $ItemName['name'] . ' sold ');
                $query = sprintf("DELETE FROM inventory WHERE player_id = '%s' AND item_id = '%s'",
                    mysqli_real_escape_string($mysqli, $userID),
                    mysqli_real_escape_string($mysqli, $itemID));
                $gold = getStat('gc', $userID);
                $Fine = $cost * $Quantity;
                setStat('gc', $userID, ($gold + $Fine));
            } else {
                $smarty->assign('One', 'No number filled in so assume one');
                $query = sprintf("UPDATE inventory SET quantity = quantity - 1 WHERE player_id = '%s' AND item_id = '%s'",
                    mysqli_real_escape_string($mysqli, $userID),
                    mysqli_real_escape_string($mysqli, $itemID));;
                $gold = getStat('gc', $userID);
                $Fine = $cost * $Quantity;
                setStat('gc', $userID, ($gold + $Fine));
            }
        }
        elseif ($quantity === $Quantity) {
            $query = sprintf("DELETE FROM inventory WHERE player_id = '%s' AND item_id = '%s'",
                mysqli_real_escape_string($mysqli, $userID),
                mysqli_real_escape_string($mysqli, $itemID));
            $gold = getStat('gc', $userID);
            $Fine = $cost * $Quantity;
            setStat('gc', $userID, ($gold + $Fine));
        }
        elseif ($quantity > 1) {
            $query = sprintf("UPDATE inventory SET quantity = quantity - $Quantity WHERE player_id = '%s' AND item_id = '%s'",
                mysqli_real_escape_string($mysqli, $userID),
                mysqli_real_escape_string($mysqli, $itemID));
            $gold = getStat('gc', $userID);
            $Fine = $cost * $Quantity;
            setStat('gc', $userID, ($gold + $Fine));
        } else {
            $query = sprintf("DELETE FROM inventory WHERE player_id = '%s' AND item_id = '%s'",
                mysqli_real_escape_string($mysqli, $userID),
                mysqli_real_escape_string($mysqli, $itemID));
            $gold = getStat('gc', $userID);
            $Fine = $cost * $Quantity;
            setStat('gc', $userID, ($gold + $Fine));
        }
        mysqli_query($mysqli, $query);
        $smarty->assign('message', 'You sold the ' .  $ItemName['name'] . '.');
    }
}


$query = "SELECT DISTINCT(id), name, price FROM items WHERE type = 'Usable' ORDER BY RAND() LIMIT 10;";
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