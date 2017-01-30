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

    <h1> So store two </h1>
    <p> I am just gonna take everything <br>
    For i forgot what to take with me</p>
    <img src="img/Action.png">
    <ul>
        <li><a href="TownMall.php"> Go back  </a></li>
        <li><a href="Pencil.php"> Go grab some pencils </a></li>
        <li><a href="MakeUp.php"> Go grab some make-up </a></li>
        <li><a href="Caluclator.php"> Go grab a Caluclator </a></li>
        <li><a href="NoteBook.php"> Go grab a Notebook  </a></li>
        <li><a href="Pen.php"> Go grab a pen </a></li>
        <li><a href="Knife.php"> Go grab the kichten knife </a></li>
    </ul>
    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

</div>
</body>
</html>