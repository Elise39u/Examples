<?php

require_once ("DBconnection.php");

class Location
{
    public $id;
    public $Title;
    public $Foto_url;
    public $Story;
    public $Choices = [];

    function LoadFromDb($mysqli, $id)
    {
        $sql = "SELECT * FROM locations WHERE id=" . $id . ";";
        $results = $mysqli->query($sql);
       
        if ( $results->num_rows == 1) {
            $record = $results->fetch_assoc();
            $this->id = $record['id'];
            $this->Title = $record['Title'];
            $this->Foto_url = ('<img src="' . $record['Foto_url'] . '">');
            $this->Story = $record['Story'];
            
            // load choices
            $sql = "SELECT * FROM choices WHERE id=" . $id . ";";
            $results = $mysqli->query($sql);

            if ($results->num_rows>0)
            {
                while ($record = $results->fetch_assoc() ) {
                    $choice = new Choice();
                    $choice->id = $record['id'];
                    $choice->form_id = $record['from_id'];
                    $choice->to_id = $record['to_id'];
                    $choice->title = $record['title'];
                    $choice->need_item_id = $record['need_item_id'];
                    array_push($this->Choices, $choice);
                }
                return($choice);
            }
            else {
                return false;
            }
            
        } else {
            return false ;
        }

    }
}