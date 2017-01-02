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

    <h1> Maintance </h1>
    <p> Why is the Maintance room stil intact. <br>
        dont mind i need to go ont  </p>
    <img src="img/MaintanceRoom.png">
    <ul>
        <li><a href="Deck.php"> Back outside </a></li>
        <li><a href="Cafetaria.php"> Cafateria  </a> </li>
        <li><a href="Ocabian.php"> The cabian </a> </li>
        {if isset($smarty.session.Machine)}
            <li><a href="#"> Put the swicht in</a></li>
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