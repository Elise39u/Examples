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

    <h1> The WareHouse </h1>
    <p> Why do i want to use items ....</p>
    <img src="img/Warehous.png">

    <ul>
        {foreach from=$inventory key=id item=i}
            <li>
                <strong>{$i.name} x {$i.quantity}</strong>
                <form action='Warehouse.php' method='post'>
                    <input type='hidden' name='item-id' value='{$i.id}' />
                    <input type='submit' value='Use' />
                    <input type="number" name="Quantity">
                </form>
            </li>
        {/foreach}
    </ul>

    {if isset($One)}
        {if $One ne ''}
            <p class="Got"> {$One} </p>
        {/if}
    {/if}
    {if isset($Delete)}
        {if $Delete ne ''}
            <p class="Got"> {$Delete} </p>
        {/if}
    {/if}
    {if isset($Much)}
        {if $Much ne ''}
            <p class="Got"> {$Much} </p>
        {/if}
    {/if}
    <ul>
        <li><a href="Mall.php"> Go back and stop shopping ;-; </a></li>
    </ul>

    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

</div>
</body>
</html>