<?php
/* Smarty version 3.1.29, created on 2017-01-30 15:50:45
  from "C:\wamp64\www\Examplecode\Klikspel\tpl\Mine.html.tpl" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_588f52c5bdc3f9_59900791',
  'file_dependency' => 
  array (
    'e35cd5f25355c6d2a15d6f4646014ff9e72e2d89' => 
    array (
      0 => 'C:\\wamp64\\www\\Examplecode\\Klikspel\\tpl\\Mine.html.tpl',
      1 => 1485770952,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_588f52c5bdc3f9_59900791 ($_smarty_tpl) {
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

    <h1> Well </h1>
    <p> There you go </p>


    <?php if (isset($_smarty_tpl->tpl_vars['Dead']->value)) {?>
        <p> You were killed by the <strong> <?php echo $_smarty_tpl->tpl_vars['Dead']->value;?>
 </strong></p>
    <?php }?>
    <?php if (isset($_smarty_tpl->tpl_vars['Yes']->value)) {?>
        <p><?php echo $_smarty_tpl->tpl_vars['Yes']->value;?>
 <br>
        Amount Damage taken: <?php echo $_smarty_tpl->tpl_vars['Damage']->value;?>
 </p>
    <?php }?>

    <img src="img/Seamine.png">

    <ul>
        <?php if (isset($_smarty_tpl->tpl_vars['Hit']->value)) {?>
            <?php
$_from = $_smarty_tpl->tpl_vars['Hit']->value;
if (!is_array($_from) && !is_object($_from)) {
settype($_from, 'array');
}
$__foreach_bad_1_saved_item = isset($_smarty_tpl->tpl_vars['bad']) ? $_smarty_tpl->tpl_vars['bad'] : false;
$_smarty_tpl->tpl_vars['bad'] = new Smarty_Variable();
$_smarty_tpl->tpl_vars['bad']->_loop = false;
foreach ($_from as $_smarty_tpl->tpl_vars['bad']->value) {
$_smarty_tpl->tpl_vars['bad']->_loop = true;
$__foreach_bad_1_saved_local_item = $_smarty_tpl->tpl_vars['bad'];
?>
            <li style="color: crimson"><?php echo $_smarty_tpl->tpl_vars['bad']->value;?>
</li>
            <?php
$_smarty_tpl->tpl_vars['bad'] = $__foreach_bad_1_saved_local_item;
}
if ($__foreach_bad_1_saved_item) {
$_smarty_tpl->tpl_vars['bad'] = $__foreach_bad_1_saved_item;
}
?>
        <?php }?>
        <?php if (isset($_smarty_tpl->tpl_vars['Pass']->value)) {?>
        <?php
$_from = $_smarty_tpl->tpl_vars['Pass']->value;
if (!is_array($_from) && !is_object($_from)) {
settype($_from, 'array');
}
$__foreach_good_2_saved_item = isset($_smarty_tpl->tpl_vars['good']) ? $_smarty_tpl->tpl_vars['good'] : false;
$_smarty_tpl->tpl_vars['good'] = new Smarty_Variable();
$_smarty_tpl->tpl_vars['good']->_loop = false;
foreach ($_from as $_smarty_tpl->tpl_vars['good']->value) {
$_smarty_tpl->tpl_vars['good']->_loop = true;
$__foreach_good_2_saved_local_item = $_smarty_tpl->tpl_vars['good'];
?>
            <li style="color: green"><?php echo $_smarty_tpl->tpl_vars['good']->value;?>
</li>
        <?php
$_smarty_tpl->tpl_vars['good'] = $__foreach_good_2_saved_local_item;
}
if ($__foreach_good_2_saved_item) {
$_smarty_tpl->tpl_vars['good'] = $__foreach_good_2_saved_item;
}
?>
        <?php }?>
    </ul>

    <ul>
        <?php
$_from = $_smarty_tpl->tpl_vars['inventory']->value;
if (!is_array($_from) && !is_object($_from)) {
settype($_from, 'array');
}
$__foreach_i_3_saved_item = isset($_smarty_tpl->tpl_vars['i']) ? $_smarty_tpl->tpl_vars['i'] : false;
$__foreach_i_3_saved_key = isset($_smarty_tpl->tpl_vars['id']) ? $_smarty_tpl->tpl_vars['id'] : false;
$_smarty_tpl->tpl_vars['i'] = new Smarty_Variable();
$_smarty_tpl->tpl_vars['id'] = new Smarty_Variable();
$_smarty_tpl->tpl_vars['i']->_loop = false;
foreach ($_from as $_smarty_tpl->tpl_vars['id']->value => $_smarty_tpl->tpl_vars['i']->value) {
$_smarty_tpl->tpl_vars['i']->_loop = true;
$__foreach_i_3_saved_local_item = $_smarty_tpl->tpl_vars['i'];
?>
            <li> <?php echo $_smarty_tpl->tpl_vars['i']->value['player_id'];?>
 <?php echo $_smarty_tpl->tpl_vars['i']->value['item_id'];?>
 <?php echo $_smarty_tpl->tpl_vars['i']->value['space'];?>
 <?php echo $_smarty_tpl->tpl_vars['i']->value['quantity'];?>
 </li>
        <?php
$_smarty_tpl->tpl_vars['i'] = $__foreach_i_3_saved_local_item;
}
if ($__foreach_i_3_saved_item) {
$_smarty_tpl->tpl_vars['i'] = $__foreach_i_3_saved_item;
}
if ($__foreach_i_3_saved_key) {
$_smarty_tpl->tpl_vars['id'] = $__foreach_i_3_saved_key;
}
?>
    </ul>

</div>
</body>
</html><?php }
}
