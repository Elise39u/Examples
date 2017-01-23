<?php
/* Smarty version 3.1.29, created on 2017-01-23 14:00:16
  from "C:\wamp64\www\Examplecode\Klikspel\tpl\SubYard.html.tpl" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_5885fe6017fa35_42098496',
  'file_dependency' => 
  array (
    '7698ae453dea37fba8e89a681a08384bf1637c5d' => 
    array (
      0 => 'C:\\wamp64\\www\\Examplecode\\Klikspel\\tpl\\SubYard.html.tpl',
      1 => 1485173051,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5885fe6017fa35_42098496 ($_smarty_tpl) {
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

    <ul>
        <p class="H1l">Npc`s in you`re party</p>
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

    <h1> The Yard  </h1>
    <p> As you Look around you see a backway to something <br>
    But there are lots of people here  <br>
    so who needs help a lot?</p>
    <img src="img/YardSubBase.png">
    <ul>
        <li><a href="SubNear.php"> Go back  </a></li>
        <li><a href="SubBack.php"> Go torugh the backway </a></li>
        <?php if (isset($_SESSION['Quest7_1']) && isset($_SESSION['Quest7_2'])) {?>
            <li><a href="#"> Lauren is enjoying her stuff </a></li>
            <?php } else { ?>
        <li><a href="NPC7.php"> Go talk to Beuaty King Lauren </a></li>
        <?php }?>
        <?php if (isset($_SESSION['Quest8_1']) && isset($_SESSION['Quest8_2'])) {?>
            <li><a href="#"> Mike is gone photographing </a></li>
            <?php } else { ?>
            <li><a href="NPC8.php"> Go talk to photographer Mike</a></li>
        <?php }?>
        <?php if (isset($_SESSION['Quest9'])) {?>
            <li><a href="#"> Berna is gone teaching </a></li>
            <?php } else { ?>
            <li><a href="NPC9.php"> Go talk to Teacher Berna </a></li>
        <?php }?>
        <?php if (isset($_SESSION['Dumb']) || isset($_SESSION['Dumb2'])) {?>
        <?php } else { ?>
            <li><a href="NPC10.php"> Go talk to Coach Jeroen </a></li>
        <?php }?>
        <?php if (isset($_SESSION['MMM'])) {?>
            <?php } elseif (isset($_SESSION['Npc11'])) {?>
            <?php } else { ?>
            <li><a href="NPC11.php"> Go talk to Coach Marieke </a></li>
        <?php }?>
        <?php if (isset($_COOKIE['Quest12'])) {?>
            <li><a href="#"> Mother Lieke is busy</a> </li>
            <?php } else { ?>
        <li><a href="Npc12.php"> Go talk to Mother Lieke </a></li>
        <?php }?>
        <?php if (isset($_COOKIE['Quest13'])) {?>
            <li><a href="#"> Harrems is busy right now </a></li>
            <?php } else { ?>
        <li><a href="Npc13.php"> Go talk to Data tracker Harmes </a></li>
        <?php }?>
        <?php if (isset($_COOKIE['Quest14'])) {?>
            <li><a href="#"> Monsternon is gone </a></li>
        <?php } else { ?>
        <li><a href="NPC14.php"> Go talk to Monsternon </a></li>
        <?php }?>
        <li><a href="NPC15.php"> Go talk to Sales Expert Elzie </a></li>
        <li><a href="NPC16.php"> Go talk to Student Ariëlle  </a></li>
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
