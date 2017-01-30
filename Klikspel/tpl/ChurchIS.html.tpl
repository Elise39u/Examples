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

    <h1> Well No one </h1>
    <p> well as you look around there is no on in sight <br>
    So is it abonded or are the people somewhere else <br>
    and were is the exit </p>
    <p id="Npc11"></p>
    <img src="img/ChurchIS.png">
    <ul>
        <li><a href="TownStart.php"> Go back outside</a></li>
        <li><a href="ChurchYard.php"> Go on in the church </a></li>
    </ul>

    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

    <script type="text/javascript">
        if (window.name == "Marieke") {
            document.getElementById('Npc11').innerHTML = "Coach Marieke: perhaps you have to got look somewhere else <br>" +
                    "Or should we go back {$smarty.session.username} <br>" +
                    "{$smarty.session.username}: Well that not and i go look somewhere else <br>" +
                    "Coach Marieke: Thats the spirt keep going on"
        }
    </script>
</div>
</body>
</html>