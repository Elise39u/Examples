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

$itemID = 123;
if($inventory == NULL) {
    $sql = "INSERT INTO Inventory(player_id, item_id, space, quantity) 
		VALUES ($userID, '$itemID', '$space', $count)";
    echo "<span style=\"color: white; \"> this $space left  </span></br>";
    if ($mysqli->query($sql) === TRUE) {
        echo "<span style=\"color: white; \"> New record created successfully </span>";
    } else {
        echo "Error: " . $sql . "<br>" . $mysqli->error;
    }
}

elseif(isset($inventory)) {
    $result = $mysqli->query("SELECT item_id FROM Inventory WHERE item_id = $itemID");
    if($result->num_rows > 0) {
        $sql = "UPDATE Inventory SET quantity = quantity + 1 WHERE item_id=$itemID";
        mysqli_query($mysqli, $sql);
        echo "<span style=\"color: white; \"> Exsist already Dork </span>";
    } else {
        foreach ($inventory as $Ok) {
            $Ok = $space;
            $space--;
        }
        $sql = "INSERT INTO Inventory(player_id, item_id, space, quantity) 
				VALUES ($userID, '$itemID', '$space', $count)";
        if ($space <= 0) {
            echo "<span style=\"color: white; \"> Because you have no space left </span>";
            die($space);
        }
        echo "this $space left </br>";
        if ($mysqli->query($sql) === TRUE) {
            echo "<span style=\"color: white; \">  New record created successfully </span>";
        } else {
            echo "<span style=\"color: white; \"> Error: " . $sql . "<br>" . $mysqli->error;"</span>";
        }
    }
}
else {
    echo "Wuuuttttt";
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
$_SESSION['Notebook'] = true;
$smarty->assign('inventory', $inventory);
$smarty->assign('attack',getStat('atk',$userID));
$smarty->assign('magic',getStat('mdef',$userID));
$smarty->assign('defence',getStat('def',$userID));
$smarty->assign('gold',getStat('gc',$userID));
$smarty->assign('inbank',getStat('bankgc',$userID));
$smarty->assign('currentHP',getStat('curhp',$userID));
$smarty->assign('maximumHP',getStat('maxhp',$userID));
$smarty->assign('pagetitle', $pagetitle);
$smarty->display("tpl/NoteBook.html.tpl");