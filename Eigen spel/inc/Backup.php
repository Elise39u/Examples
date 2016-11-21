<?php
global $space;
// global $userID;
$space = 35;

/*
echo "<div id=\"msg\">";
if(isset($loc->item_id)) {
    print_r($loc->item_id); echo "</br>";
    if (isset($loc->item_id)) {
        if($loc->Inventory == NULL) {
            $sql = "INSERT INTO Inventory(player_id, item_id, space) VALUES ('1', '$loc->item_id', '$space')";
            echo "this $space left </br>";
            if ($mysqli->query($sql) === TRUE) {
                echo "New record created successfully";
            } else {
                echo "Error: " . $sql . "<br>" . $mysqli->error;
            }
        }
        elseif(isset($loc->item_id)) {
            $result = $mysqli->query("SELECT item_id FROM Inventory WHERE item_id = $loc->item_id");
            if($result->num_rows > 0) {
                echo "Exsist already Dork";
            } else {
                foreach ($loc->Inventory as $Ok) {
                    $Ok = $space;
                    $space--;
                }
                $sql = "INSERT INTO Inventory(player_id, item_id, space) VALUES ('1', '$loc->item_id', '$space')";
                if ($space <= 0) {
                     echo "<font color=white> Because you have no space left </font>";
                    die($space);
                }
                echo "this $space left </br>";
                if ($mysqli->query($sql) === TRUE) {
                    echo "New record created successfully";
                } else {
                    echo "Error: " . $sql . "<br>" . $mysqli->error;
                }
            }
        }
        else {
            echo "Wuuuttttt";
        }
    }
    else {
        echo "Nothing here";
    }
}
else {
    echo "Ehheeee so now......";
}

if ($location_id == 25 || $location_id == 29 || $location_id == 51 || $location_id == 52) {
    $sql = "TRUNCATE TABLE inventory";
    mysqli_query($mysqli, $sql);
}
*/

/*
			<div style="display:none">
			<iframe width="560" height="315" src="https://www.youtube.com/embed/videoseries?list=PLNc-vlTat7vjSsH5K5WQSa-U2hyl-IEWL&autoplay=1&autohide=2&start=7" frameborder="0" allowfullscreen></iframe>
			</div>
 */

/*
        <ul>
            {foreach $location->Inventory as $hello}
               <li> {$hello->player_id} {$hello->item_id} {$hello->space}</li>
            {/foreach}
        </ul>*/


/*

        // Load inventory
        $sql = "SELECT * FROM inventory";
        $results3 = $mysqli->query($sql);

        while ($row = $results3->fetch_assoc()) {
            $item = new Inventory();
            $item->id = $row['id'];
            $item->player_id = $row['player_id'];
            $item->item_id = $row['item_id'];
            $item->space = $row['space'];
            array_push($this->Inventory, $item);
        }

        return true;
    }
} --> Vorige 2 verwijderen


INSERT INTO item_stats(item_id,stat_id,content) VALUES ((SELECT id FROM items WHERE type IN ('Usable', 'Potion')), (SELECT id FROM stats WHERE short_name = 'token'), 'item');
INSERT INTO item_stats(item_id,stat_id,content) VALUES ((SELECT id FROM items WHERE type = 'Potion'), (SELECT id FROM stats WHERE short_name = 'token'), 'potion');

 * INSERT INTO item_stats(item_id,stat_id,content) VALUES ((SELECT id FROM items WHERE name = 'Sword'),(SELECT id FROM stats WHERE short_name = 'atk'),200);
INSERT INTO item_stats(item_id,stat_id,content) VALUES ((SELECT id FROM items WHERE name = 'Sword'),(SELECT id FROM stats WHERE short_name = 'def'),50);
 */