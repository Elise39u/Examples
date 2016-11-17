<html>
<head>
    <title> {$pagetitle} </title>
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
</head>

<body>
    <div class="plaatje">
    {if isset($errors) }
        <p style="border: 1px solid #ff0000;"></p>
        <ul>
            {foreach $errors as $error}
                <li>{$error}</li>
            {/foreach}
        </ul>
    {/if}

        {if $location->id == 97}
            {if $combat eq ''}
            <p>You've encountered a <strong>{$monster}! </strong></p>
            <form action='index.php?location_id=97' method='post'>
                <input type='submit' name='action' value='Attack' /> or
                <input type='submit' name='action' value='Run Away' />
                <input type='hidden' name='monster' value='{$monster}' />
            </form>
        {else}
                <ul>
                    {foreach from=$combat key=id item=i}
                        <li><strong>{$i.attacker}</strong> attacks {$i.defender} for {$i.damage} damage!</li>
                    {/foreach}
                </ul>
                {if isset($won)}
                {if $won eq 1}
                    <p>You killed <strong>{$smarty.post.monster}</strong>! You gained <strong>{$gold}</strong> gold.</p>
                    <p><a href='index.php?location_id=44'>Go on Friend</a></p>
                    <p><a href="index.php?location_id=34">Go back to the station </a> </p>
                {/if}
                {/if}
                {if isset($lost)}
                {if $lost eq 1}
                    <p>You were killed by <strong>{$smarty.post.monster}</strong>.</p>
                    <p><a href='index.php'>Game over</a></p>
                {/if}
                {/if}
            {/if}
        {/if}

        {if $location->id == 2}
            <li><a href="index.php?location_id=1"> Log out </a></li>
            <script type="text/javascript">
                window.alert("Fooled You Friend There is no Button");
            </script>
        {/if}

        {if $location->id == 1}
            <form method="post" action="index.php?location_id=1">
                <h1> Register to save stats</h1> <br>
                First name:<br>
                <input type="text" name="FirstName" id="FirstName" value=""><br>
                Last name:<br>
                <input type="text" name="LastName" id="LastName" value=""><br>
                Email: <br>
                <input type="text" name="Email" id="Email" value=""><br>
                Password:<br>
                <input type="text" name="Password" id="Password" onblur="verifyMinLength(this, 10)" value=""><br>
                Username:<br>
                <input type="text" name="Username" id="Username" value=""><br>
                <input type="submit" name="submit" value="Submit">
            </form>
        {/if}

        <script type="text/javascript">
        function verifyMinLength(o, len) {
        if (o.value.length < len) {
            alert('The password must be 10 characters in length.');
            location.href = "http://localhost/Eigen%20spel/index.php?location_id=96";
                }
            }
        </script>

    {if isset($location)}
        {if $location->id == 33}
        <h3>Current Equipment:</h3>
        <p><a href='index.php?location_id=32'>Back outside</a></p>
        <ul>
        <li>
        Primary Hand:
            {if isset($phand)}
            {if $phand ne ''}
                {$phand}
            <form action='index.php?location_id=33' method='post'>
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
            <form action='index.php?location_id=33' method='post'>
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
        <form action='index.php?location_id=33' method='post'>
        <input type='submit' value='Swap' name='swap' />
        </form>
        </p>

            <p>Below are the weapons currently available for purchase.</p>
            <ul>
                {foreach from=$weapons key=id item=i}
                <li>
                    <strong>{$i.name}</strong> - <em>{$i.price} gold coins</em>
                    <form action='index.php?location_id=33' method='post'>
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

        {/if}

        {if $location->id == 98}
            <p>Welcome to the bank </p>   <p> You currently have <strong>{$inbank}</strong> gold in the bank, and <strong>{$gold}</strong> gold in hand.</p>
            <form action='index.php?location_id=98' method='post'>
                <input type='text' name='amount' /><br />
                <input type='submit' name='action' value='Deposit' /> or
                <input type='submit' name='action' value='Withdraw' /> 	</form>
            <p><a href='index.php?location_id=46'>Back to the hall</a></p>

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
        {/if}
        <h1>{$location->Title }</h1>
        <p>{$location->Story }</p>
        {$location->Foto_url }
        {/if}

        <ul>
            {foreach $location->Choices as $choice}
                <!-- change the string output to a int value  -->
                {$choice->to_id|intval}
                {if isset($choice->need_item_id)}
                {foreach $location->Inventory as $Hai}
                    {if $Hai->item_id == $choice->need_item_id}
                        <li><a href="index.php?location_id={$choice->to_id}">{$choice->title}</a> </li>
                        <p class="Got"> Dorker You have the item {$choice->need_item_id}  </p>
                        <!-- <p class="Haha"> Nothing Here to find</p> -->
                    {/if}
                {/foreach}
                {/if}
                {if isset($choice->need_item_id)}
                    <li class="Gone"><a href="index.php?location_id={$choice->to_id}">{$choice->title}</a></li>
                    {elseif $location->id == 1}
                    <li class="Gone"><a href="index.php?location_id={$choice->to_id}">{$choice->title}</a></li>
                {else}
                    <li><a href="index.php?location_id={$choice->to_id}">{$choice->title}</a> </li>
                {/if}
            {/foreach}
            {if $location->id == 25 || $location->id == 29 || $location->id == 51 || $location->id == 52}
                {session_unset()}
                {session_destroy()}
            {/if}
        </ul>

        <ul>
            {foreach $location->Inventory as $hello}
               <li> {$hello->player_id} {$hello->item_id} {$hello->space}</li>
            {/foreach}
        </ul>

        <ul>
            <li>Attack: <strong>{$attack}</strong></li>
            <li>Defence: <strong>{$defence}</strong></li>
            <li>Magic: <strong>{$magic}</strong></li>
            <li>Gold in hand: <strong>{$gold}</strong></li>
            <li>Current HP: <strong>{$currentHP}/{$maximumHP}</strong>
            <li>Gold Inbank: <strong>{$inbank}</strong></li>
        </ul>

        <script type="text/javascript">
            $(document).ready(function(){
                $(".Gone").hide();
            });
        </script>
    </div>
</body>
</html>