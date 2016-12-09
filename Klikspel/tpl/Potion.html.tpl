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

    <h1> Healing And Potions? </h1>
    <p>Welcome to the healer. You currently have <strong>{$curhp}</strong> HP out of a maximum of <strong>{$maxhp}</strong>.</p>
    <p>You have <strong>{$gold}</strong> gold to heal yourself with, and it will cost you <strong>1 gold per HP healed</strong> to heal yourself.</p>
    {if isset($healed)}
        {if isset($info)}
            <p class="hide">  {$info}  <br>
            You can`t damge you`re self</p>
        {/if}
        {if $healed ne 0}
            <p>You have been healed for <strong>{$healed}</strong> HP.</p>
        {/if}
    {/if}
    <form action='Potion.php' method='post'>
        <input type='text' name='amount' id='amount' /><br />
        <input type='submit' name='action' value='Heal Me' />
    </form>

    <p>Below are the Potions currently available for purchase.</p>
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
        {foreach from=$potion key=id item=i}
        <li>
            <strong>{$i.name}</strong> - <em>{$i.price} gold coins</em>
            <form action='Potion.php' method='post'>
                <input type='hidden' name='potion-id' value='{$i.id}' />
                <input type='submit' value='Buy' />
            </form>
            {/foreach}
    </ul>
    <p> As you standing there thinking need i a healing or potions its op to you.</p>
    <img src="img/Healer.png">

    <ul>
        <li><a href="AgianStreet.php"> Go back ^.^ </a></li>
    </ul>
    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

</div>
</body>
</html>