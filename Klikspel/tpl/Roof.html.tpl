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

    <h1> Station roof </h1>
    <p> There you standing looking over the village <br>
        but you see a chopper flying around. <br>
        You`re thinking did they know i am here </p>
    <img src="img/RoofPS.png">
    <ul>
        <li><a href="Police.php"> Go back inside  </a></li>
        {if isset($smarty.session.flare)}
            <li><a href="Ending.php"> Call the chopper</a></li>
            {else}
            <li><a href="Meme.php"> Nothing Here </a> </li>
        {/if}
        {if isset($smarty.session.Chop_two)}
            <li><a href="Chopper.php"> Use the chopper </a></li>
        {/if}
        <li><a href="KeyBK.php"> a Key??  </a></li>
    </ul>

    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

</div>
</body>
</html>