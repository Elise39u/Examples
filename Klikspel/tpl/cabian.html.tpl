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

    <h1> Cabian? </h1>
    <p> Empty? <br>
        At least i found a potion.  </p>
    <img src="img/cockpit.png">
    <ul>
        <li><a href="Ocabian.php"> Go back outside </a></li>
        <li><a href="flare.php"> a flare ??? </a></li>
        <li><a href="Jar.php"> A jar??  </a> </li>
        <li><a href="pickaxe.php"> A pickaxe -.-??  </a> </li>
        {if isset($smarty.session.Sub)}
            <li><a href="SubE.php"> Go to the sub base</a> </li>
        {/if}
    </ul>

    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

</div>
</body>
</html>