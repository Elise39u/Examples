<?php
/* Smarty version 3.1.29, created on 2017-02-03 08:23:50
  from "C:\wamp64\www\Examplecode\Klikspel\tpl\lake.html.tpl" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_58943006719004_94678393',
  'file_dependency' => 
  array (
    '65c9d51e049220483d4830c8e1e43c3e2f83e011' => 
    array (
      0 => 'C:\\wamp64\\www\\Examplecode\\Klikspel\\tpl\\lake.html.tpl',
      1 => 1485770951,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_58943006719004_94678393 ($_smarty_tpl) {
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
        <li>Current level: <strong><?php echo $_smarty_tpl->tpl_vars['level']->value;?>
</strong></li>
        <li>Experience: <strong><?php echo $_smarty_tpl->tpl_vars['experience']->value;?>
</strong></li>
        <li>Experience needed until level <strong><?php echo $_smarty_tpl->tpl_vars['level']->value+1;?>
: <?php echo $_smarty_tpl->tpl_vars['exp_remaining']->value;?>
</strong></li>
    </ul>

    <ul>
        <p class="H1l">Npc`s in your party</p>
        <?php
$_from = $_smarty_tpl->tpl_vars['party']->value;
if (!is_array($_from) && !is_object($_from)) {
settype($_from, 'array');
}
$__foreach_i_0_saved_item = isset($_smarty_tpl->tpl_vars['i']) ? $_smarty_tpl->tpl_vars['i'] : false;
$__foreach_i_0_saved_key = isset($_smarty_tpl->tpl_vars['id']) ? $_smarty_tpl->tpl_vars['id'] : false;
$_smarty_tpl->tpl_vars['i'] = new Smarty_Variable();
$_smarty_tpl->tpl_vars['id'] = new Smarty_Variable();
$_smarty_tpl->tpl_vars['i']->_loop = false;
foreach ($_from as $_smarty_tpl->tpl_vars['id']->value => $_smarty_tpl->tpl_vars['i']->value) {
$_smarty_tpl->tpl_vars['i']->_loop = true;
$__foreach_i_0_saved_local_item = $_smarty_tpl->tpl_vars['i'];
?>
            <li><?php echo $_smarty_tpl->tpl_vars['i']->value['name'];?>
</li>
        <?php
$_smarty_tpl->tpl_vars['i'] = $__foreach_i_0_saved_local_item;
}
if ($__foreach_i_0_saved_item) {
$_smarty_tpl->tpl_vars['i'] = $__foreach_i_0_saved_item;
}
if ($__foreach_i_0_saved_key) {
$_smarty_tpl->tpl_vars['id'] = $__foreach_i_0_saved_key;
}
?>
    </ul>

    <h1> a lake ;-; </h1>
    <p> There you`re standing in front of the river.<br>
        You look around and see a little boat You think yes this is my chane to escape.<br>
        But you see there a no paddles And now you think were can i find this paddels?</p>
    <img src="img/river2.jpg">
    <ul>
        <li><a href="Monster.php"> Goo back to that sand ??</a></li>
        <?php if (isset($_SESSION['paddle'])) {?>
        <li><a href="End1.php"> Escape !! </a> </li>
        <?php } else { ?>
        <li><a href="Meme.php"> Nothing here friend</a> </li>
        <?php }?>
        <?php if (isset($_SESSION['car'])) {?>
        <li><a href="Boat.php"> Take the boat </a> </li>
        <?php } else { ?>
        <li><a href="Meme.php"> I SAID NOTHING HERE !</a> </li>
        <?php }?>
    </ul>

    <ul>
        <?php
$_from = $_smarty_tpl->tpl_vars['inventory']->value;
if (!is_array($_from) && !is_object($_from)) {
settype($_from, 'array');
}
$__foreach_i_1_saved_item = isset($_smarty_tpl->tpl_vars['i']) ? $_smarty_tpl->tpl_vars['i'] : false;
$__foreach_i_1_saved_key = isset($_smarty_tpl->tpl_vars['id']) ? $_smarty_tpl->tpl_vars['id'] : false;
$_smarty_tpl->tpl_vars['i'] = new Smarty_Variable();
$_smarty_tpl->tpl_vars['id'] = new Smarty_Variable();
$_smarty_tpl->tpl_vars['i']->_loop = false;
foreach ($_from as $_smarty_tpl->tpl_vars['id']->value => $_smarty_tpl->tpl_vars['i']->value) {
$_smarty_tpl->tpl_vars['i']->_loop = true;
$__foreach_i_1_saved_local_item = $_smarty_tpl->tpl_vars['i'];
?>
            <li> <?php echo $_smarty_tpl->tpl_vars['i']->value['player_id'];?>
 <?php echo $_smarty_tpl->tpl_vars['i']->value['item_id'];?>
 <?php echo $_smarty_tpl->tpl_vars['i']->value['space'];?>
 <?php echo $_smarty_tpl->tpl_vars['i']->value['quantity'];?>
 </li>
        <?php
$_smarty_tpl->tpl_vars['i'] = $__foreach_i_1_saved_local_item;
}
if ($__foreach_i_1_saved_item) {
$_smarty_tpl->tpl_vars['i'] = $__foreach_i_1_saved_item;
}
if ($__foreach_i_1_saved_key) {
$_smarty_tpl->tpl_vars['id'] = $__foreach_i_1_saved_key;
}
?>
    </ul>

</div>
</body>
</html><?php }
}
