<!DOCTYPE HTML>
<html>
<head>
    <title> {$pagetitle} </title>
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <link href="css/timeTo.css" type="text/css" rel="stylesheet"/>
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
        <li>Current level: <strong>{$level}</strong></li>
        <li>Experience: <strong>{$experience}</strong></li>
        <li>Experience needed until level <strong>{$level+1}: {$exp_remaining}</strong></li>
    </ul>

    <ul>
        <p class="H1l">Npc`s in your party</p>
        {foreach from=$party key=id item=i}
            <li>{$i.name}</li>
        {/foreach}
    </ul>

    <div id="counter-1"></div>
    <!-- <p><button id="reset-1" type="button">Reset</button></p> -->
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
        {if isset($smarty.session.PageNpc)}
        {if $smarty.session.PageNpc >= 1}
            <li><a href="#"> You have compleeted the quest and john is gone</a> </li>
            {else}
        <li><a href="NPC1.php"> Go talk to John </a></li>
        {/if}
        {else}
            <li><a href="NPC1.php"> Go talk to John </a></li>
        {/if}
    </ul>
    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

</div>
</body>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="JS/jquery.min.js"><\/script>')</script>
<script src="JS/jquery.time-to.js"></script>
<script type="text/javascript">
        $('#counter-1').timeTo(new Date('6 Feb 2017 10:00:00 GMT+0100 (West-Europa (standaardtijd))'));

        $('#reset-1').click(function() {
            $('#counter-1').timeTo('reset');
        });
</script>
</html>