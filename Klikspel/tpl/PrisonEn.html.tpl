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

    <h1> Well </h1>
    <p> So There are you standing inside the prison <br>
    Where do you want to go Block A or B or C</p>
    <img src="img/PrisonHall4.png">
    <ul>
        <li><a href="PrisonHallA.php"> Go towards Block A </a></li>
        <li><a href="PrisonHallB.php"> Go towards Block B </a></li>
        <li><a href="PrisonHallC.php"> Go towards Block C </a></li>
        {if isset($smarty.session.BlockD)}
            <li><a href="PrisonHallD.php"> Go towards Block D </a></li>
        {/if}
        <li><a href="PrisonDocks.php"> Go outside </a></li>
    </ul>
    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

</div>
</body>
</html>