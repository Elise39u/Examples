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

    <h1> Inside The Weapon Store </h1>
    <h3>Current Equipment:</h3>
    <ul>
        <li>
            Primary Hand:
            {if isset($phand)}
                {if $phand ne ''}
                    {$phand}
                    <form action='WeaponShop.php' method='post'>
                        <input type='hidden' name='sell' value='phand' />
                        <input type='submit' value='Sell' />
                    </form>
                {else}
                    None
                {/if}
            {/if}
        </li>
        <li>
            Secondary Hand:
            {if isset($shand)}
                {if $shand ne ''}
                    {$shand}
                    <form action='WeaponShop.php' method='post'>
                        <input type='hidden' name='sell' value='shand' />
                        <input type='submit' value='Sell' />
                    </form>
                {else}
                    None
                {/if}
            {/if}
        </li>
    </ul>

    <p>
    <form action='WeaponShop.php' method='post'>
        <input type='submit' value='Swap' name='swap' />
    </form>
    </p>
    <p>Below are the weapons currently available for purchase.</p>
    <img src="img/InsideWS.png">
    <ul>
        {foreach from=$weapons key=id item=i}
        <li>
            <strong>{$i.name}</strong> - <em>{$i.price} gold coins</em>
            <form action='WeaponShop.php' method='post'>
                <input type='hidden' name='weapon-id' value='{$i.id}' />
                <input type='submit' value='Buy' />
            </form>
            {/foreach}
    </ul>

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

    <ul>
        <li><a href="OWS.php"> Go back Outside</a></li>
    </ul>

    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

</div>
</body>
</html>