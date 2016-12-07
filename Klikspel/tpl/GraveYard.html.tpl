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

    <h1> On the Yard </h1>
    <p> as you look around you see a anntene. <br>
        futher there is nothing<br>
        but did you rember <strong>a message </strong> that you found</p>
    <img src="img/Graveyard.png">
    <ul>
        <li><a href="OGY.php"> Go back ^.^ please </a></li>
        <li><a href="Antenne.php"> Antenne?? </a></li>
        {if isset($smarty.session.flare)}
        <li><a href="#"> Light the flare </a></li>
        {else}
        <p> NOTHING HERE FRIEND</p>
        {/if}
    </ul>
    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

</div>
</body>
</html>