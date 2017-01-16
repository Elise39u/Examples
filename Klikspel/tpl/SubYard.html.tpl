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

    <h1> The Yard  </h1>
    <p> As you Look around you see a backway to something <br>
    But there are lots of people here  <br>
    so who needs help a lot?</p>
    <img src="img/YardSubBase.png">
    <ul>
        <li><a href="SubNear.php"> Go back  </a></li>
        <li><a href="SubBack.php"> Go torugh the backway </a></li>
        {if isset($smarty.session.Quest7_1) || isset($smarty.session.Quest7_2)}
            <li><a href="#"> Lauren is enjoying her stuff </a></li>
            {else}
        <li><a href="NPC7.php"> Go talk to Beuaty King Lauren </a></li>
        {/if}
        {if isset($smarty.session.Quest8_1) || isset($smarty.session.Quest8_2)}
            <li><a href="#"> Mike is gone photographing </a></li>
            {else}
            <li><a href="NPC8.php"> Go talk to photographer Mike</a></li>
        {/if}
        <li><a href="#"> Go talk to Teacher Berna </a></li>
        <li><a href="#"> Go talk to Coach Jeroen </a></li>
        <li><a href="#"> Go talk to Coach Marieke </a></li>
        <li><a href="#"> Go talk to Mother Lieke </a></li>
        <li><a href="#"> Go talk to Data tracker Harmes </a></li>
        <li><a href="#"> Go talk to Monsternon </a></li>
        <li><a href="#"> Go talk to Sales Expert Elzie </a></li>
        <li><a href="#"> Go talk to Student Ariëlle  </a></li>
    </ul>

    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

</div>
</body>
</html>