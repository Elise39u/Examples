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

    <h1> Bedroom </h1>
    <p> You`re thinking about what you're taking on your trip. <br>
        You're thinking about getting out of town. <br>
        And the road to freedom is a long journey.</p>

    <p id="Npc11"></p>
    <img src="img/BT11_ModernSerenity_Slaapkamer.jpg">
    <ul>
        <li><a href="room.php"> Go back search for a way ouy</a></li>
        <li><a href="kichten.php"> Eating? </a> </li>
        <li><a href="Sleep.php"> Take a nap </a> </li>
    </ul>

    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

    <script type="text/javascript">
        if (window.name == "Marieke") {
            Npcname = "Coach Marieke"
            document.getElementById('Npc11').innerHTML = Npcname + " Did you get the clue <br>" +
                    "Or do i have to explain it"
        }
    </script>
</div>
</body>
</html>