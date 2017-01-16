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
    </ul>

    {if isset($smarty.cookies.Timer1)}
        {if $smarty.cookies.Timer1 == '1'}
            {else}
            <div id="counter-1"></div>
        {/if}
    {/if}
    <h1> Hehe a sign  </h1>
    <p> As you walk Futher you see a sing that says Yard <br>
    You think finally <br>
    But there are already so many people here</p>
    <img src="img/InsideSubBase.png">
    <ul>
        <li><a href="SubAhed.php"> Go back  </a></li>
        <li><a href="SubYard.php"> Go To the yard </a></li>
        <li><a href="NPC4.php"> Go talk to Icter Peter </a></li>
        {if isset($smarty.cookies.Quest5)}
          <li><a href="#"> Arya is gone </a> </li>
            {else}
        <li><a href="NPC5.php"> Go talk to Explorer Arya </a></li>
        {/if}
        {if isset($smarty.cookies.Quest6)}
            <li><a href="#"> Nina needs to wacht</a> </li>
            {else}
        <li><a href="NPC6.php"> Go talk to Wachter Nina </a></li>
        {/if}
    </ul>

    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="JS/jquery.min.js"><\/script>')</script>
    <script src="JS/jquery.time-to.js"></script>
    {if isset($smarty.cookies.Timer1)}
    <script type="text/javascript">
        $('#counter-1').timeTo(500, function () {
            alert("Quest A blink for a eye completed");
            Good = document.cookie = "Quest6";
            Good = true;
        })
    </script>
    {/if}
</div>
</body>
</html>