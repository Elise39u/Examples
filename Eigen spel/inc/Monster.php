<?php

include_once ("DBconnection.php");
function getMonsterStat($statName,$monsterID) {
    $conn = new mysqli('localhost', 'root', '', 'game');;
    createMonsterStatIfNotExists($statName,$monsterID);
    $query = sprintf("SELECT content FROM monster_stats WHERE stat_id = (SELECT id FROM stats WHERE display_name = '%s' OR short_name = '%s') AND monster_id = '%s'",
        mysqli_real_escape_string($conn, $statName),
        mysqli_real_escape_string($conn, $statName),
        mysqli_real_escape_string($conn, $monsterID));
    $result = mysqli_query($conn, $query);
    list($value) = mysqli_fetch_row($result);
    return $value;
}

function createMonsterStatIfNotExists($statName,$monsterID) {
    $conn = new mysqli('localhost', 'root', '', 'game');;
    $query = sprintf("SELECT count(content) FROM monster_stats WHERE stat_id = (SELECT id FROM stats WHERE display_name = '%s' OR short_name = '%s') AND monster_id = '%s'",
        mysqli_real_escape_string($conn, $statName),
        mysqli_real_escape_string($conn, $statName),
        mysqli_real_escape_string($conn, $monsterID));
    $result = mysqli_query($conn ,$query);
    list($count) = mysqli_fetch_row($result);
    if($count == 0) {
        // the stat doesn't exist; insert it into the database
        $query = sprintf("INSERT INTO monster_stats(stat_id,monster_id,content) VALUES ((SELECT id FROM stats WHERE display_name = '%s' OR short_name = '%s'),'%s','%s')",
            mysqli_real_escape_string($conn, $statName),
            mysqli_real_escape_string($conn, $statName),
            mysqli_real_escape_string($conn, $monsterID),
            '100');
        mysqli_query($conn,$query);
    }
}

?>