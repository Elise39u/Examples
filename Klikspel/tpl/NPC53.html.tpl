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

    <h1> Well look who we have there </h1>
    <p id="Bio"></p>
    <p id="NPC"></p>
    <p id="Npc11"></p>
    <p id="Npc52"></p>
    <img src="img/Npcs/Npc53.png">
    <!--
    <button type="button" onclick="Clickme(this.id)" id="Player1"> Have you seen anything strange lastly ??</button> <br>
    <button type="button" onclick="Clickme(this.id)" id="Player2"> I am in need of items can you help me??</button> <br>
    <button type="button" onclick="Clickme(this.id)" id="Player3"> Do you need help with something </button>
    <div id="AddBtn"></div>
    -->

    <div id = "dialog-2" title = "Dialouge">
        <p id="Story">David: Yo brothers tell whats up</p>
    </div>
    <button id = "opener-2"> hi there </button>

    <ul>
        <li><a href="PrisonYard.php"> Go back  </a></li>
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
<script src="inc/bootbox.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript">
    if (window.name == "Marieke") {
        document.getElementById('Npc11').innerHTML = "Coach Marieke: I shouldn`t trust him hor <br>" +
                "But that can be me"
    }

    var Lel ;
    {if isset($smarty.session.Justin)}
    Lel = {$smarty.session.Justin};
    if (Lel == true) {
        document.getElementById('Npc52').innerHTML = "Coach Justin: Well i think you would Marieke <br>" +
                "How would you escape either than <br>" +
                "Coach Marieke: Just by the army in the city <br>" +
                "Coach Justin: Yeah you have a point";
    }
    {/if}
</script>
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
    var Think;
    var Okey;
    {if isset($smarty.session.Helped)}
    Think = {$smarty.session.Helped};
    {elseif isset($smarty.session.FreeKichten)}
    Okey = {$smarty.session.FreeKichten};
    {/if}

    if (Think == true) (
            loadScript("JS/NPC/Npc53_1.js", callback)
    )
    else if (Okey == true) {
        loadScript("JS/NPC/Npc53_2.js", callback)
    }
    else {
        loadScript("JS/NPC/Npc53.js", callback)
    }
    // <script type="text/javascript" src="JS/NPC/Npc3.js">
</script>
</html>