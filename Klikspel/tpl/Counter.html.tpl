<!DOCTYPE HTML>
<html>
<head>
    <title> The {$pagetitle} </title>
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

    <h1> Money </h1>
    <p>Welcome to the bank </p>   <p> You currently have <strong>{$inbank}</strong> gold in the bank, and <strong>{$gold}</strong> gold in hand.</p>
    <form action='Counter.php' method='post'>
        <input type='text' name='amount' /><br />
        <input type='submit' name='action' value='Deposit' /> or
        <input type='submit' name='action' value='Withdraw' /> 	</form>

    {if isset($info)}
        <p class="item"> {$info} <br>
        You cant withdraw/depoist a negtive number</p>
    {/if}
    {if isset($deposited)}
        {if $deposited ne 0}
            <p>You deposited <strong>{$deposited}</strong> gold into your bank account. Your total in the bank is now <strong>{$inbank}</strong>.</p>
        {/if}
    {/if}
    {if isset($withdrawn)}
        {if $withdrawn ne 0}
            <p>You withdraw <strong>{$withdrawn}</strong> gold from your bank account. Your total gold in hand is now <strong>{$gold}</strong>.</p>
        {/if}
    {/if}
    <img src="img/Bank2.png">
    <ul>
        <li><a href=Bank.php> Go back  </a> </li>
    </ul>
    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

</div>
</body>
</html>