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

if (isset($_SESSION['Sand'])) {
    $area_id = 1;
}
if (isset($_SESSION['Station'])) {
    $area_id = 2;
}
if (isset($_SESSION['Ship'])) {
    $area_id = 3;
}
if (isset($_SESSION['Cave'])) {
    $area_id = 4;
}

// $area_id = (isset($_GET['area']) ? $_GET['area_id'] : 1);
$query = sprintf("SELECT monster FROM area_monsters WHERE area = %s ORDER BY RAND() LIMIT 1",
    mysqli_real_escape_string($mysqli, $area_id));
$result = mysqli_query($mysqli, $query);
list($monster_id) = mysqli_fetch_row($result);
$query = sprintf("SELECT name FROM monsters WHERE id = %s",
    mysqli_real_escape_string($mysqli, $monster_id));
$result = mysqli_query($mysqli, $query);
list($monster) = mysqli_fetch_row($result);
$smarty->assign('monster',$monster);

$query = sprintf("SELECT name FROM areas WHERE id = %s",
    mysqli_real_escape_string($mysqli, $area_id));
$result = mysqli_query($mysqli, $query);
list($area_name) = mysqli_fetch_row($result);
$smarty->assign('area',$area_name);
$smarty->assign('area_id',$area_id);


switch ($monster) {
    case "Fire Margawa":
        $image = "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/FireMargwa.png'>";
        break;
    case "Shadow Margawa":
        $image = "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/ShadowMargwa.png'>";
        break;
    case "Margawa":
        $image = "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/Margawa.png'>";
        break;
    case "Hard Hitting Louis":
        $image =  "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/Louis.png'>";
        break;
    case "Crazy Eric":
        $image = "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/Eric.png'>";
        break;
    case "Walker":
        $image = "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/Walker.png'>";
        break;
    case "Panzer Soldat":
        $image =  "<img  class='Monster' src='http://localhost/Examplecode/Klikspel/img/Panzer.png'>";
        break;
    case "Floater":
        $image = "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/Floater.png'>";
        break;
    case "Goliath":
        $image = "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/Goliath.png'>";
        break;
    case "Insane Baker":
        $image = "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/Baker.png'>";
        break;
    case "Tank":
        $image =  "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/Tank.png'>";
        break;
    case "Breeder":
        $image = "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/Breeder.png'>";
        break;
    case "Posion Zombie":
        $image = "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/PosionZombie.png'>";
        break;
    case "Ancestor":
        $image = "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/Ancestor.png'>";
        break;
    case "Smoker":
        $image = "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/Smoker.png'>";
        break;
    case "Gang Member":
        $image = "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/GangMember.png'>";
        break;
    case "Alien":
        $image = "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/Alien.png'>";
        break;
    case "Brute":
        $image = "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/Brute.png'>";
        break;
    case "Brutus":
        $image = "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/Brutus.png'>";
        break;
    case "Clown":
        $image = "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/Clown.png'>";
        break;
    case "Cosmunat":
        $image =  "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/Cosmunat.png'>";
        break;
    case "Grenadier":
        $image =  "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/Grenadier.png'>";
        break;
    case "Prison Zombie":
        $image =  "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/PrisonZombie.png'>";
        break;
    case "Ram":
        $image =  "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/Ram.png'>";
        break;
    case "Spiker":
        $image =  "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/Spiker.png'>";
        break;
    case "Thrasher":
        $image = "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/Thrasher.png'>";
        break;
    case "Wresteler":
        $image = "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/Wresteler.png'>";
        break;
    case "Orge":
        $image = "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/Orge.png'>";
        break;
    case "Dragon":
        $image =  "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/Dragon.png'>";
        break;
    case "Fishmen":
        $image = "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/Fishman.png'>";
        break;
    case "Gargoyle":
        $image =  "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/Gargoyle.png'>";
        break;
    case "Jumpfish":
        $image = "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/Jumpfish.png'>";
        break;
    case "Kraken":
        $image = "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/Kraken.png'>";
        break;
    case "Scorpion":
        $image =  "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/Scorpion.png'>";
        break;
    case "Spewer":
        $image = "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/Spewer.png'>";
        break;
    case "Denizen":
        $image = "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/Denizen.png'>";
        break;
    case "Avogadro":
        $image =  "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/Avogadro.png'>";
        break;
    case "CaveGuard":
        $image =  "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/CaveGuard.png'>";
        break;
    case "GiantTroll":
        $image =  "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/GiantTroll.png'>";
        break;
    case "CaveRat":
        $image =  "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/CaveRat.png'>";
        break;
    case "Lizard":
        $image =  "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/Lizard.png'>";
        break;
    case "Mutant":
        $image =  "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/Mutant.png'>";
        break;
    case "SmallSpider":
        $image =  "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/SpiderSmall.png'>";
        break;
    case "Spider":
        $image =  "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/Spider.png'>";
        break;
    case "Troll":
        $image =  "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/Troll.png'>";
        break;
    default:
        echo "<span style=\"color:#982356;\">Not the correct monster is showing </span>";
}
$smarty->assign('img', $image);
$query = sprintf("SELECT id FROM player WHERE UPPER(Username) = UPPER('%s')",
    mysqli_real_escape_string($mysqli, $_SESSION['username']));
