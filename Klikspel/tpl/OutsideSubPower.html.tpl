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

    <h1> Well a village </h1>
    <p> As you walk outside you see a urban jungel village <br>
    But you have two problems. <br>
    1: How do i get there <br>
    2: the road doens`t go that way</p>
    <p id="Npc11"></p>
    <img src="img/OutsideSubPower.png">
    <ul>
        <li><a href="SubPowerExit.php"> Go back inside  </a></li>
        <li><a href="TownRoad.php"> Follow the road </a></li>
    </ul>

    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

    <script type="text/javascript">
        if (window.name == "Marieke") {
            document.getElementById('Npc11').innerHTML = "Coach Marieke: Well a nice village <br>" +
                    "But Where does it go and is it safe {$smarty.session.username} <br>" +
                    "{$smarty.session.username}: Yes Marieke i do think it safe <br>" +
                    "Coach Marieke: Well Okay then"
        }
    </script>
</div>
</body>
</html>