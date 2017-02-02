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

    <h1> STAIRS </h1>
    <p> Finally a staircase <br>
    But does it go to the roof or not <br>
    And what dangers lies behind</p>
    <p id="Npc11"></p>
    <p id="Npc52"></p>
    <img src="img/PrisonHosiptalFuther.png">

    <ul>
        <li><a href="PrisonRoofStair.php"> Go on </a></li>
    </ul>

    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

    <script type="text/javascript">
        document.getElementById('Npc11').innerHTML = "Coach Marieke: Wll you should check it"

        {if isset($smarty.session.Justin)}
        var Pop = {$smarty.session.Justin};
        if (Pop == true) {
            document.getElementById('Npc52').innerHTML = "Coach Justin: I agree with Marieke and stil if it leads to the roof <br>" +
                    "I am happy but i don`t wanna know the dangers behind <br>" +
                    "Coach Marieke: this one is funny"
        }
        {/if}
    </script>
</div>
</body>
</html>