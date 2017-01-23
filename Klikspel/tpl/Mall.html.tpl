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

    <h1> The mall  </h1>
    <p> In the distence are a few shops? dare to go to it </p>
    <p id="Npc11"></p>
    <img src="img/mall.png">
    <ul>
        <li><a href="Deadend.php"> Go back and stop shopping ;-; </a></li>
        <li><a href="ItemShop.php"> Item Shop ?? </a></li>
        <li><a href="Warehouse.php"> Warehouse ??? </a></li>
        <li><a href="Supermarkt.php"> grocery store </a></li>
        <li><a href="Liquor.php"> Liquor store </a></li>
        <li><a href="yard.php"> Go outside on the other side </a></li>
    </ul>
    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

    <script type="text/javascript">
        if (window.name == "Marieke") {
            document.getElementById('Npc11').innerHTML = "Coach Marieke: Ahhhh please could we go shopping <br>" +
                    "Please i see some nice shops but are they closed? <br>" +
                    "ahhhh please {$smarty.session.username} <br> " +
                            "{$smarty.session.username} Well Marieke ........."
        }
    </script>
</div>
</body>
</html>