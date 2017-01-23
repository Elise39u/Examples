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

    <h1> The Lobby  </h1>
    <p> You look around and see a sing thats says 300 rooms per floor <br>
    And think wich room was i suppose to be <br>
    or even wich way to go</p>
    <img src="img/Hotelreception.png">
    <ul>
        <li><a href="HotelN.php"> Go back outside </a></li>
        <li><a href="HotelStair.php"> Go towards the stairway </a></li>
        <li><a href="HotelD.php"> Go towards the dinning room </a></li>
        <li><a href="HotelT.php"> Go towards the Theater </a></li>
        <li><a href="Npc23.php"> Go talk to Owner Anna </a></li>
    </ul>
    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

</div>
</body>
</html>