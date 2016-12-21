<?php

include_once ('DBconnection.php');

function getStat($statName,$userID) {
    $conn = new mysqli('localhost', 'root', '', 'klikspel');;
    createMonsterStatIfNotExists($statName,$userID);
    $query = sprintf("SELECT content FROM player_stats WHERE stat_id = (SELECT id FROM stats WHERE display_name = '%s' OR short_name = '%s') AND user_id = '%s'",
        mysqli_real_escape_string($conn, $statName),
        mysqli_real_escape_string($conn, $statName),
        mysqli_real_escape_string($conn, $userID));
    $result = mysqli_query($conn, $query);
    list($value) = mysqli_fetch_row($result);
    return $value;
}


function setStat($statName,$userID,$value) {
    $conn = new mysqli('localhost', 'root', '', 'klikspel');
    createIfNotExists($statName,$userID);
    $query = sprintf("UPDATE player_stats SET content = '%s' WHERE stat_id = (SELECT id FROM stats WHERE display_name = '%s' OR short_name = '%s') AND user_id = '%s'",
        mysqli_real_escape_string($conn, $value),
        mysqli_real_escape_string($conn, $statName),
        mysqli_real_escape_string($conn, $statName),
        mysqli_real_escape_string($conn, $userID));
    $result = mysqli_query($conn, $query) or die(mysqli_error($conn));
    list($value) = $result;
    return $value;
}

function createIfNotExists($statName,$userID) {
    $conn = new mysqli('localhost', 'root', '', 'klikspel');;
    $query = sprintf("SELECT count(content) FROM player_stats WHERE stat_id = (SELECT id FROM stats WHERE display_name = '%s' OR short_name = '%s') AND user_id = '%s'",
        mysqli_real_escape_string($conn, $statName),
        mysqli_real_escape_string($conn, $statName),
        mysqli_real_escape_string($conn, $userID));
    $result = mysqli_query($conn, $query);
    list($count) = mysqli_fetch_row($result);
    if($count == 0) {
        // the stat doesn't exist; insert it into the database
        $query = sprintf("INSERT INTO player_stats(stat_id,user_id,content) VALUES ((SELECT id FROM stats WHERE display_name = '%s' OR short_name = '%s'),'%s','%s')",
            mysqli_real_escape_string($conn, $statName),
            mysqli_real_escape_string($conn, $statName),
            mysqli_real_escape_string($conn, $userID), '100');
        mysqli_query($conn, $query);
    }
    return $count;
}