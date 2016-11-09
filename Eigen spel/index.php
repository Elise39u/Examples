<?php
session_start();
global $space;
global $combat;
global $userID;
$space = 35;
// $_SESSION['username'] = $query = ("SELECT Username FROM player WHERE id = 1");
$userID = // Dat $userid de correct player selecteert
require_once ('inc/loadsmarty.php');
require_once ('inc/Location.class.php');
require_once ('inc/DBconnection.php');
require_once ('inc/Choice.class.php');
require_once ('inc/Inventory.class.php');
require_once ('inc/Items.class.php');
include_once ('inc/Monster.php');
include_once ('inc/playerstats.php');

$location_id =  (isset($_GET['location_id']) ? $_GET['location_id'] : 1);   // kijk welke locatie wordt gevraagd
$errors = [];       // hou fouten bij in deze array
$loc = new Location();  // maak lege locatie aan
$did_load_work = $loc->LoadFromDb($mysqli, $location_id);       // laad locatie en choices vanuit de database
if ($did_load_work == FALSE) {    // als het laden fout ging, voeg dan een error toe aan de array $errors
    array_push($errors, "This location does not exist in the database");
}

if($location_id == 22 ) {
    $_SESSION['Paddle'] = true;
}

if ($location_id == 23) {
    $_SESSION['Basebalbat'] = true;
}

if ($location_id == 24) {
    $_SESSION['Axe'] = true;
}

if ($location_id == 26) {
    $_SESSION['Hammer'] = true;
}

// Make Session End 2 when you reached location 27
if($location_id == 27) {
    $_SESSION['End2'] = true;
}

if (isset($loc->item_id)) {
    $_SESSION["Space"] = true;
}

    // $userID = 1;
    $setHP = getStat('sethp',$userID);
    if($setHP == 0) {
        // haven't set up the user's HP values yet - let's set those!
        getStat('atk',$userID);
        getStat('def',$userID);
        getStat('mdef',$userID);
        getStat('curhp',$userID);
        getStat('maxhp',$userID);
        getStat('sethp',$userID);
        getStat('gd', $userID);
    }

