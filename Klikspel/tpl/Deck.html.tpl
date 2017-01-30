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

    <h1> On deck </h1>
    <p> You look around but there is only a way inside. <br>
        <strong> Do you dear it </strong> </p>
    <img src="img/OntheShip.png">
    <ul>
        <li><a href="Maintance.php"> Go inside </a></li>
        <li><a href="Monster.php"> Climb Down </a> </li>
        {if isset($smarty.session.TomaHawk)}
            <li><a href="Fire.php"> Fire a missile towards the city</a></li>
         {elseif isset($smarty.session.Shell)}
            <li><a href="FireShell.php"> Fire the cannon on the city</a> </li>
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