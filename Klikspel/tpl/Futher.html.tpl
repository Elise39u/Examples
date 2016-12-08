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

    <h1> As it goes on </h1>
    <p> There are a lot of cars here and you thinking was it popluar here <br>
        There is a shop and a station futher on what now <BR>
        you see a big buliding.<br>
        But the road doenst go that way wat now.</p>
    <img src="img/Futher.png">
    <ul>
        <li><a href="Docks.php"> Go back  </a></li>
        <li><a href="Nstation.php"> Go tp the station </a> </li>
        <li><a href="OWS.php"> A shop .... </a> </li>
    </ul>

    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

</div>
</body>
</html>