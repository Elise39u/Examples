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

    <h1> Still No yard ??  </h1>
    <p> As you walk Futher you think how long now <br>
    But you see a woman standing there <br>
    Should i ask if she need help?</p>
    <img src="img/FutherAhedSubBase.png">
    <ul>
        <li><a href="SubFuther.php"> Go back  </a></li>
        <li><a href="SubNear.php"> Go even futher </a></li>
        {if isset($smarty.session.PageNpc3)}
            <li><a href="#"> Marjo wants to be alone</a></li>
            {else}
            <li><a href="NPC3.php"> Go talk to widow Marjo </a></li>
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