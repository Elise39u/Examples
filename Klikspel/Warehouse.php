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

$actions = array('L_Red_potion' => 'Potion', 'D_Red_potion' => 'Potion', 'L_Purple_potion' => 'use_L_Purple_potion',
    'Purple_potion' => 'use_Purple_potion', 'D_Purple_potion' => 'use_D_Purple_potion', 'L_Cyan_potion' => 'use_L_Cyan_potion',
    'D_Cyan_potion' => 'use_D_Cyan_potion', 'L_Orange_potion' => 'use_L_Orange_potion', 'D_Orange_potion' => 'use_D_Orange_potion',
    'L_Yellow_potion' => 'use_L_Yellow_potion', 'D_Yellow_potion' => 'use_D_Yellow_potion', 'L_Green_potion' => 'use_L_Green_potion',
    'Green_potion' => 'use_Green_potion', 'D_Green_potion' => 'use_D_Green_potion', 'L_Pink_potion' => 'use_L_Pink_potion',
    'D_Pink_potion' => 'use_D_Pink_potion', 'Rainbow_potion' => 'use_Rainbow_potion', 'item' => 'use_item', 'Blackpotion' => 'use_Blackpotion',
    'SerectPotion' => 'use_SerectPotion', 'GrayPotion' => 'use_GrayPotion');

if (isset($_POST['item-id'])) {
    // $itemID = $_POST['item-id
    $query = sprintf("SELECT item_id FROM inventory WHERE player_id = '%s' AND id = '%s'",
        mysqli_real_escape_string($mysqli, $userID),
        mysqli_real_escape_string($mysqli, $_POST['item-id']));
    $result = mysqli_query($mysqli, $query);
    list($itemID) = mysqli_fetch_row($result);
    $token = getItemStat('token', $itemID);
    call_user_func($actions[$token]);

    $query = sprintf("SELECT quantity FROM inventory WHERE player_id = '%s' AND item_id = '%s'",
        mysqli_real_escape_string($mysqli, $userID), mysqli_real_escape_string($mysqli, $itemID));
    $result = mysqli_query($mysqli, $query);
    list($quantity) = mysqli_fetch_row($result);

    if ($quantity > 1) {
        $query = sprintf("UPDATE inventory SET quantity = quantity - 1 WHERE player_id = '%s' AND item_id = '%s'",
            mysqli_real_escape_string($mysqli, $userID),
            mysqli_real_escape_string($mysqli, $itemID));
    }
    else {
        $query = sprintf("DELETE FROM inventory WHERE player_id = '%s' AND item_id = '%s'",
            mysqli_real_escape_string($mysqli, $userID),
            mysqli_real_escape_string($mysqli, $itemID));
    }
    mysqli_query($mysqli, $query);
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

    if ($token == 'L_Red_potion') {
        $IncAtk = getStat('atk', $userID);
        $Hai = $IncAtk + 50;
        if (isset($Hai)) {
            setStat('atk', $userID, $Hai);
        }
    }

    if ($token == 'D_Red_potion') {
        $DecAtk = getStat('atk', $userID);
        $Hai = $DecAtk - 50;
        if (isset($Hai)) {
            setStat('atk', $userID, $Hai);
        }
    }

}

function use_L_Purple_potion() {
    global $userID;
    $IncHP = getStat('curhp', $userID);
    $Hai = $IncHP + 50;
    if (isset($Hai)) {
        setStat('curhp', $userID, $Hai);
    }
}

function use_Purple_potion() {
    global $userID;
    $Inv = getStat('def', $userID);
    $Hai = $Inv + 80;
    if (isset($Hai)) {
        setStat('def', $userID, $Hai);
    }
}

function use_D_Purple_potion() {
    global $userID;
    $DecHP = getStat('curhp', $userID);
    $Hai = $DecHP - 50;
    if (isset($Hai)) {
        setStat('curhp', $userID, $Hai);
    }
}

