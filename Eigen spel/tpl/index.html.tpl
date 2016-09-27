<html>
<head>
    <title> {$pagetitle} </title>
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>
    <div class="plaatje">
    {if isset($errors) }
        <p style="border: 1px solid red;">
        <ul>
            {foreach $errors as $error}
                <li>{$error}</li>
            {/foreach}
        </ul>
    {/if}

    {if isset($location) }
        <h1>{$location->Title }</h1>
        <p>{$location->Story }</p>
        {$location->Foto_url }
        {/if}

        <ul>
            {foreach $location->Choices as $choice}
                <!-- change the string output to a int value  -->
                {$choice->to_id|intval}
                <!-- looks of  Choice->to_id  is equal to 22 or 23 or 24 or 25 then change them -->
                <!-- First looks of $_SESSION['Pickup'] Exist or SESSION['End2'} -->
                {if $_SESSION['Pickup'] = true || $_SESSION['End2']}
                {if $choice->to_id == 22 or $choice->to_id ==  23 or $choice->to_id == 24 or $choice->to_id == 25}
                    <p class="hide"> Nothing Here Friend</p>
                {else}
                    <li><a href="index.php?location_id={$choice->to_id}">{$choice->title}</a></li>
                {/if}
                {/if}
            {/foreach}
        </ul>

        <ul>
            {foreach $location->Inventory as $hello}
               <li> {$hello->player_id} {$hello->item_id} {$hello->space}</li>
            {/foreach}
        </ul>

    </div>
</body>
</html>