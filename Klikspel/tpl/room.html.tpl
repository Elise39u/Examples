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

    <h1> Home </h1>
    <p>You`re standing in the living room of your home in New York. <br>
        Suddenly you hear a message on the radio about: <br>
        "The city has been evacuated because of a deadly virus." <br>
        But you were too late. <br>
        The message has been broadcasted a half hour ago. <br>
        So how you are gonna escape the city now.<br>
        You`re were thinking about it.</p>
    <img src="img/woonkamer.png">

    <ul>
        <li><a href="index.php"> Log out</a> </li>
        <li><a href="Garden.php"> Garden </a> </li>
        <li><a href="Bedroom.php"> Bedroom </a> </li>
        <li><a href="kichten.php"> Kichten </a> </li>
        <li><a href="#"> Reciever </a> </li>
        <li><a href="Outside.php"> Outside </a> </li>
    </ul>

    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

</div>
</body>
</html>