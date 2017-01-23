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

    <h1> A bridge?? </h1>
    <p> You`re walking down the street to the bridge.<br>
        Suddenly you hear a voice telling you to stop. you stop. <br>
        They say.: <br>
        "If you not have been infected and you can deliver us the following things we wil help you.<br>
        <uL>
        <li>-New weapons</li>
        <li>-1000 gold coins"</li>
        </ul>
         So what wil you do now?</p>
    <img src="img/nbridge.png">
    <ul>
        <li><a href="Street.php"> Go back to the street </a></li>
        <li><a href="Bridge.php"> Go on if you dare </a></li>
    </ul>
    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

</div>
</body>
</html>