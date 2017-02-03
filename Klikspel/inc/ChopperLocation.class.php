<?php
/**
 * Created by PhpStorm.
 * User: justi
 * Date: 2-2-2017
 * Time: 10:16
 */

class Chopper_Location
{

    public $id;
    public $place_name;
    public $Choices = [];

    function LoadFromDb($mysqli, $id) {

        // Load the location of the chopper
        $sql = "SELECT * FROM chopper_location WHERE id=" . $id . ";";
        $results = $mysqli->query($sql);

        if ($results->num_rows >= 1) {
            $record = $results->fetch_assoc();
            $this->id = $record['id'];
            $this->place_name = $record['place_name'];
        }

        // Load choices for the chopper
        $sql = "SELECT * FROM chopper_choices WHERE from_id=" . $id . ";";
        $results2 = $mysqli->query($sql);

        while($row = $results2->fetch_assoc()) {
            $choice = new Choice();
            $choice->id = $row['id'];
            $choice->name = $row['name'];
            $choice->from_id = $row['from_id'];
            $choice->to_id = $row['to_id'];
            array_push($this->Choices, $choice);
        }

        return true;
    }
}