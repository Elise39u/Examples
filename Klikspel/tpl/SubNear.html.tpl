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

    <h1> Hehe a sign  </h1>
    <p> As you walk Futher you see a sing that says Yard <br>
    You think finally <br>
    But there are already so many people here</p>
    <img src="img/InsideSubBase.png">
    <ul>
        <li><a href="SubAhed.php"> Go back  </a></li>
        <li><a href="SubYard.php"> Go To the yard </a></li>
        <li><a href="#"> Go talk to Icter Peter </a></li>
        <li><a href="#"> Go talk to Explorer Arya </a></li>
        <li><a href="#"> Go talk to Wachter Nina </a></li>
    </ul>

    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

</div>
</body>
</html>