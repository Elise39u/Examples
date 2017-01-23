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

    <ul>
        <p class="H1l">Npc`s in you`re party</p>
        {foreach from=$party key=id item=i}
            <li>{$i.name}</li>
        {/foreach}
    </ul>

    {if isset($smarty.cookies.Timer2)}
        {if isset($smarty.cookies.Quest17_2)}
        {else}
            <div id="counter-1"></div>
        {/if}
    {/if}
    <h1> Big playyard  </h1>
    <p> Well this i a big indoor playyard even for a subbase <br>
    But what can i do here beside wachting the childeren</p>
    <img src="img/SubPlayYard.png">
    <ul>
        <li><a href="SubBack.php"> Go back  </a></li>
        <li><a href="#"> Wacht the Kids </a></li>
    </ul>

    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="JS/jquery.min.js"><\/script>')</script>
    <script src="JS/jquery.time-to.js"></script>
    <script type="text/javascript">
        function setCookie(cname, cvalue, exdays) {
            var d = new Date();
            d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
            var expires = "expires="+d.toUTCString();
            document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
        }

        $('#counter-1').timeTo(12, function () {
            alert("Quest Wacht time completed");
            setCookie("Quest17_2", true, +2147483647);
        })
    </script>
</div>
</body>
</html>