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

    <h1> Well The hall  </h1>
    <p> There are a few doors standing open. <br>
        Wich way to go -.-  </p>
    <p id="Npc11"></p>
    <img src="img/HallShip.png">
    <ul>
        <li><a href="ShipSide.php"> Go back outside </a></li>
        <li><a href="ShipBar.php"> Go to the bar</a></li>
        <li><a href="ShipBall.php"> Go to the ballroom  </a></li>
        <li><a href="ShipDecor.php"> Go to the Decor  </a></li>
        <li><a href="ShipBed.php"> Go to the bedroom  </a></li>
    </ul>

    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

    <script type="text/javascript">
        if (window.name == "Marieke") {
            document.getElementById('Npc11').innerHTML = "Coach Marieke: Well thanks finally {$smarty.session.username} ";
        }
    </script>
</div>
</body>
</html>