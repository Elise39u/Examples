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

    <h1> Looking away </h1>
    <p> You`re standing near a river <br>
        You can see a police station on the other side. <br>
        You even see a shop. <br>
        But you dont now how to cross.</p>
    <img src="img/river1.jpg">
    <ul>
        <li><a href="Outside.php"> Go back on the roads friends </a></li>
        {if isset($smarty.session.boat)}
            <li><a href="river.php"> Go on the river friend </a> </li>
            {else}
            <li><a href="Meme.php"> Nothing here friend</a></li>
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