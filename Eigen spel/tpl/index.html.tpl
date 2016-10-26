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

    {if isset($location) }
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
                 <!-- looks of  Choice->to_id  is equal to 22 or 23 or 24 or 25 then change them
                 First looks of $_SESSION['Paddle'] Exist -->
                {if isset($smarty.session.Paddle)}
                {if $choice->to_id == 22}
                    <p class="hide"> Nothing Here Friend</p>
                {elseif isset($choice->need_item_id)}
                    <li class="Gone"><a href="index.php?location_id={$choice->to_id}">{$choice->title}</a></li>
                {else}
                    <li><a href="index.php?location_id={$choice->to_id}">{$choice->title}</a> </li>
                {/if}
                    {elseif isset($smarty.session.End2)}
                    {if $choice->to_id == 25}
                        <p class="hide"> Nothing Here Friend </p>
                    {elseif isset($choice->need_item_id)}
                        <li class="Gone"><a href="index.php?location_id={$choice->to_id}">{$choice->title}</a></li>
                    {else}
                        <li><a href="index.php?location_id={$choice->to_id}">{$choice->title}</a> </li>
                    {/if}
                    {elseif isset($smarty.session.Basebalbat)}
                    {if $choice->to_id == 23}
                        <p class="hide"> Nothing Here friend</p>
                    {elseif isset($choice->need_item_id)}
                        <li class="Gone"><a href="index.php?location_id={$choice->to_id}">{$choice->title}</a></li>
                    {else}
                        <li><a href="index.php?location_id={$choice->to_id}">{$choice->title}</a> </li>
                    {/if}
                    {elseif isset($smarty.session.Axe)}
                    {if $choice->to_id == 24}
                        <p class="hide"> Nothing Here friend</p>
                    {elseif isset($choice->need_item_id)}
                        <li class="Gone"><a href="index.php?location_id={$choice->to_id}">{$choice->title}</a></li>
                    {else}
                        <li><a href="index.php?location_id={$choice->to_id}">{$choice->title}</a> </li>
                    {/if}
                    {elseif isset($smarty.session.Hammer)}
                    {if $choice->to_id == 26}
                        <p class="hide"> Nothing Here friend</p>
                    {elseif isset($choice->need_item_id)}
                        <li class="Gone"><a href="index.php?location_id={$choice->to_id}">{$choice->title}</a></li>
                    {else}
                        <li><a href="index.php?location_id={$choice->to_id}">{$choice->title}</a> </li>
                    {/if}
                    {elseif isset($choice->need_item_id)}
                    <li class="Gone"><a href="index.php?location_id={$choice->to_id}">{$choice->title}</a></li>
                {else}
                    <li><a href="index.php?location_id={$choice->to_id}">{$choice->title}</a> </li>
                {/if}
                <!-- <li><a href="index.php?location_id={$choice->to_id}">{$choice->title}</a></li> -->
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

        <script type="text/javascript">
            $(".Lel").each(function(){
                $('.Lel').hide();
            });

            $(document).ready(function(){
                $(".Hello").hide();
                $(".Gone").hide();
                $(".Display").hide();
            });

            document.getElementsByClassName('Gone').style.display = 'none';
        </script>
    </div>
</body>
</html>