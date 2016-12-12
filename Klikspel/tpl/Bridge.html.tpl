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

    <h1> 0.0 The army </h1>
    <p> There You`re Standing. <br>
        Suddenly a officer comes to you and ask do you have the stuff we asked for it.<br>
        you stop and check your bag.</p>
    <img src="img/escape2.png">
    <ul>
        {if isset($smarty.session.gold)}
            <li><a href="End2.php"> Okay you can come with us</a> </li>
            {else}
            <li><a href="Nbridge.php"> No sorry turn around</a></li>
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