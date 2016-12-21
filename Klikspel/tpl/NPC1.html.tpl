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

    <h1> My name is Jhon </h1>
    <p id="Bio"></p>
    <p id="NPC"></p>
    <button type="button" onclick="myAns1()" id="Player1"> Have you seen anything strange lastly ??</button> <br>
    <button type="button" onclick="myAns2()" id="Player2"> I am in need of items can you help me??</button> <br>
    <button type="button" onclick="myAns3()" id="Player3"> </button> <br>
    <button type="button" onclick="myAns4()" id="Player4"> </button> <br>
    <button type="button" onclick="myAns5()" id="Player5"> </button>
    <ul>
        <li><a href="Street.php"> Go back </a></li>
    </ul>
    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

</div>
</body>

<script type="text/javascript" src="https://rawgit.com/CodeOtter/thusspokenpc/master/index.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
<script type="text/javascript" src="inc/Npc1.js"></script>

</html>