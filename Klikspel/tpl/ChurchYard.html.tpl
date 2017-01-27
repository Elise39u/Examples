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

    <h1> Well a Grown Yard </h1>
    <p> So there are a few people around here <br>
    And i can go on but <br>
    What if the the people know anything</p>
    <p id="Npc11"></p>
    <img src="img/ChurchYard.png">
    <ul>
        <li><a href="ChurchIS.php"> Go back </a></li>
        <li><a href="ChurchMain.php"> Go on in the church </a></li>
        <li><a href="#"> Go talk to Kirsten </a></li>
        <li><a href="#"> Go talk to Gardner Alex </a></li>
    </ul>

    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

    <script type="text/javascript">
        if (window.name == "Marieke") {
            document.getElementById('Npc11').innerHTML = "Coach Marieke: Maby the people around here know a way out"
        }
    </script>
</div>
</body>
</html>