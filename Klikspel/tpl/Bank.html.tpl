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

    <h1> The bank </h1>
    <p>  you walking thourg the bank you come across a vault <br>
            Should you check inside and maby get something or only evil <br>
        Or even check if there is something in by the counter <br>
            Choice is on you </p>
    <img src="img/InsideB.png">
    <ul>
        <li><a href="BKDoor.php"> Go back Outside for godsake </a> </li>
        <li><a href="Counter.php"> The counter 0.0 </a> </li>
        <li><a href="Vault.php"> a vault 0.0 </a> </li>
    </ul>
    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

</div>
</body>
</html>