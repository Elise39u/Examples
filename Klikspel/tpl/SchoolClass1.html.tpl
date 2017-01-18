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
    </ul>

    <h1> Well ....</h1>
    <p> a class room <br>
    there are people around here but who to talk to</p>
    <img src="img/SchoolClass1.png">
    <ul>
        <li><a href="SchoolHall.php"> Go back </a></li>
        <li><a href="Npc26.php"> Go talk to teacher Imre</a></li>
        {if isset($smarty.cookies.Quest27)}
            <li><a href="#"> Corine is coaching</a></li>
        {else}
        <li><a href="Npc27.php"> Go talk to coach Corine</a></li>
        {/if}
        <li><a href="Npc28.php"> Go talk to student Dylan </a></li>
    </ul>
    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

</div>
</body>
</html>