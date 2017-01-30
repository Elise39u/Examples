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

    <h1> Home </h1>
    <p>You`re standing in the living room of your home in New York. <br>
        Suddenly you hear a message on the radio about: <br>
        "The city has been evacuated because of a deadly virus." <br>
        But you were too late. <br>
        The message has been broadcasted a half hour ago. <br>
        So how you are gonna escape the city now.<br>
        You`re were thinking about it.</p>

    <p id="Npc11"></p>
    <img src="img/woonkamer.png">

    <ul>
        <li><a href="index.php"> Log out</a> </li>
        <li><a href="Garden.php"> Garden </a> </li>
        <li><a href="Bedroom.php"> Bedroom </a> </li>
        <li><a href="kichten.php"> Kichten </a> </li>
        <li><a href="Recevier.php"> Reciever </a> </li>
        <li><a href="Outside.php"> Outside </a> </li>
    </ul>

    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>
    {if !isset($smarty.session.Npc11)}
        <button id="NO" onclick="Bye()">CLICK ME !!!!!</button>
        {else}
        <button id="YES" onclick="Fade()">CLICK ME !!!</button>
    {/if}

    <script type="text/javascript">
        if (window.name == "Marieke") {
            Npcname = "Coach Marieke";
            document.getElementById('Npc11').innerHTML = Npcname + " Maby you wanna play somewhere <br> " +
                    "If you know it"
        }

        function Fade() {
            window.name = "";
            console.log("window.name has been reset")
        }
        function Bye() {
            window.name = "Marieke";
            console.log("window.name Is been set to Marieke")
        }
    </script>
</div>
</body>
</html>