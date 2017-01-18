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

    <h1> Well .... </h1>
    <p> Anothr Class  <br>
    There are people here but who do i want to talk to</p>
    <img src="img/SchoolClass2.png">
    <ul>
        <li><a href="SchoolHall.php"> Go back </a></li>
        <li><a href="Npc30.php"> Go talk to electrician teacher Edwin </a></li>
        <li><a href="Npc29.php"> Go talk to Student Sanne en Robin</a></li>
    </ul>
    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

</div>
</body>
</html>