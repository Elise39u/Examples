<?php

require_once ("DBconnection.php");
ini_set('memory_limit', '-1');
ini_set('max_execution_time', 300); //300 seconds = 5 minutes

class Location
{
    public $id;
    public $Title;
    public $Foto_url;
    public $Story;
    public $Choices = [];
    public $Inventory = [];

    function LoadFromDb($mysqli, $id)
    {
        $sql = "SELECT * FROM locations WHERE id=" . $id . ";";
        $results = $mysqli->query($sql);

        if ($results->num_rows >= 1) {
            $record = $results->fetch_assoc();
            $this->id = $record['id'];
            $this->Title = $record['Title'];
            $this->Foto_url = ('<img src="' . $record['Foto_url'] . '">');
            $this->Story = $record['Story'];

        }

        // load choices
        $sql = "SELECT * FROM choices WHERE from_id=" . $id . ";"; // or need_item_id IS NOT NULL
        $results2 = $mysqli->query($sql);

        while ($record = $results2->fetch_assoc()) {
                    $choice = new Choice();
                    $choice->id = $record['id'];
                    $choice->from_id = $record['from_id'];
                    $choice->to_id = $record['to_id'];
                    $choice->title = $record['title'];
                    $choice->need_item_id = $record ['need_item_id'];
                    array_push($this->Choices, $choice);
            }

    // Load inventory
        $sql = "SELECT * FROM inventory";
        $results3 = $mysqli->query($sql);

        while ($row = $results3->fetch_assoc())  {
            $item = new Inventory();
            $item->id = $row['id'];
            $item->player_id = $row['player_id'];
            $item->item_id = $row['item_id'];
            $item->space = $row['space'];
            array_push($this->Inventory, $item);
        }
        return true;
    }
}