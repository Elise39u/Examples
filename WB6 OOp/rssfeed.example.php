<?php

require_once 'rssreaderclass.php';

$reader = new RssReader('http://www.nu.nl/rss/Algemeen');
$items = $reader->GetAllItems();

?>


<!DOCTYPE html>
<html>
<head>
    <title> RSSREADER </title>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
</head>
<body>

<?php

foreach ($items as $item) {
    echo $item->ToHtmlString();
}
?>

<?php

foreach ($items as $item)
    echo $items->GetNewestItems();
?>

</body>
</html>