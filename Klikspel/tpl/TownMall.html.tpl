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

    <ul>
        <p class="H1l">Npc`s in you`re party</p>
        {foreach from=$party key=id item=i}
            <li>{$i.name}</li>
        {/foreach}
    </ul>

    <h1> The mall </h1>
    <p> There are stores around me <br>
    Also people but what to do <br>
    Talk to the people or visting the stores</p>
    <img src="img/MallYard.png">
    <ul>
        <li><a href="TownMarket.php"> Go back  </a></li>
        <li><a href="MediaMarkt.php"> Go to the MediaMarkt </a></li>
        <li><a href="Action.php"> Go to the Action </a></li>
        <li><a href="CandyStore.php"> Go to the Candy Store </a></li>
        <li><a href="#"> Go talk to Pregnant Irene </a></li>
        <li><a href="#"> Go talk to Shopper Kim </a></li>
        <li><a href="#"> Go talk to Store owner Esremalda </a></li>
        <li><a href="#"> Go talk to Shopper Leo </a></li>
        <li><a href="#"> Go talk to Coach Justin </a></li>
    </ul>
    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

</div>
</body>
</html>