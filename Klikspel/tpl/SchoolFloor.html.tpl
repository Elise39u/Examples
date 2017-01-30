<!DOCTYPE HTML>
<html>
<head>
    <title> {$pagetitle} </title>
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>
<div class="plaatje">

    <ul>
        <li>Attack: <strong>{$attack}</strong></li>
        <li>Defence: <strong>{$defence}</strong></li>
        <li>Magic: <strong>{$magic}</strong></li>
        <li>Gold in hand: <strong>{$gold}</strong></li>
        <li>Current HP: <strong>{$currentHP}/{$maximumHP}</strong>
        <li>Gold Inbank: <strong>{$inbank}</strong></li>
        <li>Current level: <strong>{$level}</strong></li>
        <li>Experience: <strong>{$experience}</strong></li>
        <li>Experience needed until level <strong>{$level+1}: {$exp_remaining}</strong></li>
    </ul>

    <ul>
        <p class="H1l">Npc`s in your party</p>
        {foreach from=$party key=id item=i}
            <li>{$i.name}</li>
        {/foreach}
    </ul>

    <h1> Wuttt.... </h1>
    <p> NO..... more class rooms <br>
    well maby are people there</p>
    <img src="img/SchoolFirstFloor.png">
    <ul>
        <li><a href="SchoolStair.php"> Go back </a></li>
        <li><a href="SchoolClass3.php"> Go to class room 3</a></li>
        <li><a href="SchoolClass4.php"> Go to class room 4</a></li>
        <li><a href="SchoolClass5.php"> Go to class room 5</a></li>
        <li><a href="SchoolClass6.php"> Go to class room 6</a></li>
        <li><a href="SchoolClass7.php"> Go to class room 7</a></li>
    </ul>
    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

</div>
</body>
</html>