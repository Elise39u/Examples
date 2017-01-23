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

        <form method="post" action="index.php">
            <!-- pattern='[a-z][A-Z][0-9\s]+@' -->
            <h1> Register to save stats</h1> <br>
            First name:<br>
            <input type="text" name="FirstName" id="FirstName" value="{if isset($smarty.post.FirstName)}{$smarty.post.FirstName}{/if}"><br>
            Last name:<br>
            <input type="text" name="LastName" id="LastName" value="{if isset($smarty.post.LastName)}{$smarty.post.LastName}{/if}"><br>
            Email: <br>
            <input type="text" name="Email" id="Email" value="{if isset($smarty.post.Email)}{$smarty.post.Email}{/if}"><br>
            Password:<br>
            <input type="text" name="Password" id="Password" onblur="verifyMinLength(this, 10)" value="{if isset($smarty.post.Password)}{$smarty.post.Password}{/if}"><br>
            Username:<br>
            <input type="text" name="Username" id="Username" value="{if isset($smarty.post.Username)}{$smarty.post.Username}{/if}"><br>
            <input type="submit" name="submit" value="Submit">
        </form>


    <P>  Welcome to my internet game. Do you want to escape this abonded city? <br>
        So yes click the button below <br>
        No then i say close the page </P>
    <img src="img/image-3747618.jpg">
    <script type="text/javascript">
        function verifyMinLength(o, len) {
            if (o.value.length < len) {
                alert('The password must be 10 characters in length.');
                location.href = "http://localhost/Examplecode/Klikspel/fault.php";
            }
        }
    </script>

    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

</div>
</body>
</html>