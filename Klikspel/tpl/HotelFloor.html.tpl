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
        <li>Current level: <strong>{$level}</strong></li>
        <li>Experience: <strong>{$experience}</strong></li>
        <li>Experience needed until level <strong>{$level+1}: {$exp_remaining}</strong></li>
    </ul>

    <ul>
        <p class="H1l">Npc`s in your party</p>
        {foreach from=$party key=id item=i}
            <li>{$i.name}</li>
        {/foreach}
    </ul>

    <h1> The First Floor  </h1>
    <p> You look around And rember that you need to refist the next rooms: <br>
        Room 506 and Room 508 </p>
    <img src="img/HotelFirst.png">
    <ul>
        <li><a href="HotelStair.php"> Go back downstairs </a></li>
        <li><a href="HotelRoom506.php"> Go To room 506 </a></li>
        <li><a href="HotelRoom508.php"> Go To room 508 </a></li>
        <li><a href="HotelRoom510.php"> Go To room 510 </a></li>
        <li><a href="HotelBalcony.php"> Go to the balcony </a></li>
    </ul>
    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

</div>
</body>
</html>