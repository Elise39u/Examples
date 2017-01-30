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

    <h1> Item shop  </h1>

    <ul>
        {foreach from=$inventory key=item_id item=i}
            <li>
                {$i.name} x {$i.quantity}
                <form action='ItemShop.php' method='post'>
                    <input type='hidden' name='sell-id' value='{$i.item_id}' />
                    <input type='submit' value='Sell' />
                    <input type="number" name="Quantity">
                </form>
            </li>
        {/foreach}
    </ul>

    <p>You may purchase any of the items listed below.</p>
    {if isset($error)}
        {if $error ne ''}
            <p style='color:red'>{$error}</p>
        {/if}
    {/if}
    {if isset($message)}
        {if $message ne ''}
            <p style='color:green'>{$message}</p>
        {/if}
    {/if}
    {if isset($Delete)}
        {if $Delete ne ''}
            <p style='color: blueviolet'>{$Delete}</p>
        {/if}
    {/if}

    {if isset($message1)}
        {if $message1 ne ''}
            <p style='color:green'>{$message1}</p>
        {/if}
    {/if}

    {if isset($Jup)}
        {if $Jup ne ''}
            <p style="color: #ff0000;">{$Jup}</p>
        {/if}
    {/if}
    
    {if isset($Nope)}
        {if $Nope ne ''}
            <p style="color: #980098;">{$Nope} <br>
                So we assume one?</p>
        {/if}
    {/if}

    {if isset($NoNo)}
        {if $NoNo ne ''}
            <p style="color: #980098;">{$NoNo} </p>
        {/if}
    {/if}

    {if isset($Damm)}
        {if $Damm ne ''}
            <p style="color: #980098;">{$Damm} </p>
        {/if}
    {/if}

    {if isset($Much)}
        <p style="color: indigo">{$Much}</p>
    {/if}
    <ul>
        {foreach from=$items key=id item=i}
        <li>
            <strong>{$i.name}</strong> - <em>{$i.price} gold coins</em>
            <form action='ItemShop.php' method='post'>
                <input type='hidden' name='item-id' value='{$i.id}' />
                <input type='submit' value='Buy' />
                <input type="number" value="" name="Quantity">
            </form>
            {/foreach}
    </ul> <br>
    <img src="img/Itemshop.png">
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