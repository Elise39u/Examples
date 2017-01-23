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

    <h1> A balcony  </h1>
    <p> Well the back of the hotel <br>
        You look around And see a stair go down <br>
    Well where does that go you think <br>
    dare to go onward</p>
    <img src="img/HotelBalconoy.png">
    <ul>
        <li><a href="HotelFloor.php"> Go back inside </a></li>
        {if isset($smarty.session.info1) AND isset($smarty.session.info2) AND isset($smarty.session.info3)}
        {if $smarty.session.info1 == true AND $smarty.session.info2 == true AND $smarty.session.info3 == true}
            <li><a href="HotelDocks.php"> Go towards the docks </a></li>
            {else}
            <li><a href="#"> There is nothing there  </a></li>
        {/if}
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