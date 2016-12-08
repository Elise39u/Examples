<!DOCTYPE HTML>
<html>
<head>
    <title> The {$pagetitle} </title>
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

    <h1> Outside the bank </h1>
    <p>As you walk towards the bank you are thinking. <br>
        besides looking for gold what can i find here</p>
    <img src="img/OustideB.png">
    <ul>
        <li><a href="BKDoor.php"> Go inside the bank </a> </li>
        <li><a href="Monster.php"> Go back  </a> </li>
    </ul>
    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

</div>
</body>
</html>