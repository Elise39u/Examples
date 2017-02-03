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

    <h1> Finally </h1>
    <p> is this the house irene was speaking of <br>
    Or just a aboneded one across the road <br>
    Well one way to find out </p>
    <img src="img/TownHouse.png">
    <ul>
        <li><a href="TownWay1.php"> Go back on the road </a></li>
        <li><a href="TownHouseLive.php"> Go inside the house </a></li>
    </ul>
    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

</div>
</body>
</html>