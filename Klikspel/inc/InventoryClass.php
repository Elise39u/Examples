<?php

class Inventory
{
    public $id;
    public $player_id;
    public $item_id;
    public $space;
    public $quantity;


    function LoadFromDb($mysqli, $id)
    {
        // Load inventory
        $sql = "SELECT * FROM inventory WHERE id=" . $id . ";";
        $results = $mysqli->query($sql);

        if ($results->num_rows >= 1) {
            $item = $results->fetch_assoc();
            $this->id = $item['id'];
            $this->player_id = $item['player_id'];
            $this->item_id = $item['item_id'];
            $this->space = $item['space'];
            $this->quantity = $item['quantity'];
        }

        var_dump($sql);
        var_dump($mysqli);
        var_dump($results);
        return true;
    }
}