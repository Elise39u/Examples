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

    <h1> Block D </h1>
    <p> Well block D were are the guns </p>
    <p id="Werid"></p>
    <p id="Npc11"></p>
    <p id="Npc52"></p>
    <img src="img/PrisonBlockD.png">
    <ul>
        <li><a href="PrisonBLockDStair.php"> Go on as the voice says </a></li>
    </ul>
    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

    <script type="text/javascript">
        document.getElementById('Werid').innerHTML = "Werid Voice: What the hell you`re thinking to do <br>" +
                "This prisoners has been massa murders they have been locked here from all over the world <br>" +
                "I locked david myself and why you think there is a mine field outside <br>" +
                "No time to introduce myself now go to the basement and go towards the roof for escape <br>" +
                "I wil deal with the prisoners myself"
        if (window.name == "Marieke") {
            document.getElementById('Npc11').innerHTML = "Coach Marieke: Well that is creepy <br>" +
                    "But you can better do what he said {$smarty.session.username}"
        }

        {if isset($smarty.session.Justin)}
        var Yep = {$smarty.session.Justin};
        if (Yep == true) {
            document.getElementById('Npc52').innerHTML = "Coach Justin: i should listen to both Marieke and that voice <br>" +
                    "Coach Marieke: Well thank you Justin finnaly a agreement <br>" +
                    "Coach Justin: Wellllll....... Ehhheee..... i am not going in on that<br>" +
                    "Coach Marieke: Wisely Chosen Justin <br>" +
                    "Coach Justin: phhhhhh"
        }
        {/if}
    </script>
</div>
</body>
</html>