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

    <ul>
        <p class="H1l">Npc`s in you`re party</p>
        {foreach from=$party key=id item=i}
            <li>{$i.name}</li>
        {/foreach}
    </ul>

    <h1> And agian street and shops </h1>
    <p> And there you`re standing at the end of the street.<br>
        You look down to the left and see a store. To the right you see grage. <br>
        And futher on you road goes on. <br>
        Which way wil you go.</p>
    <img src="img/street4.png">
    <ul>
        <li><a href="street.php"> Go back ^.^ </a></li>
        <li><a href="Garage.php"> To The garage </a></li>
        <li><a href="OMetal.php"> To the ... -.- Metal store </a></li>
        <li><a href="OGY.php"> Continu friend </a></li>
        <li><a href="Potion.php"> Potion Shop?? </a></li>
        {if isset($smarty.session.Emma) OR isset($smarty.session.Emma2)}
            {else}
            <li><a href="Npc21.php"> Go talk to the Pregnant Emma </a></li>
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