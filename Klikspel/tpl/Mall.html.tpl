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

    <h1> The mall  </h1>
    <p> In the distence are a few shops? dare to go to it </p>
    <img src="img/mall.png">
    <ul>
        <li><a href="Deadend.php"> Go back and stop shopping ;-; </a></li>
        <li><a href="ItemShop.php"> Item Shop ?? </a></li>
        <li><a href="Warehouse.php"> Warehouse ??? </a></li>
        <li><a href="#"> grocery store </a></li>
        <li><a href="#"> Liquor store </a></li>
    </ul>
    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

</div>
</body>
</html>