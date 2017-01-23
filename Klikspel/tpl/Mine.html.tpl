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

    <h1> Well </h1>
    <p> There you go </p>


    {if isset($Dead)}
        <p> You were killed by the <strong> {$Dead} </strong></p>
    {/if}
    {if isset($Yes)}
        <p>{$Yes} <br>
        Amount Damage taken: {$Damage} </p>
    {/if}

    <img src="img/Seamine.png">

    <ul>
        {if isset($Hit)}
            {foreach $Hit as $bad}
            <li style="color: crimson">{$bad}</li>
            {/foreach}
        {/if}
        {if isset($Pass)}
        {foreach $Pass as $good}
            <li style="color: green">{$good}</li>
        {/foreach}
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