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
        <li>Current level: <strong>{$level}</strong></li>
        <li>Experience: <strong>{$experience}</strong></li>
        <li>Experience needed until level <strong>{$level+1}: {$exp_remaining}</strong></li>
    </ul>

    <ul>
        <p class="H1l">Npc`s in your party</p>
        {foreach from=$party key=id item=i}
            <li>{$i.name}</li>
        {/foreach}
    </ul>

    <h1> Choppers </h1>
    <p> Well were should i fly too </p>
    <img src="img/Chopper.png">
    <ul>
    {foreach $location->Choices as $choice}
        <li><a href="Chopper.php?location_id={$choice->to_id}">{$choice->name}</a></li>
    {/foreach}
     </ul>

    <ul>
    {if $location->id == 3}
        <li><a href="eroof.php"> Go back </a></li>
        {elseif $location->id == 2}
        <li><a href="Roof.php"> Go back</a></li>
        {else}
        <li><a href="Deck.php"> Go back</a></li>
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