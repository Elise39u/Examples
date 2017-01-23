<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/html">
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

    <h1> Inside the electro back room</h1>
    <p> There you standing. <br>
       <strong> You hear wind coming in to the room </strong> <br>
        Suddenly you see a way to the roof but wil you go </p>
    <img src="img/BackRoomE.png">
    <ul>
        <li><a href="electro.php"> Go back in the store </a></li>
        <li><a href="eroof.php"> TO THE ROOF </a> </li>
        <li><a href="Card.php"> A card rlly?? </a> </li>
    </ul>

    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

</div>
</body>
</html>