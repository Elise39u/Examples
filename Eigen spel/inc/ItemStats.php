<?php

function getItem($itemID) {
    $conn = new mysqli('localhost', 'root', '', 'game');;	$query = sprintf("SELECT name, type FROM items WHERE id = '%s'",
        mysqli_real_escape_string($conn, $itemID));
    $result = mysqli_query($conn, $query);
    $item = mysqli_fetch_assoc($result);
    $item['id']	= $itemID;
    return $item;
}

function getItemStat($statName,$itemID) {
    $conn = new mysqli('localhost', 'root', '', 'game');;	createIfNotExistsItem($statName,$itemID);
    $query = sprintf("SELECT content FROM item_stats WHERE stat_id = (SELECT id FROM stats WHERE display_name = '%s' OR short_name = '%s') AND item_id = '%s'",
        mysqli_real_escape_string($conn, $statName),
        mysqli_real_escape_string($conn, $statName),
        mysqli_real_escape_string($conn, $itemID));
    $result = mysqli_query($conn, $query);
    list($value) = mysqli_fetch_row($result);
    return $value;
}
function setItemStat($statName,$itemID,$value) {
    $conn = new mysqli('localhost', 'root', '', 'game');;	createIfNotExistsItem($statName,$itemID);
    $query = sprintf("UPDATE item_stats SET content = '%s' WHERE stat_id = (SELECT id FROM stats WHERE display_name = '%s' OR short_name = '%s') AND item_id = '%s'",
        mysqli_real_escape_string($conn, $value),
        mysqli_real_escape_string($conn, $statName),
        mysqli_real_escape_string($conn, $statName),
        mysqli_real_escape_string($conn, $itemID));
    $result = mysqli_query($conn, $query);
    list($value) = mysqli_fetch_row($result);
    return $value;
}

function createIfNotExistsItem($statName,$itemID) {
    $conn = new mysqli('localhost', 'root', '', 'game');;	$query = sprintf("SELECT count(content) FROM item_stats WHERE stat_id = (SELECT id FROM stats WHERE display_name = '%s' OR short_name = '%s') AND item_id = '%s'",
        mysqli_real_escape_string($conn, $statName),
        mysqli_real_escape_string($conn, $statName),
        mysqli_real_escape_string($conn, $itemID));
    $result = mysqli_query($conn, $query);

    list($count) = mysqli_fetch_row($result);
    if($count == 0) {
        // the stat doesn't exist; insert it into the database
        $query = sprintf("INSERT INTO item_stats(stat_id,item_id,content) VALUES ((SELECT id FROM stats WHERE display_name = '%s' OR short_name = '%s'),'%s','%s')",
            mysqli_real_escape_string($conn, $statName),
            mysqli_real_escape_string($conn, $statName),
            mysqli_real_escape_string($conn, $itemID),
            '0');
        mysqli_query($conn, $query);
    }
}

?>
