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

    <h1> Well the stage </h1>
    <p> So its busy here but wait <br>
    I see a door a little bit futher is it worth <br>
    And what do the people know around here</p>
    <p id="Npc11"></p>
    <img src="img/ChurchMain.png">
    <ul>
        <li><a href="ChurchYard.php"> Go back </a></li>
        <li><a href="ChurchDoor.php"> Go to the door </a></li>
        <li><a href="#"> Go talk to Pastor Thijs </a></li>
        <li><a href="#"> Go talk to Pregnant Zoëy </a></li>
        <li><a href="#"> Go talk to teacher Levi </a></li>
        <li><a href="#"> Go talk to singer Lucas  </a></li>
    </ul>

    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

    <script type="text/javascript">
        if (window.name == "Marieke") {
            document.getElementById('Npc11').innerHTML = "Coach Marieke: You should talk to the people around here"
        }
    </script>
</div>
</body>
</html>