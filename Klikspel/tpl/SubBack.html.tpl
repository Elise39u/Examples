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

    <h1> Big empty space  </h1>
    <p> As you Look around you see left a school and kichten <br>
    Right a playayrd  <br>
    ahed a small lighr <br>
    Wich way wil it be</p>
    <img src="img/SpaceSubBase.png">
    <ul>
        <li><a href="SubYard.php"> Go back  </a></li>
        <li><a href="SubSchool.php"> Go towards the school </a></li>
        <li><a href="SubPlayyard.php"> Go towards the playground </a></li>
        <li><a href="SubDoor.php"> Go on</a></li>
        <li><a href="#"> Go Talk to watcher of the kids Maxine </a></li>
        <li><a href="#"> Go talk to Econoom Tim </a></li>
    </ul>

    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

</div>
</body>
</html>