$result = mysqli_query($mysqli, $query);
list($userID) = mysqli_fetch_row($result);

if(isset($_POST['action'])) {
    if ($_POST['action'] == 'Attack') {
        require_once 'inc/playerstats.php';       // player stats
        require_once 'inc/Monster.php'; // monster stats
        // to begin with, we'll retrieve our player and our monster stats
        $query = sprintf("SELECT id FROM player WHERE UPPER(username) = UPPER('%s')",
            mysqli_real_escape_string($mysqli, $_SESSION['username']));
        $result = mysqli_query($mysqli, $query);
        list($userID) = mysqli_fetch_row($result);
        // $userID = 1;
        $player = array(
            'name' => $_SESSION['username'],
            'attack' => getStat('atk', $userID),
            'defense' => getStat('def', $userID),
            'curhp' => getStat('curhp', $userID)
        );
        $phand = getStat('phand', $userID);
        $atk = getWeaponStat('atk', $phand);
        $player['attack'] += $atk;

        $phand = getStat('phand', $userID);
        $def = getWeaponStat('def', $phand);
        $player['defense'] += $def;

        $query = sprintf("SELECT id FROM monsters WHERE name = '%s'",
            mysqli_real_escape_string($mysqli, $_POST['monster']));
        $result = mysqli_query($mysqli, $query);
        list($monsterID) = mysqli_fetch_row($result);
        $monster = array(
            'name' => $_POST['monster'],
            'attack' => getMonsterStat('atk', $monsterID),
            'defense' => getMonsterStat('def', $monsterID),
            'curhp' => getMonsterStat('maxhp', $monsterID)
        );
        $combat = array();
        $turns = 0;
        while ($player['curhp'] > 0 && $monster['curhp'] > 0) {
            if ($turns % 2 != 0) {
                $attacker = &$monster;
                $defender = &$player;
            } else {
                $attacker = &$player;
                $defender = &$monster;
            }
            $damage = 0;
            if ($attacker['attack'] > $defender['defense']) {
                $damage = $attacker['attack'] - $defender['defense'];
            }
            if ($attacker['attack'] < $defender['defense']) {
                $damage = $attacker['attack'] = 15;
            }
            $defender['curhp'] -= $damage;
            $combat[$turns] = array(
                'attacker' => $attacker['name'],
                'defender' => $defender['name'],
                'damage' => $damage
            );
            $turns++;
        }
        setStat('curhp', $userID, $player['curhp']);
        if ($player['curhp'] > 0) {
            // player won
            setStat('gc', $userID, getStat('gc', $userID) + getMonsterStat('gc', $monsterID));
            $smarty->assign('won', 1);
            $smarty->assign('gold', getMonsterStat('gc', $monsterID));
            $rand = rand(0, 100);
            $query = sprintf("SELECT item_id FROM monster_items WHERE monster_id = %s AND rarity >= %s ORDER BY RAND() LIMIT 1",
                mysqli_real_escape_string($mysqli, $monsterID),
                mysqli_real_escape_string($mysqli, $rand));
            $result = mysqli_query($mysqli, $query);
            list($itemID) = mysqli_fetch_row($result);

            $query = sprintf("SELECT count(id) FROM inventory  WHERE player_id = '%s' AND item_id = '%s'",
                mysqli_real_escape_string($mysqli, $userID), mysqli_real_escape_string($mysqli, $itemID));
            $result = mysqli_query($mysqli, $query);
            list($dumb) = mysqli_fetch_row($result);
            foreach ($inventory as $Ok) {
                $Ok = $space;
                $space--;
            }
            if ($dumb > 0) {
                # already has one of the item
                $query = sprintf("UPDATE inventory SET quantity = quantity + 1 WHERE player_id = '%s' AND item_id = '%s'",
                    mysqli_real_escape_string($mysqli, $userID),
                    mysqli_real_escape_string($mysqli, $itemID));
            } else {
                # has none - new row
                $query = sprintf("INSERT INTO inventory(player_id, item_id, space, quantity) VALUES ($userID, '$itemID', '$space', $count)");
            }
            mysqli_query($mysqli, $query);

            # retrieve the item name, so that we can display it
            $query = sprintf("SELECT name FROM items WHERE id = %s",
                mysqli_real_escape_string($mysqli, $itemID));
            $result = mysqli_query($mysqli, $query);
            list($itemName) = mysqli_fetch_row($result);
            $smarty->assign('item', $itemName);
        } else {
            // monster won
            $smarty->assign('lost', 1);
        }
        $smarty->assign('combat', $combat);
    }
    else {
        if (isset($_SESSION['iel'])) {
        // Running away! Send them back to the last visted page
        header('Location: Sand.php');
        }
        elseif (isset($_SESSION['Nstation'])) {
            header('Location: Nstation.php');
        }
        elseif (isset($_SESSION['Bank'])) {
            header('Location: OBank.php');
        }
        elseif (isset($_SESSION['Nship'])) {
            header('Location: Nship.php');
        }
        elseif (isset($_SESSION['Deck'])) {
            header('Location: Deck.php');
        }
        elseif (isset($_SESSION['Yard'])) {
            header('Location: CaveY.php');
        }
        elseif (isset($_SESSION['CaveEnd'])) {
            header('Location: CaveLH.php');
        }
        else {
            header('Location: lake.php');
        }
    }
}

if (isset($_POST['monster'])) {
    if ($_POST['monster'] == "Scorpion") {
        $_SESSION['Scoripon'] = true;
    }
}

$party = array();
$query1 = sprintf("SELECT name FROM npc WHERE id =(SELECT npc_id FROM party_members)");
$result1 = mysqli_query($mysqli, $query1);
$row = mysqli_fetch_assoc($result1);
array_push($party, $row);

$smarty->assign('party', $party);
$smarty->assign('combat', $combat);
$smarty->assign('img', $image);
$smarty->assign('inventory', $inventory);
$smarty->assign('attack',getStat('atk',$userID));
$smarty->assign('magic',getStat('mdef',$userID));
$smarty->assign('defence',getStat('def',$userID));
$smarty->assign('gold',getStat('gc',$userID));
$smarty->assign('inbank',getStat('bankgc',$userID));
$smarty->assign('currentHP',getStat('curhp',$userID));
$smarty->assign('maximumHP',getStat('maxhp',$userID));
$smarty->display("tpl/Monster.html.tpl");