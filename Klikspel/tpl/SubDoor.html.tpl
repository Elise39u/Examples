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

    <h1> A Door?  </h1>
    <p> As you walk towards the door you see people standing near it <br>
    Should i ask if i can pass or not</p>
    <img src="img/DoorSubBase.png">
    <ul>
        {if isset($smarty.session.PageNpc19)}
        {if $smarty.session.PageNpc19 >= 1}
          <li><a href="#"> Go On </a></li>
            {else}
            <li><a href="Npc19.php"> Go talk to guard Paul </a></li>
        {/if}
            {else}
            <li><a href="Npc19.php"> Go talk to guard Paul </a></li>
        {/if}
        <li><a href="SubBack.php"> Go back  </a></li>
    </ul>

    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

</div>
</body>
</html>