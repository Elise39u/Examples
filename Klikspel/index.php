<?php
session_start();
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
$setHP = getStat('curhp',$userID);
if($setHP <= 0) {
    // haven't set up the user's HP values yet - let's set those!
    setStat('curhp',$userID,175);
    setStat('maxhp',$userID,300);
    setStat('sethp',$userID,25);
    setStat('atk', $userID, '80');
    setStat('def', $userID, '100');
    setStat('mdef', $userID, '50');
    setStat('gc', $userID, '250');
    setStat('bankgc', $userID, '5000');
}


if (isset($_POST['submit'])) {
    $FirstName = $_POST["FirstName"];
    $LastName = $_POST["LastName"];
    $Email = $_POST["Email"];
    $Password = $_POST["Password"];
    $Username = $_POST["Username"];
    $required = array($FirstName, $LastName, $Email, $Password, $Username);

    if (in_array('', $required)) {
        $link_hippie = "http://localhost/Examplecode/Klikspel/fault.php";
        echo "<a class='item' href='" . $link_hippie . "'> Something left behind  </a>";
    } else {
        $sql = sprintf("SELECT Username From player WHERE Username = '%s'",
            mysqli_escape_string($mysqli, $Username));
        $result2 = mysqli_query($mysqli, $sql);
        $num_rows = mysqli_num_rows($result2);
        if ($num_rows >= 1) {
            echo "<div id='msg'> ALREADY REGISTERD ONCE </div>";
            $link_hyper = 'room.php';
            echo "<a class='item' href='" . $link_hyper . "'> GO ON PLEASE  </a>";
            echo "</br>";
            $_SESSION['username'] = $Username;
        } else {
            $sql = " INSERT INTO player (FirstName, LastName, Email, Password, Username) 
        VALUES ('$FirstName', '$LastName', '$Email', '$Password', '$Username')";
            mysqli_query($mysqli, $sql);
            $_SESSION['authenticated'] = true;
            $_SESSION['username'] = $Username;
            $link_hyper = 'room.php';
            echo "correct Friend";
            echo "</br>";
            echo "<a class='item' href='" . $link_hyper . "'> Regsiterd Succesfull  </a>";
            echo "</br>";
            setStat('atk', $userID, '80');
            setStat('def', $userID, '100');
            setStat('mdef', $userID, '50');
            setStat('gc', $userID, '250');
            setStat('bankgc', $userID, '5000');
        }
    }
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

$smarty->assign('inventory', $inventory);
$smarty->assign('attack',getStat('atk',$userID));
$smarty->assign('magic',getStat('mdef',$userID));
$smarty->assign('defence',getStat('def',$userID));
$smarty->assign('gold',getStat('gc',$userID));
$smarty->assign('inbank',getStat('bankgc',$userID));
$smarty->assign('currentHP',getStat('curhp',$userID));
$smarty->assign('maximumHP',getStat('maxhp',$userID));
$smarty->assign('pagetitle', $pagetitle);
$smarty->display("tpl/index.html.tpl");
