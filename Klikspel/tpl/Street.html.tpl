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

    <h1> The city </h1>
    <p> And there you`re standing on the middle of the street. <br>
        You look down to the right and see nothing. To the left you see almost a bridge.<br>
        And futher on you see the garage and a store.<br> Which way wil you go.. <br>
    you see someone standing and think should i talk to him</p>
    <img src="img/street.png">
    <ul>
        <li><a href="Outside.php"> Go back to look for something </a></li>
        <li><a href="Deadend.php"> To The right </a></li>
        <li><a href="Nbridge.php"> TO the left towards the bridge </a></li>
        <li><a href="AgianStreet.php"> Go on ....</a></li>
        <li><a href="NPC1.php"> Go talk to John </a></li>
    </ul>
    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

</div>
</body>
</html>