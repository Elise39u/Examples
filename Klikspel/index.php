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
include_once ('inc/AntiXSS.php');

$query = sprintf("SELECT id FROM player WHERE UPPER(username) = UPPER('%s')",
    mysqli_real_escape_string($mysqli, $_SESSION['username']));
$result = mysqli_query($mysqli, $query);
list($value) = mysqli_fetch_row($result);
$userID = $value;

$pagetitle = "Mine game";
$setHP = getStat('curhp',$userID);
if (isset($_SESSION['username'])) {
    if ($setHP <= 0) {
        // haven't set up the user's HP values yet - let's set those!
        setStat('curhp', $userID, 175);
        setStat('maxhp', $userID, 300);
        setStat('sethp', $userID, 25);
        setStat('atk', $userID, '80');
        setStat('def', $userID, '100');
        setStat('mdef', $userID, '50');
        setStat('gc', $userID, '250');
        setStat('bankgc', $userID, '5000');
        setStat('phand', $userID, '');
        setStat('shand', $userID, '');
        $sql3 = sprintf("DELETE FROM inventory WHERE player_id = (SELECT id FROM player WHERE username = '%s')",
            mysqli_real_escape_string($mysqli, $_SESSION['username']));
        mysqli_query($mysqli, $sql3);
        $sql5 = sprintf("DELETE FROM party_members WHERE party_id = (SELECT id FROM party WHERE player_id=(
        SELECT id FROM player WHERE username='%s'))",
            mysqli_real_escape_string($mysqli, $_SESSION['username']));
        mysqli_query($mysqli, $sql5);

        $sql6 = "UPDATE npc_stats SET stat_id = 13 WHERE stat_id = 14";
        mysqli_query($mysqli, $sql6);
        $cookies = explode(';', $_SERVER['HTTP_COOKIE']);
        foreach ($cookies as $cookie) {
            $parts = explode('=', $cookie);
            $name = trim($parts[0]);
            setcookie($name, '', time() - 1000);
            setcookie($name, '', time() - 1000, '/');
        }
    }
}

if (isset($_POST['submit'])) {
    $FirstName = $_POST["FirstName"];
    $LastName = $_POST["LastName"];
    $Email = $_POST["Email"];
    $Password = $_POST["Password"];
    $Username = $_POST["Username"];
    $required = array($FirstName, $LastName, $Email, $Password, $Username);

    $data = AntiXSS::blacklistFilter($FirstName);
    $data1 = AntiXSS::blacklistFilter($LastName);
    $data2 = AntiXSS::blacklistFilter($Email);
    $data3 = AntiXSS::blacklistFilter($Username);
    $data4 = AntiXSS::blacklistFilter($Password);

    if (in_array('', $required)) {
        $link_hippie = "http://localhost/Examplecode/Klikspel/fault.php";
        echo "<a class='item' href='" . $link_hippie . "'> Something left behind  </a>";
    }

    elseif ($data ==  'XSS Detected!' || $data1 ==  'XSS Detected!' || $data2 ==  'XSS Detected!' ||
        $data3 ==  'XSS Detected!' || $data4 ==  'XSS Detected!') {
        echo '<span style="color: red; "> NO VAILD INPUT DETECTED </span>';
        $mysqli->close();
        session_destroy();
        $cookies = explode(';', $_SERVER['HTTP_COOKIE']);
        foreach($cookies as $cookie) {
            $parts = explode('=', $cookie);
            $name = trim($parts[0]);
            setcookie($name, '', time()-1000);
            setcookie($name, '', time()-1000, '/');
        }
    }

    else {
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

$sql5 = sprintf("DELETE FROM party_members WHERE party_id = (SELECT id FROM party WHERE player_id=(
        SELECT id FROM player WHERE username='%s'))",
    mysqli_real_escape_string($mysqli, $_SESSION['username']));
mysqli_query($mysqli, $sql5);

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
$smarty->display("tpl/index.html.tpl");
