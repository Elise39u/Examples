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

    <h1> Well The Kichten </h1>
    <p> Its seems clear <br>
        So should we open te door to the yard </p>
    <p id="Npc11"></p>
    <img src="img/PrisonKichten.png">
    <ul>
        <li><a href="PrisonHallKichten.php"> Go to the hall </a></li>
        <li><a href="PrisonYard.php"> Go to the yard </a></li>
    </ul>
    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

    <script type="text/javascript">
        if (window.name == "Marieke") {
            Npcname = "Coach Marieke";
            document.getElementById('Npc11').innerHTML = Npcname + ": {$smarty.session.username} well thats a great idea <br>" +
                    "But wacht out with the prisoners"
        }
    </script>
</div>
</body>
</html>