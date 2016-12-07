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

    <h1> The Garage </h1>
    <p> And there you`re standing inside the garage . You see a car. To the right you see a jerrycan. <br>
        You`re thinking should i take the car or leave the building. <br>
        And you`re thinking by yourself with the car i can take the boat to the other side.<br>
        What wil we do.</p>
    <img src="img/garage.png">
    <ul>
        <li><a href="AgianStreet.php"> Go back ^.^ </a></li>
        <li><a href="JerryCan.php"> Take the JerryCan </a></li>
    </ul>
    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

</div>
</body>
</html>