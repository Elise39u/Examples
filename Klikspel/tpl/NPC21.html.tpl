<!DOCTYPE HTML>
<html>
<head>
    <title> {$pagetitle} </title>
    <link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.17/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body class="test">
<div class="plaatje">

    <ul>
        <li>Attack: <strong>{$attack}</strong></li>
        <li>Defence: <strong>{$defence}</strong></li>
        <li>Magic: <strong>{$magic}</strong></li>
        <li>Gold in hand: <strong>{$gold}</strong></li>
        <li>Current HP: <strong>{$currentHP}/{$maximumHP}</strong>
        <li>Gold Inbank: <strong>{$inbank}</strong></li>
    </ul>

    <h1> I am Emma demma dilema </h1>
    <p id="Bio"></p>
    <p id="NPC"></p>
    <p id="Quest"></p>
    <p id="Quest1"></p>
    {if isset($smarty.session.Emma2)}
        <img src="img/Npcs/Npc21_d.png">
        {else}
    <img src="img/Npcs/Npc21.png">
    {/if}
    <!--
    <button type="button" onclick="Clickme(this.id)" id="Player1"> Have you seen anything strange lastly ??</button> <br>
    <button type="button" onclick="Clickme(this.id)" id="Player2"> I am in need of items can you help me??</button> <br>
    <button type="button" onclick="Clickme(this.id)" id="Player3"> Do you need help with something </button>
    <div id="AddBtn"></div>
    -->

    <div id = "dialog-2" title = "Dialouge">
        <p id="Story">Emma: Tell it stranger danger </p>
    </div>
    <button id = "opener-2"> Hi Emma   </button>

    <ul>
        {if isset($smarty.session.Emma2)}
            <li><a href="Subdocks.php"> Go back</a> </li>
        {else}
        <li><a href="AgianStreet.php"> Go back  </a></li>
        {/if}
    </ul>

    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

    {if isset($smarty.cookies.Quest21)}
        {if $smarty.cookies.Quest21 == true}
            <script type="text/javascript">
                var NpcName = "Emma";
                document.getElementById('Quest').innerHTML = NpcName + " Well thank you very much";
            </script>
        {/if}
    {/if}\

</div>
</body>

<script type="text/javascript" src="https://rawgit.com/CodeOtter/thusspokenpc/master/index.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
<script src="inc/bootbox.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript">
    function loadScript(url, callback)
    {
        // Adding the script tag to the head as suggested before
        var head = document.getElementsByTagName('head')[0];
        var script = document.createElement('script');
        script.type = 'text/javascript';
        script.src = url;

        // Then bind the event to the callback function.
        // There are several events for cross browser compatibility.
        script.onreadystatechange = callback;
        script.onload = callback;

        // Fire the loading
        head.appendChild(script);
    }

    var callback;
    var Think = {$smarty.session.Emma2};

    if (Think == true) (
            loadScript("JS/NPC/Npc21_docks.js", callback)
    )
    else if (window.name == 'Marieke') {
        loadScript("JS/NPC/Npc21_11.js", callback)
    }
    else {
        loadScript("JS/NPC/Npc21.js", callback)
    }
    // <script type="text/javascript" src="JS/NPC/Npc3.js">
</script>
</html>