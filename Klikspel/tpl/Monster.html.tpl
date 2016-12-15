<!DOCTYPE HTML>
<html>
<head>
    <title> The {$area} </title>
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

    <h1> You've encountered a <strong>{$monster}! </strong> </h1>
        {if $combat eq ''}
            <form action='Monster.php' method='post'>
                <input type='submit' name='action' value='Attack' /> or
                <input type='submit' name='action' value='Run Away' />
                <input type='hidden' name='monster' value='{$monster}' />
            </form>
        {else}
            <ul>
                {foreach from=$combat key=id item=i}
                    <li><strong>{$i.attacker}</strong> attacks <strong>{$i.defender}</strong> for {$i.damage} damage!</li>
                {/foreach}
            </ul>
            {if isset($won)}
                {if $won eq 1}
                    <p>You found a <strong>{$item}</strong>!</p>
                    <p>You killed <strong>{$smarty.post.monster}</strong>! You gained <strong>{$gold}</strong> gold.</p>
                    {if $area_id == 1}
                    <p><a href='lake.php'>Go to the lake</a></p>
                    <p><a href="Sand.php">Go back to some sand -.- </a> </p>
                    {elseif $area_id == 2}
                        <p><a href="OBank.php"> Go to the bank </a></p>
                        <p><a href="Nstation.php"> Poilice stations are good ? </a></p>
                     {elseif $area_id == 4}
                        <p><a href="#"> Go futher in the cave </a></p>
                        <p><a href="#"> Go Back in the cave </a></p>
                     {else}
                        <p><a href="Deck.php"> Go on the boat if you dare </a></p>
                        <p><a href="Nship.php"> Go back to you`re boat </a></p>
                    {/if}
                {/if}
            {/if}
            {if isset($lost)}
                {if $lost eq 1}
                    <p>You were killed by <strong>{$smarty.post.monster}</strong>.</p>
                    <p><a href='index.php'>Game over</a></p>
                {/if}
            {/if}
        {/if}

    {$img}

    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

</div>
</body>
</html>