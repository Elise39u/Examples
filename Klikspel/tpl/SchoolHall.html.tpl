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

    <h1> There we are </h1>
    <p> looks empty <br>
    Maby there is someone in one of the class rooms <br>
    Or th first floor, aula</p>
    <img src="img/SchoolHall.png">
    <ul>
        <li><a href="SchoolE.php"> Go back </a></li>
        <li><a href="SchoolClass1.php"> Go towards class room 1</a></li>
        <li><a href="SchoolClass2.php"> Go towards class room 2</a></li>
        <li><a href="SchoolAula.php"> Go to the aula </a></li>
        <li><a href="SchoolStair.php"> Go to the stairway </a></li>
    </ul>
    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

</div>
</body>
</html>