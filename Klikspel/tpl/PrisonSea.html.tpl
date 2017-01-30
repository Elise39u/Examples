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

    <h1> Well there we are</h1>
    <p> As we bouncing on sea <br>
        Is really that worth to go thourgh a mine field </p>
    <p id="Npc11"></p>
    <img src="img/MineRivier.png">
    <ul>
        <li><a href="HotelDocks.php"> Go back </a></li>
        <li><a href="Mine.php"> try the chane </a></li>
    </ul>
    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

    <script type="text/javascript">
        if (window.name == "Marieke") {
            Npcname = "Coach Marieke";
            document.getElementById('Npc11').innerHTML = Npcname + ": {$smarty.session.username} Are you sure <br>" +
                    "You know the dangers he"
        }
    </script>
</div>
</body>
</html>