if ($loc->id == 97) {
    $query = sprintf("SELECT name FROM monsters ORDER BY RAND() LIMIT 1");
    $result = mysqli_query($mysqli, $query);
    list($monster) = mysqli_fetch_row($result);
    $smarty->assign('monster',$monster);

    switch ($monster) {
        case "Fire Margawa":
            echo "<img class='Monster' src='http://localhost/Eigen%20spel/img/FireMargwa.png'>";
            break;
        case "Shadow Margawa":
            echo "<img class='Monster' src='http://localhost/Eigen%20spel/img/ShadowMargwa.png'>";
            break;
        case "Margawa":
            echo "<img class='Monster' src='http://localhost/Eigen%20spel/img/Margawa.png'>";
            break;
        case "Hard Hitting Louis":
            echo "<img class='Monster' src='http://localhost/Eigen%20spel/img/Louis.png'>";
            break;
        case "Crazy Eric":
            echo "<img class='Monster' src='http://localhost/Eigen%20spel/img/Eric.png'>";
            break;
        case "Walker":
            echo "<img class='Monster' src='http://localhost/Eigen%20spel/img/Walker.png'>";
            break;
        case "Panzer Soldat":
            echo "<img  class='Monster' src='http://localhost/Eigen%20spel/img/Panzer.png'>";
            break;
        case "Floater":
            echo "<img class='Monster' src='http://localhost/Eigen%20spel/img/Floater.png'>";
            break;
        case "Goliath":
            echo "<img class='Monster' src='http://localhost/Eigen%20spel/img/Goliath.png'>";
            break;
        case "Insane Baker":
            echo "<img class='Monster' src='http://localhost/Eigen%20spel/img/Baker.png'>";
            break;
        case "Tank":
            echo "<img class='Monster' src='http://localhost/Eigen%20spel/img/Tank.png'>";
            break;
        case "Breeder":
            echo "<img class='Monster' src='http://localhost/Eigen%20spel/img/Breeder.png'>";
            break;
        case "Posion Zombie":
            echo "<img class='Monster' src='http://localhost/Eigen%20spel/img/PosionZombie.png'>";
            break;
        case "Ancestor":
            echo "<img class='Monster' src='http://localhost/Eigen%20spel/img/Ancestor.png'>";
            break;
        case "Smoker":
            echo "<img class='Monster' src='http://localhost/Eigen%20spel/img/Smoker.png' width='60%'>";
            break;
        case "Gang Member":
            echo "<img class='Monster' src='http://localhost/Eigen%20spel/img/GangMember.png'>";
            break;
        default:
            echo "<span style=\"color:#129898;\">Not the correct monster is showing";
    }

    $query = sprintf("SELECT id FROM player WHERE UPPER(username) = UPPER('%s')",
        mysqli_real_escape_string($mysqli, $_SESSION['username']));
    $result = mysqli_query($mysqli, $query);
    list($userID) = mysqli_fetch_row($result);

    if($_POST['action']) {
        if($_POST['action'] == 'Attack') {
            require_once 'inc/playerstats.php';       // player stats
            require_once 'inc/Monster.php'; // monster stats
            // to begin with, we'll retrieve our player and our monster stats
            $query = sprintf("SELECT id FROM player WHERE UPPER(username) = UPPER('%s')",
                mysqli_real_escape_string($mysqli, $_SESSION['username']));
            $result = mysqli_query($mysqli, $query);
            list($userID) = mysqli_fetch_row($result);
            // $userID = 1;
            $player = array (
                'name'    => $_SESSION['username'],
                'Attack'      => getStat('atk',$userID),
                'Defence'     => getStat('def',$userID),
                'curhp'       => getStat('curhp',$userID)
            );
            $query = sprintf("SELECT id FROM monsters WHERE name = '%s'",
                mysqli_real_escape_string($mysqli, $_POST['monster']));
            $result = mysqli_query($mysqli, $query);
            list($monsterID) = mysqli_fetch_row($result);
            $monster = array (
                'name'     => $_POST['monster'],
                'attack'       => getMonsterStat('atk',$monsterID),
                'defence'     => getMonsterStat('def',$monsterID),
                'curhp'       => getMonsterStat('maxhp',$monsterID)
            );
            var_dump($player);
            $combat = array();
            $turns = 0;
            while($player['curhp'] > 0 && $monster['curhp'] > 0) {
                if($turns % 2 != 0) {
                    $attacker = &$monster;
                    $defender = &$player;
                } else {
                    $attacker = &$player;
                    $defender = &$monster;
                }
                $damage = 0;
                if($attacker['attack'] > $defender['defence']) {
                    $damage = $attacker['attack'] - $defender['defence'];
                }
                $defender['curhp'] -= $damage;
                $combat[$turns] = array(
                    'attacker'  => $attacker['name'],
                    'defender'  => $defender['name'],
                    'damage'    => $damage
                );
                $turns++;
            }
            setStat('curhp',$userID,$player['curhp']);
            if($player['curhp'] > 0) {
                // player won
                setStat('gd',$userID,getStat('gd',$userID)+getMonsterStat('gd',$monsterID));
                $smarty->assign('won',1);
                $smarty->assign('gold',getMonsterStat('gd',$monsterID));
            } else {
                // monster won
                $smarty->assign('lost',1);
            }
            $smarty->assign('combat',$combat);
        }

        else {
            // Running away! Send them back to the main page
            header('Location: index.php?location_id=34');
        }
    }
}

// $userID = 1;
$smarty->assign('name', $_SESSION['username']);
$smarty->assign('attack',getStat('atk',$userID));
$smarty->assign('magic',getStat('mdef',$userID));
$smarty->assign('defence',getStat('def',$userID));
$smarty->assign('gold',getStat('gd',$userID));
$smarty->assign('currentHP',getStat('curhp',$userID));
$smarty->assign('maximumHP',getStat('maxhp',$userID));
$smarty->assign('combat',$combat);
$smarty->assign('pagetitle', 'Games to play');
$smarty->assign('errors', $errors);         // geef lege of gevulde array $errors mee
$smarty->assign('location', $loc);          // geef locatie (en daarin de choices) mee
$smarty->assign('location', $loc);          // geef locatie (en daarin de choices) mee
$smarty->display("tpl/index.html.tpl");

