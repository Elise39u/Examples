<?php
/* Smarty version 3.1.29, created on 2016-12-14 16:18:25
  from "C:\wamp64\www\Examplecode\Klikspel\tpl\ItemShop.html.tpl" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_585162c10700e0_96415207',
  'file_dependency' => 
  array (
    '2f6695f9812ffbdd5639764a99cda823e1d46071' => 
    array (
      0 => 'C:\\wamp64\\www\\Examplecode\\Klikspel\\tpl\\ItemShop.html.tpl',
      1 => 1481728704,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_585162c10700e0_96415207 ($_smarty_tpl) {
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

    <h1> Item shop  </h1>

    <ul>
        <?php
$_from = $_smarty_tpl->tpl_vars['inventory']->value;
if (!is_array($_from) && !is_object($_from)) {
settype($_from, 'array');
}
$__foreach_i_0_saved_item = isset($_smarty_tpl->tpl_vars['i']) ? $_smarty_tpl->tpl_vars['i'] : false;
$__foreach_i_0_saved_key = isset($_smarty_tpl->tpl_vars['item_id']) ? $_smarty_tpl->tpl_vars['item_id'] : false;
$_smarty_tpl->tpl_vars['i'] = new Smarty_Variable();
$_smarty_tpl->tpl_vars['item_id'] = new Smarty_Variable();
$_smarty_tpl->tpl_vars['i']->_loop = false;
foreach ($_from as $_smarty_tpl->tpl_vars['item_id']->value => $_smarty_tpl->tpl_vars['i']->value) {
$_smarty_tpl->tpl_vars['i']->_loop = true;
$__foreach_i_0_saved_local_item = $_smarty_tpl->tpl_vars['i'];
?>
            <li>
                <?php echo $_smarty_tpl->tpl_vars['i']->value['name'];?>
 x <?php echo $_smarty_tpl->tpl_vars['i']->value['quantity'];?>

                <form action='ItemShop.php' method='post'>
                    <input type='hidden' name='sell-id' value='<?php echo $_smarty_tpl->tpl_vars['i']->value['item_id'];?>
' />
                    <input type='submit' value='Sell' />
                </form>
            </li>
        <?php
$_smarty_tpl->tpl_vars['i'] = $__foreach_i_0_saved_local_item;
}
if ($__foreach_i_0_saved_item) {
$_smarty_tpl->tpl_vars['i'] = $__foreach_i_0_saved_item;
}
if ($__foreach_i_0_saved_key) {
$_smarty_tpl->tpl_vars['item_id'] = $__foreach_i_0_saved_key;
}
?>
    </ul>

    <p>You may purchase any of the items listed below.</p>
    <?php if (isset($_smarty_tpl->tpl_vars['error']->value)) {?>
        <?php if ($_smarty_tpl->tpl_vars['error']->value != '') {?>
            <p style='color:red'><?php echo $_smarty_tpl->tpl_vars['error']->value;?>
</p>
        <?php }?>
    <?php }?>
    <?php if (isset($_smarty_tpl->tpl_vars['message']->value)) {?>
        <?php if ($_smarty_tpl->tpl_vars['message']->value != '') {?>
            <p style='color:green'><?php echo $_smarty_tpl->tpl_vars['message']->value;?>
</p>
        <?php }?>
    <?php }?>

    <?php if (isset($_smarty_tpl->tpl_vars['Jup']->value)) {?>
        <?php if ($_smarty_tpl->tpl_vars['Jup']->value != '') {?>
            <p style="color: #ff0000;"><?php echo $_smarty_tpl->tpl_vars['Jup']->value;?>
</p>
        <?php }?>
    <?php }?>

    <?php if (isset($_smarty_tpl->tpl_vars['Nope']->value)) {?>
        <?php if ($_smarty_tpl->tpl_vars['Nope']->value != '') {?>
            <p style="color: #980098;"><?php echo $_smarty_tpl->tpl_vars['Nope']->value;?>
 <br>
                So we assume one?</p>
        <?php }?>
    <?php }?>

    <ul>
        <?php
$_from = $_smarty_tpl->tpl_vars['items']->value;
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
        <li>
            <strong><?php echo $_smarty_tpl->tpl_vars['i']->value['name'];?>
</strong> - <em><?php echo $_smarty_tpl->tpl_vars['i']->value['price'];?>
 gold coins</em>
            <form action='ItemShop.php' method='post'>
                <input type='hidden' name='item-id' value='<?php echo $_smarty_tpl->tpl_vars['i']->value['id'];?>
' />
                <input type='submit' value='Buy' />
                <input type="number" value="" name="Quantity">
            </form>
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
    </ul> <br>
    <img src="img/Itemshop.png">
    <ul>
        <li><a href="Mall.php"> Go back and stop shopping ;-; </a></li>
    </ul>
    <ul>
        <?php
$_from = $_smarty_tpl->tpl_vars['inventory']->value;
if (!is_array($_from) && !is_object($_from)) {
settype($_from, 'array');
}
$__foreach_i_2_saved_item = isset($_smarty_tpl->tpl_vars['i']) ? $_smarty_tpl->tpl_vars['i'] : false;
$__foreach_i_2_saved_key = isset($_smarty_tpl->tpl_vars['id']) ? $_smarty_tpl->tpl_vars['id'] : false;
$_smarty_tpl->tpl_vars['i'] = new Smarty_Variable();
$_smarty_tpl->tpl_vars['id'] = new Smarty_Variable();
$_smarty_tpl->tpl_vars['i']->_loop = false;
foreach ($_from as $_smarty_tpl->tpl_vars['id']->value => $_smarty_tpl->tpl_vars['i']->value) {
$_smarty_tpl->tpl_vars['i']->_loop = true;
$__foreach_i_2_saved_local_item = $_smarty_tpl->tpl_vars['i'];
?>
            <li> <?php echo $_smarty_tpl->tpl_vars['i']->value['player_id'];?>
 <?php echo $_smarty_tpl->tpl_vars['i']->value['item_id'];?>
 <?php echo $_smarty_tpl->tpl_vars['i']->value['space'];?>
 <?php echo $_smarty_tpl->tpl_vars['i']->value['quantity'];?>
 </li>
        <?php
$_smarty_tpl->tpl_vars['i'] = $__foreach_i_2_saved_local_item;
}
if ($__foreach_i_2_saved_item) {
$_smarty_tpl->tpl_vars['i'] = $__foreach_i_2_saved_item;
}
if ($__foreach_i_2_saved_key) {
$_smarty_tpl->tpl_vars['id'] = $__foreach_i_2_saved_key;
}
?>
    </ul>

</div>
</body>
</html><?php }
}
