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

    <h1> Outside electro </h1>
    <p> There you`re standing in front of the elctro store. <br>
        and you`re think should i go in. <br>
        You dont now what is in the store present. <br>
        But do you want to go inside. <br>
        What should i do now</p>
    <img src="img/electro.jpg">
    <ul>
        <li><a href="Outside.php"> Go back on the road </a></li>
        <li><a href="electro.php"> ;-; Do i want to go inside </a> </li>
    </ul>

    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

</div>
</body>
</html>