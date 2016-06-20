<?php

class RssItem
{

    public function __construct($title, $author, $pubdate, $description, $link)
    {
        $this->title = $title;
        $this->author = $author;
        $this->pubdate = $pubdate;
        $this->description = $description;
        $this->link = $link;

    }

    public $title;
    public $author;
    public $pubdate;
    public $description;
    public $link;

    public function ToHtmlString()
    {
        $out = '<h1>' . $this->title . '</h1>';
        $out = '<p> Has been Made on ' . $this->pubdate . '</p>';
        if ($this->author != "") {
            $out .= '<p>Author: ' . $this->author . '</p>';
        }
        $out = '<p>' . $this->description . '</p>';
        $out = '<p><a href="' . $this->link . '"> Continu Reading: ' . $this->title . '</a></p>';
        return $out;
    }
}

class RssReader
{
    public $rssfeed;

    function __construct($rss)
    {
        $this->rssfeed = $rss;
    }

    function GetAllItems() {
        $curl = curl_init();
        curl_setopt_array($curl, Array(
            CURLOPT_URL  => 'http://www.nu.nl/rss/Algemeen',
            CURLOPT_USERAGENT => 'spider',
            CURLOPT_TIMEOUT => 240,
            CURLOPT_CONNECTTIMEOUT => 60,
            CURLOPT_RETURNTRANSFER => TRUE,
            CURLOPT_ENCODING => 'UTF-8'
        ));
        $data = curl_exec($curl);

        $items = array();
        $xml = simplexml_load_string($data, 'SimpleXMLElement', LIBXML_NOCDATA);
        foreach ($xml->channel->item as $item) {
            $rs = new RssItem(
                (string) $item->title,
                (string) $item->children('dc', TRUE),
                (string) $item->pubdate,
                (string) $item->description,
                (string) $item->link
            );
            array_push($items, $rs);
        }
        return $items;
    }

    function GetNewestItems() {
        $curl = curl_init();
        curl_setopt_array($curl, Array(
            CURLOPT_URL            =>  $this->rssfeed,
            CURLOPT_USERAGENT      => 'spider',
            CURLOPT_TIMEOUT        => 120,
            CURLOPT_CONNECTTIMEOUT => 30,
            CURLOPT_RETURNTRANSFER => TRUE,
            CURLOPT_ENCODING       => 'UTF-8'
        ));
        $data = curl_exec($curl);
        curl_close($curl);

        $items = array();
        $xml = simplexml_load_string($data, 'SimpleXMLElement', LIBXML_NOCDATA);
        $tel = 0;
        foreach ($xml->channel->item as $item) {
            if($tel == 5) {
                break;
            }
            // get one xml item
            $ri = new RssItem(
                (string) $item->title,
                (string) $item->children('dc', TRUE),
                (string) $item->pubdate,
                (string) $item->description,
                (string) $item->link  );

            array_push($items, $ri);
            $tel++;
        }

        return $items;
    }
}