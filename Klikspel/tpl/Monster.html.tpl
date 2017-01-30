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
                    <p>You killed <strong>{$smarty.post.monster}</strong>! You gained <strong>{$gold1}</strong> gold,
                        and <strong>{$exp}</strong> experience.</p>
                    {if isset($level_up)}
                    {if $level_up eq 1}
                        <p><strong>You gained a level!</strong></p>
                        <form action="Monster.php" method="post">
                            <ul>
                             <p>Which stat do you want to increase?</p>
                            <li> <p class="H1l"> Attack </p> </li>
                            <li> <input type="radio" name="Attack" value="Attack"></li>
                            <li> <p class="H1l"> Defense </p>  </li>
                            <li> <input type="radio" name="Defense" value="Defense"></li>
                            <li>  <p class="H1l"> MaxHP </p> </li>
                            <li> <input type="radio" name="MaxHP" value="MaxHP"></li>
                            <input type="submit" value="submit" name="submit">
                                </ul>
                        </form>
                    {/if}
                    {/if}
                    {if $area_id == 1}
                    <p><a href='lake.php'>Go to the lake</a></p>
                    <p><a href="Sand.php">Go  to some sand -.- </a> </p>
                    {elseif $area_id == 2}
                        <p><a href="OBank.php"> Go to the bank </a></p>
                        <p><a href="Nstation.php"> Poilice stations are good ? </a></p>
                     {elseif $area_id == 4}
                        <p><a href="CaveLH.php"> Go futher in the cave </a></p>
                        <p><a href="CaveY.php"> Go to the yard  in the cave </a></p>
                        {elseif $area_id == 5}
                        <p><a href="PrisonBlockB.php"> Go on to block b</a></p>
                        <p><a href="PrisonHallKichten.php"> Go to the kichten</a></p>
                    {elseif $area_id == 6}
                        <p><a href="TownYard.php"> Go to the city </a></p>
                        <p><a href="TownCave.php"> Go back to the cave</a></p>
                     {else}
                        <p><a href="Deck.php"> Go on the boat if you dare </a></p>
                        <p><a href="Nship.php"> Go to you`re boat </a></p>
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



    {if isset($IncDef)}
        <p style="color: blue"> {$IncDef} </p>
    {/if}
    {if isset($IncAtk)}
        <p style="color: blue"> {$IncAtk} </p>
    {/if}
    {if isset($IncHP)}
        <p style="color: blue"> {$IncHP} </p>
    {/if}
</div>
</body>
</html>