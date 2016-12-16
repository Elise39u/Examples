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

    <h1> The end .... </h1>
    <p> Is this the end o the cave <br>
    You look around and see two things <br>
    A tomahawk and a Navy shell but wich one is it gonna be</p>
    <img src="img/CaveEnd.png">
    <ul>
        <li><a href="CaveLH.php"> Go back </a></li>
        <li><a href="TomaHawk.php"> Tomahawk </a></li>
        <li><a href="Shell.php"> A shell  </a></li>
    </ul>
    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

</div>
</body>
</html>