if (isset($_SESSION['Paddle']) || isset($_SESSION['End2']) || isset($_SESSION['Hammer']) || isset($_SESSION['Axe']) || isset($_SESSION['Basebalbat'])) {

            echo "<div id=\"msg\"> You have picked up the item";
            $converted = settype($location_id, 'integer');
            $converted = settype($loc->id, 'integer');
            echo "<br />";

    switch ($location_id) {
        case $location_id == 22:
            echo "You picked up the paddle";
            echo "<br />";
        break;
        case $location_id == 23;
            echo "You picked up the Basebalbat";
            echo "<br />";
        break;
        case $location_id == 24;
            echo "You picked up the Axe";
            echo "<br />";
            break;
        case $location_id == 26;
            echo "You picked up a hammer";
            echo "<br />";
            break;
        default:
            echo "no items has been picked up";
            echo "<br />";
    }
}

echo "<div id=\"msg\">";
if(isset($loc->item_id)) {
    print_r($loc->item_id); echo "</br>";
    if (isset($loc->item_id)) {
        if($loc->Inventory == NULL) {
            $sql = "INSERT INTO Inventory(player_id, item_id, space) VALUES ('1', '$loc->item_id', '$space')";
            echo "this $space left </br>";
            if ($mysqli->query($sql) === TRUE) {
                echo "New record created successfully";
            } else {
                echo "Error: " . $sql . "<br>" . $mysqli->error;
            }
        }
        elseif(isset($loc->item_id)) {
            $result = $mysqli->query("SELECT item_id FROM Inventory WHERE item_id = $loc->item_id");
            if($result->num_rows > 0) {
                echo "Exsist already Dork";
            } else {
                foreach ($loc->Inventory as $Ok) {
                    $Ok = $space;
                    $space--;
                }
                $sql = "INSERT INTO Inventory(player_id, item_id, space) VALUES ('1', '$loc->item_id', '$space')";
                if ($space <= 0) {
                     echo "<font color=white> Because you have no space left </font>";
                    die($space);
                }
                echo "this $space left </br>";
                if ($mysqli->query($sql) === TRUE) {
                    echo "New record created successfully";
                } else {
                    echo "Error: " . $sql . "<br>" . $mysqli->error;
                }
            }
        }
        else {
            echo "Wuuuttttt";
        }
    }
    else {
        echo "Nothing here";
    }
}
else {
    echo "Ehheeee so now......";
}

if ($location_id == 25 || $location_id == 29 || $location_id == 51 || $location_id == 52) {
    $sql = "TRUNCATE TABLE inventory";
    mysqli_query($mysqli, $sql);
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $FirstName =  $_POST["FirstName"];
    $LastName =  $_POST["LastName"];
    $Email    = $_POST["Email"] ;
    $Password = $_POST["Password"] ;
    $Username = $_POST["username"] ;
    $required = array('FirstName', 'LastName', 'Email', 'Password', 'Username');

    $error = false;
    foreach($required as $field) {
        if (empty($_POST[$field])) {
            $error = true;
        }
    }

    $result2 = mysqli_query($mysqli, "SELECT * FROM player");
    $num_rows = mysqli_num_rows($result2);
    if ($num_rows > 0) {
        echo "Exist alreday And you`re logged in";
    }
    else {
        $sql = " INSERT INTO player (FirstName, LastName, Email, Password, Username) 
        VALUES ('$FirstName', '$LastName', '$Email', '$Password', '$Username')";
        if ($mysqli->query($sql) === TRUE) {
            echo "New record created successfully";
        } else {
            echo "Error: " . $sql . "<br>" . $mysqli->error;
        }
    }
}

