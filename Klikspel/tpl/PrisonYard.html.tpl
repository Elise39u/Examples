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

    <h1> Well a yard </h1>
    <p> So the prisoners ar here <br>
    I saw a few guarding the door but it so full here <br>
    Now should i help or not</p>
    <img src="img/PrisonYard.png">
    <ul>
        <li><a href="PrisonHallc.php"> Go back </a></li>
        <li><a href="Npc53.php"> Go talk to the Head Prisoner David  </a></li>
        <li><a href="Npc54.php"> Go talk to Guard Prisoner Mike </a></li>
        <li><a href="Npc55.php"> Go talk to Prisoner James </a></li>
        {if isset($smarty.session.Kenie)}
            {else}
            <li><a href="Npc56.php"> Go talk to Search Prisoner Ken </a></li>
        {/if}
        {if isset($smarty.session.FreeKichten)}
            {if $smarty.session.FreeKichten == true}
                <li><a href="PrisonKichten.php"> Go to the Kichten </a></li>
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