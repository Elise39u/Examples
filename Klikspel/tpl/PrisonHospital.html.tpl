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

    <h1> Hospital </h1>
    <p> Well a hospital <br>
    There needs a place to be taken care of sick prisoners <br>
    Gusses its hear </p>
    <p id="Npc11"></p>
    <p id="Npc52"></p>
    <img src="img/PrisonHospital.png">

    <ul>
        <li><a href="PrisonHospitalFuther.php"> Go on </a></li>
    </ul>

    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

    <script type="text/javascript">
        document.getElementById('Npc11').innerHTML = "Coach Marieke: Iellll please dont tell me go in to one of those rooms <br>" +
                "And if you do i wait outside is too groose <br>" +
                "And Justin don`t dear to say anything about it"

        {if isset($smarty.session.Justin)}
        var Pop = {$smarty.session.Justin};
        if (Pop == true) {
            document.getElementById('Npc52').innerHTML = "Coach Justin: Well i don`t complain <br>" +
                    "But living live wihtout a challange is nothing and not developing <br>" +
                    "Coach Marieke: you have a point but i am not goning in <br>" +
                    "Coach Justin: What if you have to get through a room to saftey? <br>" +
                    "Coach Marieke: Well ...... that we don`t disscus that Okey? <br>" +
                    "Coach Justin: just what i thought <br>" +
                    "Coach Marieke: phhh respect other peoples Opinion is once <br>" +
                    "Coach Justin: Welll......."
        }
        {/if}
    </script>
</div>
</body>
</html>