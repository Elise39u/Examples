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

    {if isset($Nope)}
        {if $Nope ne ''}
            <p style="color: #980098;">{$Nope} <br>
            So we assume one?</p>
        {/if}
    {/if}

    {if isset($Mehhhhhh)}
        {if $Mehhhhhh ne ''}
            <p style="color: #980098;">{$Mehhhhhh} </p>
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

    <ul>
        {foreach from=$potion key=id item=i}
        <li>
            <strong>{$i.name}</strong> - <em>{$i.price} gold coins</em>
            <form action='Potion.php' method='post'>
                <input type='hidden' name='potion-id' value='{$i.id}' />
                <input type='submit' value='Buy' />
                <input type="number" value="" name="Quantity">
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