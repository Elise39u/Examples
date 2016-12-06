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

    <h1> Outside </h1>
    <p> You`re out on the street. <br>
        a little bit futher you see some stores. <br>
        to the left you see a sand path. <br>
        and right you see that road goes on. <br>
        Which way wil you go.</p>
    <img src="img/montage.jpg">
    <ul>
        <li><a href="room.php"> Go back for Saftey ;) </a></li>
        <li><a href="Owood.php"> To some Wood </a></li>
        <li><a href="Oelectro.php"> TO some electro stuffie </a></li>
        <li><a href="Sand.php"> ... a sandpath -.- </a></li>
        <li><a href="Pass.php"> The pass to the other side</a></li>
        <li><a href="Street.php"> Futher ahead</a></li>
    </ul>
    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

</div>
</body>
</html>