<!DOCTYPE HTML>
<html>
<head>
    <title> The {$pagetitle} </title>
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

    <h1> A door </h1>
    <p> <strong> Knock Knock</strong> No respone <br>
    A key or is there someone inside </p>
    <img src="img/BankDoor.png">
    <ul>
        {if isset($smarty.session.KeyBK)}
        <li><a href="#"> Go inside the bank </a> </li>
        {else}
        <li><a href="#"> Nothing here Friend</a> </li>
        {/if}
        <li><a href="BKDoor.php"> Go back  </a> </li>
    </ul>
    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

</div>
</body>
</html>