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

    <h1> Like wut ?? </h1>

    <p>  As you build you`re Antenne you recvie the folowwing messages <br>
        Message 1: For any ..... Out ....! If you`re still .... and not .... come to the roof of the police .... and we ... pick ... with one of our choppers. The ... needed is a flare ... signal Greeting the Army <br>
        Message 2: We want to that you follow the next steps friend: 1. Go to the graveyard 2. Find us weapons 3. Signal a flare 4. in exchange you can ride with us Only if you make the promisis you can find redemption Greetings Mr. S <br>
        What wil you do now the 2nd message was so clear if it came out of space but wait you recevie a anthor message. <br>
        Message 3: ... Citziten of New york ... We ... conformation ... Army .. Will .... ... the City.. in case of the outbreak.... to all Citziten ... still ... ... evac at the bridige... ... luck ... all ... ... Channel 6 <br>
        And now thinking who shoud i message back to escape this god damm city </p>

    <img src="img/Message.png">
    <ul>
        <li><a href="eroof.php"> Go back </li>
    </ul>

    <ul>
        {foreach from=$inventory key=id item=i}
            <li> {$i.player_id} {$i.item_id} {$i.space} {$i.quantity} </li>
        {/foreach}
    </ul>

</div>
</body>
</html>