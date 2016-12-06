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

    <h1> a lake ;-; </h1>
    <p> There you`re standing in front of the river.<br>
        You look around and see a little boat You think yes this is my chane to escape.<br>
        But you see there a no paddles And now you think were can i find this paddels?</p>
    <img src="img/river2.jpg">
    <ul>
        <li><a href="Monster.php"> Goo back to that sand ??</a></li>
        {if isset($smarty.session.paddle)}
        <li><a href="#"> Escape !! </a> </li>
        {else}
        <li><a href="#"> Nothing here friend</a> </li>
        {/if}
        {if isset($smarty.session.car)}
        <li><a href="#"> Take the boat </a> </li>
        {else}
        <li><a href="#"> I SAID NOTHING HERE !</a> </li>
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