<?php
/* Smarty version 3.1.29, created on 2016-11-30 09:44:48
  from "C:\wamp64\www\Examplecode\Klikspel\tpl\Garden.html.tpl" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_583e918014fc90_41951390',
  'file_dependency' => 
  array (
    '1147809550b906a3e0de2f4f893a5039ec71c965' => 
    array (
      0 => 'C:\\wamp64\\www\\Examplecode\\Klikspel\\tpl\\Garden.html.tpl',
      1 => 1480495445,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_583e918014fc90_41951390 ($_smarty_tpl) {
?>
<!DOCTYPE HTML>
<html>
<head>
    <title> <?php echo $_smarty_tpl->tpl_vars['pagetitle']->value;?>
 </title>
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>
<div class="plaatje">

    <ul>
        <li>Attack: <strong><?php echo $_smarty_tpl->tpl_vars['attack']->value;?>
</strong></li>
        <li>Defence: <strong><?php echo $_smarty_tpl->tpl_vars['defence']->value;?>
</strong></li>
        <li>Magic: <strong><?php echo $_smarty_tpl->tpl_vars['magic']->value;?>
</strong></li>
        <li>Gold in hand: <strong><?php echo $_smarty_tpl->tpl_vars['gold']->value;?>
</strong></li>
        <li>Current HP: <strong><?php echo $_smarty_tpl->tpl_vars['currentHP']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['maximumHP']->value;?>
</strong>
        <li>Gold Inbank: <strong><?php echo $_smarty_tpl->tpl_vars['inbank']->value;?>
</strong></li>
    </ul>

    <h1> Bedroom </h1>
    <p> You`re standing in the garden of your home <br>
        There is a little bit to see. <br>
        Because almost everthing has grown as a jungel. <br>
        What wil you do. </p>
    <img src="img/download.jpg">
    <ul>
        <li><a href="room.php"> Go back search for a way ouy</a></li>
    </ul>
</div>
</body>
</html><?php }
}
