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

$actions = array('L_Red_potion' => 'Potion', 'D_Red_potion' => 'Potion', 'L_Purple_potion' => 'use_L_Purple_potion',
    'Purple_potion' => 'use_Purple_potion', 'D_Purple_potion' => 'use_D_Purple_potion', 'L_Cyan_potion' => 'use_L_Cyan_potion',
    'D_Cyan_potion' => 'use_D_Cyan_potion', 'L_Orange_potion' => 'use_L_Orange_potion', 'D_Orange_potion' => 'use_D_Orange_potion',
    'L_Yellow_potion' => 'use_L_Yellow_potion', 'D_Yellow_potion' => 'use_D_Yellow_potion', 'L_Green_potion' => 'use_L_Green_potion',
    'Green_potion' => 'use_Green_potion', 'D_Green_potion' => 'use_D_Green_potion', 'L_Pink_potion' => 'use_L_Pink_potion',
    'D_Pink_potion' => 'use_D_Pink_potion', 'Rainbow_potion' => 'use_Rainbow_potion', 'item' => 'use_item', 'Blackpotion' => 'use_Blackpotion',
    'SerectPotion' => 'use_SerectPotion', 'GrayPotion' => 'use_GrayPotion', '' => 'OK');

if (isset($_POST['item-id'])) {
    $itemID = $_POST['item-id'];
    $Quantity = $_POST['Quantity'];
    $GLOBALS['Quantity'] = $Quantity;
    $query2 = sprintf("SELECT quantity FROM inventory WHERE player_id = '%s' AND id = '%s'",
        mysqli_real_escape_string($mysqli, $userID),
        mysqli_real_escape_string($mysqli, $_POST['item-id']));
    $result20 = mysqli_query($mysqli, $query2);
    list($Lol) = mysqli_fetch_row($result20);

    if ($Lol < $Quantity) {
        $Quantity = 0;
        $token = '';
        $actions[$token] = 'OK';
    }
    else {
        $query = sprintf("SELECT item_id FROM inventory WHERE player_id = '%s' AND id = '%s'",
            mysqli_real_escape_string($mysqli, $userID),
            mysqli_real_escape_string($mysqli, $_POST['item-id']));
        $result = mysqli_query($mysqli, $query);
        list($itemID) = mysqli_fetch_row($result);
        $token = getItemStat('token', $itemID);
    }

    $query = sprintf("SELECT quantity FROM inventory WHERE player_id = '%s' AND item_id = '%s'",
        mysqli_real_escape_string($mysqli, $userID), mysqli_real_escape_string($mysqli, $itemID));
    $result = mysqli_query($mysqli, $query);
    list($quantity) = mysqli_fetch_row($result);
    if ($quantity < $Quantity) {
        $Quantity = 0;
        $GLOBALS['Quantity'] = 0;
        $smarty->assign('Much', 'Too much filled in');
    }
    elseif ($Quantity > $quantity) {
        $Quantity = 0;
        $GLOBALS['Quantity'] = 0;
        $smarty->assign('Much', 'Too much filled in');
    }
    elseif ($Quantity === "") {
        $Quantity = 1;
        if ($quantity <= $Quantity) {
            $smarty->assign('Delete', 'Last one used');
            $query = sprintf("DELETE FROM inventory WHERE player_id = '%s' AND item_id = '%s'",
                mysqli_real_escape_string($mysqli, $userID),
                mysqli_real_escape_string($mysqli, $itemID));
            mysqli_query($mysqli, $query);
            if ($token == '0') {}
            else {
                call_user_func($actions[$token]);
            }
        } else {
            $smarty->assign('One', 'No number filled in so assume one');
            $query = sprintf("UPDATE inventory SET quantity = quantity - 1 WHERE player_id = '%s' AND item_id = '%s'",
                mysqli_real_escape_string($mysqli, $userID),
                mysqli_real_escape_string($mysqli, $itemID));
            mysqli_query($mysqli, $query);
            if ($token == '0') {}
            else {
                call_user_func($actions[$token]);
            }
        }
    }
    elseif ($quantity === $Quantity) {
        $query = sprintf("DELETE FROM inventory WHERE player_id = '%s' AND item_id = '%s'",
            mysqli_real_escape_string($mysqli, $userID),
            mysqli_real_escape_string($mysqli, $itemID));
        mysqli_query($mysqli, $query);
        if ($token == '0') {}
        else {
            call_user_func($actions[$token]);
        }
    }
    elseif ($quantity > 1) {
        $query = sprintf("UPDATE inventory SET quantity = quantity - $Quantity WHERE player_id = '%s' AND item_id = '%s'",
            mysqli_real_escape_string($mysqli, $userID),
            mysqli_real_escape_string($mysqli, $itemID));
        mysqli_query($mysqli, $query);
        if ($token == '0') {}
        else {
            call_user_func($actions[$token]);
        }
    }
    else {
        $query = sprintf("DELETE FROM inventory WHERE player_id = '%s' AND item_id = '%s'",
            mysqli_real_escape_string($mysqli, $userID),
            mysqli_real_escape_string($mysqli, $itemID));
        mysqli_query($mysqli, $query);
        if ($token == '0') {}
        else {
            call_user_func($actions[$token]);
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

function Potion() {
    global $userID;
    global $token;
    $GLOBALS['Quantity'];

    if ($token == 'L_Red_potion') {
        $IncAtk = getStat('atk', $userID);
        $Pup = 50 * $GLOBALS['Quantity'];
        $Hai = $IncAtk + $Pup;
        if (isset($Hai)) {
            setStat('atk', $userID, $Hai);
        }
    }

    if ($token == 'D_Red_potion') {
        $DecAtk = getStat('atk', $userID);
        $Pup = 50 * $GLOBALS['Quantity'];
        $Hai = $DecAtk - $Pup;
        if (isset($Hai)) {
            setStat('atk', $userID, $Hai);
        }
    }

}

function use_L_Purple_potion() {
    global $userID;
    $IncHP = getStat('curhp', $userID);
    $Pup = 50 * $GLOBALS['Quantity'];
    $Hai = $IncHP + $Pup;
    if (isset($Hai)) {
        setStat('curhp', $userID, $Hai);
    }
}

function use_Purple_potion() {
    global $userID;
    $Inv = getStat('def', $userID);
    $Pup = 80 * $GLOBALS['Quantity'];
    $Hai = $Inv + $Pup;
    if (isset($Hai)) {
        setStat('def', $userID, $Hai);
    }
}

function use_D_Purple_potion() {
    global $userID;
    $DecHP = getStat('curhp', $userID);
    $Pup = 50 * $GLOBALS['Quantity'];
    $Hai = $DecHP - $Pup;
    if (isset($Hai)) {
        setStat('curhp', $userID, $Hai);
    }
}

function use_L_Cyan_potion() {
    global $userID;
    $Dmg = getStat('atk', $userID);
    $Pup = 2.5 * $GLOBALS['Quantity'];
    $Hai = $Dmg * $Pup;
    if (isset($Hai)) {
        setStat('atk', $userID, $Hai);
    }
}

function use_D_Cyan_potion() {
    global $userID;
    $Dmg = getStat('atk', $userID);
    $Pup = 2.5 * $GLOBALS['Quantity'];
    $Hai = $Dmg / $Pup;
    if (isset($Hai)) {
        setStat('atk', $userID, $Hai);
    }
}

function use_L_Orange_potion() {
    global $userID;
    $BANK = getStat('bankgc',$userID);
    $Pup = 2 * $GLOBALS['Quantity'];
    $Hai = $BANK * $Pup;
    if (isset($Hai)) {
        setStat('bankgc', $userID, $Hai);
    }
}

function use_D_Orange_potion() {
    global $userID;
    $Pup = 2 * $GLOBALS['Quantity'];
    $BANK = getStat('bankgc',$userID);
    $Hai = $BANK / $Pup;
    if (isset($Hai)) {
        setStat('bankgc', $userID, $Hai);
    }
}

function use_L_Yellow_potion() {
    global $userID;
    $money = getStat('gc', $userID);
    $Pup = 1000 * $GLOBALS['Quantity'];
    $Hai = $money + $Pup;
    if (isset($Hai)) {
        setStat('gc', $userID, $Hai);
    }
}

function use_D_Yellow_potion() {
    global $userID;
    $money = getStat('gc', $userID);
    $Pup = 250 * $GLOBALS['Quantity'];
    $Hai = $money - $Pup;
    if (isset($Hai)) {
        setStat('gc', $userID, $Hai);
    }
}

function use_L_Green_potion(){
    global $userID;
    $HP = getStat('curhp', $userID);
    $Hai = $HP = 1;
    if (isset($Hai)) {
        setStat('curhp', $userID, $Hai);
    }
}

function use_Green_potion(){
    global $userID;
    $HP = getStat('curhp', $userID);
    $Hai = $HP = 175;
    if (isset($Hai)) {
        setStat('curhp', $userID, $Hai);
    }
}

function use_D_Green_potion(){
    global $userID;
    $HP = getStat('curhp', $userID);
    $Hai = $HP = 300;
    if (isset($Hai)) {
        setStat('curhp', $userID, $Hai);
    }
}

function use_D_Pink_potion(){
    global $userID;
    $Max = getStat('maxhp', $userID);
    $Pup = 75 * $GLOBALS['Quantity'];
    $Hai = $Max - $Pup;
    if (isset($Hai)) {
        setStat('maxhp', $userID, $Hai);
    }
}

function use_L_Pink_potion(){
    global $userID;
    $Max = getStat('maxhp', $userID);
    $Pup = 75 * $GLOBALS['Quantity'];
    $Hai = $Max + $Pup;
    if (isset($Hai)) {
        setStat('maxhp', $userID, $Hai);
    }
}

function use_Rainbow_potion() {
    global $userID;
    $Max = getStat('maxhp', $userID);
    $Pup = 75 * $GLOBALS['Quantity'];
    $MaxHP = $Max + $Pup;
    if (isset($MaxHP)) {
        setStat('maxhp', $userID, $MaxHP);
    }

    $HP = getStat('curhp', $userID);
    $SetHP = $HP = 300;
    if (isset($SetHP)) {
        setStat('curhp', $userID, $SetHP);
    }

    $money = getStat('gc', $userID);
    $Pup1 = 1000 * $GLOBALS['Quantity'];
    $Gold = $money + $Pup1;
    if (isset($Gold)) {
        setStat('gc', $userID, $Gold);
    }

    $BANK = getStat('bankgc',$userID);
    $Pup2 = 2 * $GLOBALS['Quantity'];
    $BankGold = $BANK * $Pup2;
    if (isset($BankGold)) {
        setStat('bankgc', $userID, $BankGold);
    }

    $Dmg = getStat('atk', $userID);
    $Pup3 = 2.5  * $GLOBALS['Quantity'];
    $IncDmg = $Dmg * $Pup3;
    if (isset($IncDmg)) {
        setStat('atk', $userID, $IncDmg);
    }

    $IncHP = getStat('curhp', $userID);
    $Pup4 = 50 * $GLOBALS['Quantity'];
    $Hai = $IncHP + $Pup4;
    if (isset($Hai)) {
        setStat('curhp', $userID, $Hai);
    }

    $IncAtk = getStat('atk', $userID);
    $Pup5 = 50 * $GLOBALS['Quantity'];
    $Atk = $IncAtk + $Pup5;
    if (isset($Atk)) {
        setStat('atk', $userID, $Atk);
    }

    $Inv = getStat('def', $userID);
    $Pup6 = 80 * $GLOBALS['Quantity'];
    $Def = $Inv + $Pup6;
    if (isset($Def)) {
        setStat('def', $userID, $Def);
    }
}

function use_item() {
    global $userID;
    $gold = getStat('gc', $userID);
    $Pup = 2500 * $GLOBALS['Quantity'];
    $Hai = $gold + $Pup;
    if (isset($Hai)) {
        setStat('gc', $userID, $Hai);
    }
}

function use_Blackpotion() {
    global  $userID;
    setStat('curhp',$userID,175);
    setStat('maxhp',$userID,300);
    setStat('sethp',$userID,25);
    setStat('atk', $userID, '80');
    setStat('def', $userID, '100');
    setStat('mdef', $userID, '50');
    setStat('gc', $userID, '250');
    setStat('bankgc', $userID, '5000');
}

function use_SerectPotion() {
    global $userID;
    global $sum;
    $sum = mt_rand(0,10);

    if ($sum == 0) {
        $Atk = getStat('atk', $userID);
        $Pup = 5 * $GLOBALS['Quantity'];
        $Hai = $Atk * $Pup;
        if (isset($Hai)) {
            setStat('atk', $userID, $Hai);
        }
    }

    if ($sum == 7) {
        $Atk = getStat('curhp', $userID);
        $Hai = $Atk = 500;
        if (isset($Hai)) {
            setStat('curhp', $userID, $Hai);
        }
    }

    if ($sum == 10) {
        $Atk = getStat('maxhp', $userID);
        $Hai = $Atk = 1000;
        if (isset($Hai)) {
            setStat('maxhp', $userID, $Hai);
        }
    }

    if ($sum == 8) {
        $Atk = getStat('atk', $userID);
        $Pup = 5 * $GLOBALS['Quantity'];
        $Hai = $Atk / $Pup;
        if (isset($Hai)) {
            setStat('atk', $userID, $Hai);
        }
    }

    if ($sum == 1) {
        $def= getStat('def', $userID);
        $Pup = 100 * $GLOBALS['Quantity'];
        $Hai = $def + $Pup;
        if (isset($Hai)) {
            setStat('def', $userID, $Hai);
        }
    }

    if ($sum == 2) {
        $def= getStat('def', $userID);
        $Pup = 100 * $GLOBALS['Quantity'];
        $Hai = $def - $Pup;
        if (isset($Hai)) {
            setStat('def', $userID, $Hai);
        }
    }

    if ($sum == 6) {
        $money = getStat('gc', $userID);
        $Pup = 3 * $GLOBALS['Quantity'];
        $Hai = $money * $Pup;
        if (isset($Hai)) {
            setStat('gc', $userID, $Hai);
        }
    }

    if ($sum == 4) {
        $HP = getStat('curhp', $userID);
        $Hai = $HP = 1;
        if (isset($Hai)) {
            setStat('curhp', $userID, $Hai);
        }
    }

    if ($sum == 9) {
        $bank = getStat('bankgc', $userID);
        $Hai = $bank + 15000;
        if (isset($Hai)) {
            setStat('bankgc', $userID, $Hai);
        }
    }

    if ($sum == 3) {
        $bank= getStat('bankgc', $userID);
        $Hai = $bank / 500;
        if (isset($Hai)) {
            setStat('bankgc', $userID, $Hai);
        }
    }

    if ($sum == 5) {
        $money = getStat('gc', $userID);
        $Hai = $money / 3;
        if (isset($Hai)) {
            setStat('gc', $userID, $Hai);
        }
    }
}

function use_GrayPotion() {
    global $userID;
    $def= getStat('def', $userID);
    $Pup = 3 * $GLOBALS['Quantity'];
    $Hai = $def * $Pup;
    if (isset($Hai)) {
        setStat('def', $userID, $Hai);
    }
}

$party = array();
global $party;
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
$smarty->assign('inventory', $inventory);
$smarty->assign('attack',getStat('atk',$userID));
$smarty->assign('magic',getStat('mdef',$userID));
$smarty->assign('defence',getStat('def',$userID));
$smarty->assign('gold',getStat('gc',$userID));
$smarty->assign('inbank',getStat('bankgc',$userID));
$smarty->assign('currentHP',getStat('curhp',$userID));
$smarty->assign('maximumHP',getStat('maxhp',$userID));
$smarty->assign('pagetitle', $pagetitle);
$smarty->display("tpl/Warehouse.html.tpl");