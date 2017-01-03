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

    <h1> The Docks  </h1>
    <p> While The Marines point were i can arrive <br>
    They ask are you not infected if so lot of people here can use you`re help <br>
    Because you`re the only one the can get safe to the city ?</p>
    <img src="img/SubBaseDock.png">
    <ul>
        <li><a href="SubE.php"> Go back To you`re boat </a></li>
        <li><a href="SubFuther.php"> Go on in the base </a></li>
        <li><a href="#"> Go Talk to soldier Kane </a></li>
    </ul>

    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

</div>
</body>
</html>