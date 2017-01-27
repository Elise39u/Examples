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

    <ul>
        <p class="H1l">Npc`s in you`re party</p>
        {foreach from=$party key=id item=i}
            <li>{$i.name}</li>
        {/foreach}
    </ul>

    <h1> And... .This is one </h1>
    <p> So store one <br>
    What did i have to take from here agian <br>
    Just take everything then</p>
    <img src="img/MediaMarket.png">
    <ul>
        <li><a href="TownMall.php"> Go back  </a></li>
        <li><a href="CameraL.php"> Go grab the camera for lauren </a></li>
        <li><a href="CameraM.php"> Go grab the camera for Mike </a></li>
        <li><a href="Pc.php"> Go grab a pc </a></li>
        <li><a href="Phone.php"> Go grab a phone </a></li>
        <li><a href="Router.php"> Go grab a wifi router </a></li>
    </ul>
    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

</div>
</body>
</html>