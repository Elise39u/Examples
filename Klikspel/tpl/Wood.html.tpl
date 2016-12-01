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
    <p> There you`re standing inside th wood store. <br>
        you see a paddle lying around. <br>
        But you see some wooden planks and weapons. <br>
        What should i do now.</p>
    <img src="img/houtwinkel.png">
    <ul>
        <li><a href="Owood.php"> Go back outside for godsake -.-</a></li>
        <li><a href="#"> Hammer </a> </li>
        <li><a href="#"> Axe </a> </li>
        <li><a href="#"> Basebalbat </a> </li>
        <li><a href="#"> Nailgun </a> </li>
    </ul>

    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

</div>
</body>
</html>