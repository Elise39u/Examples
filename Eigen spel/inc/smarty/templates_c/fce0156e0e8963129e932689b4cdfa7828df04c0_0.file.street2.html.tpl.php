<?php
/* Smarty version 3.1.29, created on 2016-06-16 15:28:11
  from "C:\wamp64\www\Eigen spel\tpl\street2.html.tpl" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_5762a96b724bb8_37587718',
  'file_dependency' => 
  array (
    'fce0156e0e8963129e932689b4cdfa7828df04c0' => 
    array (
      0 => 'C:\\wamp64\\www\\Eigen spel\\tpl\\street2.html.tpl',
      1 => 1466083687,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5762a96b724bb8_37587718 ($_smarty_tpl) {
?>
<html>
<head>
    <title> Mijn eigen spel</title>
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>

<div class="plaatje">
    <h1> On the road</h1>
    <img src="img/street.png" width="1000px"; height="225px";>
    <p> And there you`re standing on the middle of the street.<br>
        You look down to the left and see nothing. <br>
        To the right you see almost a bridge.<br>
        And futher on you see the garage and a store. <br>
        Which way wil you go. </p>
    <ul>
        <li><a href="nbridge.php"> Go to the bridge </a></li>
        <li><a href="outside.php"> Go back </a></li>
        <li><a href="#"> Go futher on </a></li>
        <li><a href="street3.php"> Go to the right </a></li>
    </ul>
    <ul>
        <li> 1 Key</li>
        <li> 250 Gold coins</li>
    </ul>
</div>
</body>
</html><?php }
}
