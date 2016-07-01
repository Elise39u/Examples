<html>
<head>
    <title> Mijn eigen spel</title>
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
        </p>
    {/if}

    {if isset($location) }
        <p>{$location->Title }</p>
        <p>{$location->Story }</p>
        {$location->Foto_url }

        <ul>
            {foreach $location->Choices as $choice }
            <li><a href="index.php?location_id={$choice->to_id}">{$choice->title}</a></li>
            <p> Hallo dit is een test regel </p>
            {/foreach}
        </ul>
    {/if}

    </div>
</body>
</html>