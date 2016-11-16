<?php

function getWeaponStat($statName, $weaponID) {
    $conn = new mysqli('localhost', 'root', '', 'game');;
    $query = sprintf("SELECT content FROM items_stats WHERE stat_id = (SELECT id FROM stats WHERE display_name = '%s' OR short_name = '%s') AND item_id = '%s'",
        mysqli_real_escape_string($conn, $statName),
        mysqli_real_escape_string($conn, $statName),
        mysqli_real_escape_string($conn, $weaponID));
    $result = mysqli_query($conn, $query);
    list($value) = mysqli_fetch_assoc($result);
    var_dump($query);
    var_dump($result);
    var_dump($value);
    return $value;
}