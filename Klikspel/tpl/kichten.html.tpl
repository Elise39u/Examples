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

    <h1> Kichten </h1>
    <p> You`re standing in the Kichten of your home. <br>
        You`re looking around <br>
        You see that the fridge and stove are a little bit open <br>
        Are we gonna take a look inside. <br>
        Or do we go on? </p>
    <img src="img/modern-kitchen.jpg">
    <ul>
        <li><a href="room.php"> Go back search for a way ouy</a></li>
        <li><a href="bedroom.php"> Go look if you`re wife/husband is there</a></li>
    </ul>

    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

</div>
</body>
</html>