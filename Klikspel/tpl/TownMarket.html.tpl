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

    <h1> Well the Market </h1>
    <p> So as expected a urban jungel market <br>
    But the yard was clear of plants <br>
    So is this wrong or good? <br>
    The mall seems to be a little bit futher ahed</p>
    <img src="img/TownMarket.png">
    <ul>
        <li><a href="TownYard.php"> Go back  </a></li>
        <li><a href="TownMall.php"> Go towards the mall </a></li>
        <li><a href="#"> Go talk to Farmer Niels </a></li>
        <li><a href="#"> Go talk to Mayor Innge </a></li>
    </ul>
    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

</div>
</body>
</html>