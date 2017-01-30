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
if (isset($_SESSION['Prison'])) {
    $area_id = 5;
}
if (isset($_SESSION['Town'])) {
    $area_id = 6;
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
    case "SatanHelper":
        $image =  "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/SatanHelper.png'>";
        break;
    case "Satan":
        $image =  "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/Satan.png'>";
        break;
    case "SatanDog":
        $image =  "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/SatanDog.png'>";
        break;
    case "NapalmZombie":
        $image =  "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/NapalmZombie.png'>";
        break;
    case "PrisonGuard":
        $image =  "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/PrisonGuards.png'>";
        break;
    case "George":
        $image =  "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/George.png'>";
        break;
    case "GasTree":
        $image =  "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/GasTree.png'>";
        break;
    case "HumanLion":
        $image =  "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/HumanLion.png'>";
        break;
    case "MutatedCat":
        $image =  "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/MutatedCat.png'>";
        break;
    case "MutatedDog":
        $image =  "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/MutatedDog.png'>";
        break;
    case "MutatedTurtle":
        $image =  "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/MutatedTurtle.png'>";
        break;
    case "TreeTroll":
        $image =  "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/TreeTroll.png'>";
        break;
    case "TreeWolf":
        $image =  "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/TreeWolf.png'>";
        break;
    case "TreeMutant":
        $image =  "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/TreeMutant.png'>";
        break;
    case "TreeGod":
        $image =  "<img class='Monster' src='http://localhost/Examplecode/Klikspel/img/TreeGod.png'>";
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
            $monster_exp = getMonsterStat('exp',$monsterID);
            $smarty->assign('exp',$monster_exp);
            $exp_rem = getStat('exp_rem',$userID);
            $level = getStat('lvl',$userID);
            $level_up = 0;
            $level2 = 0;
            $exp = getStat('exp',$userID);
            $Lol = $monster_exp + $exp;
            setStat('exp', $userID, $Lol);
            $exp_rem -= $monster_exp;
            if($exp >= $exp_rem) {
                if ($level >= 10 && $level <= 30) {
                $Upgrade_lvl = 5500+$exp_rem;
                setStat('exp_rem', $userID, $Upgrade_lvl);
                    unset($_SESSION['31t/m45']);
                    unset($_SESSION['45+']);
                    unset($_SESSION['10-']);
                    $_SESSION['10t/m30'] = true;
                } elseif ($level >= 31 && $level <= 45 ) {
                    $Upgrade_lvl = 17500+$exp_rem;
                    setStat('exp_rem', $userID, $Upgrade_lvl);
                    unset($_SESSION['10t/m30']);
                    unset($_SESSION['45+']);
                    unset($_SESSION['-10']);
                    $_SESSION['31t/m45'] = true;
                }
                elseif ($level >= 46) {
                    $Upgrade_lvl = 450000+$exp_rem;
                    setStat('exp_rem', $userID, $Upgrade_lvl);
                    unset($_SESSION['31t/m45']);
                    unset($_SESSION['10t/m30']);
                    unset($_SESSION['-10']);
                    $_SESSION['45+'] = true;
                }
                else {
                    $Upgrade_lvl = 1750+$exp_rem;
                    setStat('exp_rem', $userID, $Upgrade_lvl);
                    unset($_SESSION['45+']);
                    unset($_SESSION['10t/m30']);
                    unset($_SESSION['31t/m45']);
                    $_SESSION['-10'] = true;
                }
                $level +=1;
                $level2 = 1;
                $level_up = 1;
                setStat('lvl',$userID,$level);
            }
            if (isset($level_up)) {
                if ($level_up > 0) {
                    $smarty->assign('level_up', $level_up);
                }
            }
            setStat('gc', $userID, getStat('gc', $userID) + getMonsterStat('gc', $monsterID));
            $smarty->assign('won', 1);
            $smarty->assign('gold1', getMonsterStat('gc', $monsterID));
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
        elseif (isset($_SESSION['KichtenHall'])) {
            header('Location: PrisonHallKichten.php');
        }
        elseif (isset($_SESSION['BlockB'])) {
            header('Location: PrisonBlockB.php');
        }
        elseif (isset($_SESSION['CaveTown'])) {
            header('Location: TownCave.php');
        }
        elseif (isset($_SESSION['TownYard'])) {
            header('Location: TownYard.php');
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

$sql = mysqli_query($mysqli, "SELECT * FROM monster_stats WHERE stat_id = 15");
$num_rows = mysqli_num_rows($sql);

if ($num_rows == 0 ){
    $query5 = "SELECT id FROM monsters";
    $result4 = mysqli_query($mysqli, $query5);

    while ($row = mysqli_fetch_array($result4)) {
        $query6 = "INSERT INTO monster_stats(monster_id, stat_id, content) VALUES($row[0], 15, 100)";
        mysqli_query($mysqli, $query6);
    }
}

if (isset($_POST['submit'])) {
    if (isset($_POST['Defense'])) {
        $Defense = getStat('def', $userID);
        global $Hai;
        if (isset($_SESSION['-10'])) {
            $Hai = $Defense + 50;
        } elseif (isset($_SESSION['10t/m30'])) {
            $Hai = $Defense + 150;
        } elseif (isset($_SESSION['31t/m45'])) {
            $Hai = $Defense + 500;
        } elseif (isset($_SESSION['45+'])) {
            $Hai = $Defense + 1500;
        }
        if (isset($Hai)) {
            setStat('def', $userID, $Hai);
        }
        $smarty->assign('IncDef', 'Defense increased');
    } elseif (isset($_POST['Attack'])) {
        $Attack = getStat('atk', $userID);
        global $Hai;
        if (isset($_SESSION['-10'])) {
            $Hai = $Attack + 50;
        } elseif (isset($_SESSION['10t/m30'])) {
            $Hai = $Attack + 150;
        } elseif (isset($_SESSION['31t/m45'])) {
            $Hai = $Attack + 500;
        } elseif (isset($_SESSION['45+'])) {
            $Hai = $Attack + 1500;
        }
        if (isset($Hai)) {
            setStat('atk', $userID, $Hai);
        }
        $smarty->assign('IncAtk', 'Attack increased');
    }
    elseif (isset($_POST['MaxHP'])) {
        global $Hai;
        $MaxHP = getStat('maxhp', $userID);
        if (isset($_SESSION['-10'])) {
            $Hai = $MaxHP + 150;;
        } elseif (isset($_SESSION['10t/m30'])) {
            $Hai = $MaxHP + 500;
        } elseif (isset($_SESSION['31t/m45'])) {
            $Hai = $MaxHP + 1500;
        } elseif (isset($_SESSION['45+'])) {
            $Hai = $MaxHP + 7500;
        }
        if (isset($Hai)) {
            setStat('maxhp', $userID, $Hai);
        }
        $smarty->assign('IncHP', 'Max Hp increased');
    }
}
$smarty->assign('level',getStat('lvl',$userID));
$smarty->assign('experience',getStat('exp',$userID));
$smarty->assign('exp_remaining',getStat('exp_rem',$userID));
$smarty->assign('party', $party);
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