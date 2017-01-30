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

    <h1> The Yard  </h1>
    <p> As you Look around you see a backway to something <br>
    But there are lots of people here  <br>
    so who needs help a lot?</p>
    <img src="img/YardSubBase.png">
    <ul>
        <li><a href="SubNear.php"> Go back  </a></li>
        <li><a href="SubBack.php"> Go torugh the backway </a></li>
        {if isset($smarty.cookies.Quest7_1) AND isset($smarty.cookies.Quest7_2)}
            <li><a href="#"> Lauren is enjoying her stuff </a></li>
            {else}
        <li><a href="NPC7.php"> Go talk to Beuaty King Lauren </a></li>
        {/if}
        {if isset($smarty.cookies.Quest8_1) AND isset($smarty.cookies.Quest8_2)}
            <li><a href="#"> Mike is gone photographing </a></li>
            {else}
            <li><a href="NPC8.php"> Go talk to photographer Mike</a></li>
        {/if}
        {if isset($smarty.cookies.Quest9)}
            <li><a href="#"> Berna is gone teaching </a></li>
            {else}
            <li><a href="NPC9.php"> Go talk to Teacher Berna </a></li>
        {/if}
        {if isset($smarty.session.Dumb) || isset($smarty.session.Dumb2)}
        {else}
            <li><a href="NPC10.php"> Go talk to Coach Jeroen </a></li>
        {/if}
        {if isset($smarty.session.MMM)}
            {elseif isset($smarty.session.Npc11)}
            {else}
            <li><a href="NPC11.php"> Go talk to Coach Marieke </a></li>
        {/if}
        {if isset($smarty.cookies.Quest12)}
            <li><a href="#"> Mother Lieke is busy</a> </li>
            {else}
        <li><a href="Npc12.php"> Go talk to Mother Lieke </a></li>
        {/if}
        {if isset($smarty.cookies.Quest13)}
            <li><a href="#"> Harrems is busy right now </a></li>
            {else}
        <li><a href="Npc13.php"> Go talk to Data tracker Harmes </a></li>
        {/if}
        {if isset($smarty.cookies.Quest14)}
            <li><a href="#"> Monsternon is gone </a></li>
        {else}
        <li><a href="NPC14.php"> Go talk to Monsternon </a></li>
        {/if}
        <li><a href="NPC15.php"> Go talk to Sales Expert Elzie </a></li>
        <li><a href="NPC16.php"> Go talk to Student Ariëlle  </a></li>
    </ul>

    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

</div>
</body>
</html>