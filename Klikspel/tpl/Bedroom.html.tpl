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

    <h1> Bedroom </h1>
    <p> You`re thinking about what you're taking on your trip. <br>
        You're thinking about getting out of town. <br>
        And the road to freedom is a long journey.</p>

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

</div>
</body>
</html>