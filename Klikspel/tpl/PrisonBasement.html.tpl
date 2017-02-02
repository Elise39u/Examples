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

    <h1> Well the basement </h1>
    <p> I hope this i`snt so long hallway basement <br>
        That is like running and running and doesn`t stop</p>
    <p id="Npc11"></p>
    <p id="Npc52"></p>
    <img src="img/PrisonBasement.png">

    <ul>
        <li><a href="PrisonBasementFuther.php"> Go on </a></li>
    </ul>

    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

    <script type="text/javascript">
        if (window.name == "Marieke") {
            document.getElementById('Npc11').innerHTML = "Coach Marieke: You should think twice <br>" +
                    "Before going on"
        }

        {if isset($smarty.session.Justin)}
        var Okey = {$smarty.session.Justin};
        if (Okey == true) {
            document.getElementById('Npc52').innerHTML = "Coach Justin: Marieke it is safe belive <br>" +
                    "Why would you think the voice send us towards monsters <br>" +
                    "Coach Marieke: As james said don`t trust anyone <br>" +
                    "Coach Justin: i thought you believed in people <br>" +
                    "And support them on the way <br>" +
                    "Coach Marieke: But when a creepy voice in a abonded prison tells me to go a way i start to be unsure <br>" +
                    "because who knows he liked to torch people <br>" +
                    "Coach Justin: At that aspect i agree <br>" +
                    "Coach Marieke: Thank you Justin"
        }
        {/if}
    </script>

</div>
</body>
</html>