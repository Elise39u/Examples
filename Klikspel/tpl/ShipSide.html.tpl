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

    <h1> Well the side </h1>
    <p> Whaat can i do here. <br>
        go on or should i go inside my friend  </p>
    <p id="Npc11"></p>
    <img src="img/SideShip.png">
    <ul>
        <li><a href="Cafetaria.php"> Go back</a></li>
        <li><a href="ShipHall.php"> Go inside</a></li>
        <li><a href="ShipEnd.php"> Go to end of the ship</a></li>
    </ul>

    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

    <script type="text/javascript">
        if (window.name == "Marieke") {
            document.getElementById('Npc11').innerHTML = "Coach Marieke: Well iel i thougt this was clean <br>" +
                    "{$smarty.session.username} Please could we go inside <br>" +
                    "Or perhaps i should kill you <br>" + "" +
                    "{$smarty.session.username} Well perhaps Marieke";
        }
    </script>
</div>
</body>
</html>