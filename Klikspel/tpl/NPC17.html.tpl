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

    <h1> Well i am Maxine </h1>
    <p id="Bio"></p>
    <p id="NPC"></p>
    <p id="Quest"></p>
    <p id="Quest1"></p>

    <!--
    <button type="button" onclick="Clickme(this.id)" id="Player1"> Have you seen anything strange lastly ??</button> <br>
    <button type="button" onclick="Clickme(this.id)" id="Player2"> I am in need of items can you help me??</button> <br>
    <button type="button" onclick="Clickme(this.id)" id="Player3"> Do you need help with something </button>
    <div id="AddBtn"></div>
    -->

    <div id = "dialog-2" title = "Dialouge">
        <p id="Story">Maxine: Well What do you want </p>
    </div>
    <button id = "opener-2"> Hi Max  </button>

    <ul>
        <li><a href="SubBack.php"> Go back </a></li>
    </ul>

    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

    {if isset($smarty.cookies.Quest17_1)}
        {if $smarty.cookies.Quest17_1 == true}
            <script type="text/javascript">
                var NpcName = "Maxine";
                document.getElementById('Quest').innerHTML = NpcName + " Well Thank you the kids will like it <br>" +
                        "Btw you know about the prison island nearby <br>" +
                        "i belive there is a docks near the hotel you should look";
            </script>
        {/if}
    {/if}

    {if isset($smarty.cookies.Quest17_2)}
        {if $smarty.cookies.Quest17_2 == true}
            <script type="text/javascript">
                var NpcName = "Maxine";
                document.getElementById('Quest1').innerHTML = NpcName + " Well thank you both for wachting the kids";
            </script>
        {/if}
    {/if}

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

    if (window.name == 'Marieke') {
        loadScript("JS/NPC/Npc17_11.js", callback)
    }
    else {
        loadScript("JS/NPC/Npc17.js", callback)
    }
    // <script type="text/javascript" src="JS/NPC/Npc3.js">
</script>
</html>