<?php
session_start();
require_once ('inc/loadsmarty.php');
require_once ('inc/Location.class.php');
require_once ('inc/DBconnection.php');
require_once ('inc/Choice.class.php');
require_once ('inc/Inventory.class.php');

$location_id =  (isset($_GET['location_id']) ? $_GET['location_id'] : 1);   // kijk welke locatie wordt gevraagd
$errors = [];       // hou fouten bij in deze array
$loc = new Location();  // maak lege locatie aan
$did_load_work = $loc->LoadFromDb($mysqli, $location_id);       // laad locatie en choices vanuit de database
if ($did_load_work == FALSE) {    // als het laden fout ging, voeg dan een error toe aan de array $errors
    array_push($errors, "This location does not exist in the database");
}

if($location_id == 22 ) {
    $_SESSION['Paddle'] = true;
}

if ($location_id == 23) {
    $_SESSION['Basebalbat'] = true;
}

if ($location_id == 24) {
    $_SESSION['Axe'] = true;
}

if ($location_id == 26) {
    $_SESSION['Hammer'] = true;
}

// Make Session End 2 when you reached location 27
if($location_id == 27) {
    $_SESSION['End2'] = true;
}

/*
if (isset($loc)) {
    if (is_null($loc->Choices)) {
        //  Load choice->to_id 25
        echo "Hello Friend";
    }
    var_dump($loc);
}


$obj = new Choice();
$refObj = new ReflectionObject($obj);
$refProp1 = $refObj->getProperty("need_item_id");
$refProp1->setAccessible(TRUE);

                {if $choice->need_item_id}
                    {foreach $location->Inventory as $itm}
                      {if $itm->item_id == $choice->need_item_id}
                            <p class="Got"> Dorker You have the item {$choice->need_item_id}  </p>
                            <div class="Lel"> {$choice->to_id} </div>
                          {else}
                          <!--
                          <p class="hello"> You have nothing</p>
                          <button class="Gone">Click me!!!!!!!</button> --> <br>
                      {/if}
                    {/foreach}
                {/if}

                {foreach $location->Inventory as $test}
                    {if $choice->need_item_id == $test->item_id}
                        <p class="Got"> You Have the item {$test->item_id} Dorker</p>
                    {elseif isset($choice->need_item_id)}
                        <p class="haha"> Go look for the item {$choice->need_item_id} Dorker</p>
                    {else}
                        <li class="Display"><a href="index.php?location_id={$choice->to_id}">{$choice->title}</a></li>
                    {/if}
                {/foreach}
*/

$smarty->assign('pagetitle', 'Games to play');
$smarty->assign('errors', $errors);         // geef lege of gevulde array $errors mee
$smarty->assign('location', $loc);          // geef locatie (en daarin de choices) mee
$smarty->assign('location', $loc);          // geef locatie (en daarin de choices) mee
$smarty->display("tpl/index.html.tpl");

if (isset($_SESSION['Paddle']) || isset($_SESSION['End2']) || isset($_SESSION['Hammer']) || isset($_SESSION['Axe']) || isset($_SESSION['Basebalbat'])) {

            echo "<div id=\"msg\"> You have picked up the item";
            $converted = settype($location_id, 'integer');
            $converted = settype($loc->id, 'integer');
            echo "<br />";

    switch ($location_id) {
        case $location_id == 22:
            echo "You picked up the paddle";
            echo "<br />";
        break;
        case $location_id == 23;
            echo "You picked up the Basebalbat";
            echo "<br />";
        break;
        case $location_id == 24;
            echo "You picked up the Axe";
            echo "<br />";
            break;
        case $location_id == 26;
            echo "You picked up a hammer";
            echo "<br />";
            break;
        default:
            echo "no items has been picked up";
            echo "<br />";
    }
}