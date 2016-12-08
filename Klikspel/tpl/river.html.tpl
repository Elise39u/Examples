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

    <h1> Rowining away </h1>
    <p> There you are on the middle of the river.<br>
        you look around and see only both sites <br>
        And a abonded <strong> carrier </strong> <br>
        but should i go back or continu</p>
    <img src="img/Rivier.png">
    <ul>
        <li><a href="Pass.php"> Go back to the city </a></li>
        <li><a href="Docks.php"> Go to the other side of the city </a> </li>
        <li><a href="#"> A carrier ??? </a></li>
    </ul>

    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

</div>
</body>
</html>