function use_L_Cyan_potion() {
    global $userID;
    $Dmg = getStat('atk', $userID);
    $Hai = $Dmg * 2.5;
    if (isset($Hai)) {
        setStat('atk', $userID, $Hai);
    }
}

function use_D_Cyan_potion() {
    global $userID;
    $Dmg = getStat('atk', $userID);
    $Hai = $Dmg / 2.5;
    if (isset($Hai)) {
        setStat('atk', $userID, $Hai);
    }
}

function use_L_Orange_potion() {
    global $userID;
    $BANK = getStat('bankgc',$userID);
    $Hai = $BANK * 2;
    if (isset($Hai)) {
        setStat('bankgc', $userID, $Hai);
    }
}

function use_D_Orange_potion() {
    global $userID;
    $BANK = getStat('bankgc',$userID);
    $Hai = $BANK / 2;
    if (isset($Hai)) {
        setStat('bankgc', $userID, $Hai);
    }
}

function use_L_Yellow_potion() {
    global $userID;
    $money = getStat('gc', $userID);
    $Hai = $money + 1000;
    if (isset($Hai)) {
        setStat('gc', $userID, $Hai);
    }
}

function use_D_Yellow_potion() {
    global $userID;
    $money = getStat('gc', $userID);
    $Hai = $money - 250;
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
    $Hai = $Max - 75;
    if (isset($Hai)) {
        setStat('maxhp', $userID, $Hai);
    }
}

function use_L_Pink_potion(){
    global $userID;
    $Max = getStat('maxhp', $userID);
    $Hai = $Max + 75;
    if (isset($Hai)) {
        setStat('maxhp', $userID, $Hai);
    }
}

function use_Rainbow_potion() {
    global $userID;
    $Max = getStat('maxhp', $userID);
    $MaxHP = $Max + 75;
    if (isset($MaxHP)) {
        setStat('maxhp', $userID, $MaxHP);
    }

    $HP = getStat('curhp', $userID);
    $SetHP = $HP = 300;
    if (isset($SetHP)) {
        setStat('curhp', $userID, $SetHP);
    }

    $money = getStat('gc', $userID);
    $Gold = $money + 1000;
    if (isset($Gold)) {
        setStat('gc', $userID, $Gold);
    }

    $BANK = getStat('bankgc',$userID);
    $BankGold = $BANK * 2;
    if (isset($BankGold)) {
        setStat('bankgc', $userID, $BankGold);
    }

    $Dmg = getStat('atk', $userID);
    $IncDmg = $Dmg * 2.5;
    if (isset($IncDmg)) {
        setStat('atk', $userID, $IncDmg);
    }

    $IncHP = getStat('curhp', $userID);
    $Hai = $IncHP + 50;
    if (isset($Hai)) {
        setStat('curhp', $userID, $Hai);
    }

    $IncAtk = getStat('atk', $userID);
    $Atk = $IncAtk + 50;
    if (isset($Atk)) {
        setStat('atk', $userID, $Atk);
    }

    $Inv = getStat('def', $userID);
    $Def = $Inv + 80;
    if (isset($Def)) {
        setStat('def', $userID, $Def);
    }
}

function use_item() {
    global $userID;
    $gold = getStat('gc', $userID);
    $Hai = $gold + 2500;
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
        $Hai = $Atk * 5;
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
        $Hai = $Atk / 5;
        if (isset($Hai)) {
            setStat('atk', $userID, $Hai);
        }
    }

    if ($sum == 1) {
        $def= getStat('def', $userID);
        $Hai = $def + 100;
        if (isset($Hai)) {
            setStat('def', $userID, $Hai);
        }
    }

    if ($sum == 2) {
        $def= getStat('def', $userID);
        $Hai = $def - 100;
        if (isset($Hai)) {
            setStat('def', $userID, $Hai);
        }
    }

    if ($sum == 6) {
        $money = getStat('gc', $userID);
        $Hai = $money * 3;
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
    $Hai = $def * 3;
    if (isset($Hai)) {
        setStat('def', $userID, $Hai);
    }
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
$smarty->display("tpl/Warehouse.html.tpl");