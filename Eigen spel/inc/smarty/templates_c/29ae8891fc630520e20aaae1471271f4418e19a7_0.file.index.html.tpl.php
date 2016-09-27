<?php
/* Smarty version 3.1.29, created on 2016-09-27 11:57:51
  from "C:\wamp64\www\Eigen spel\tpl\index.html.tpl" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_57ea429fde25e8_60366638',
  'file_dependency' => 
  array (
    '29ae8891fc630520e20aaae1471271f4418e19a7' => 
    array (
      0 => 'C:\\wamp64\\www\\Eigen spel\\tpl\\index.html.tpl',
      1 => 1474970270,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_57ea429fde25e8_60366638 ($_smarty_tpl) {
?>
<html>
<head>
    <title> <?php echo $_smarty_tpl->tpl_vars['pagetitle']->value;?>
 </title>
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>
    <div class="plaatje">
    <?php if (isset($_smarty_tpl->tpl_vars['errors']->value)) {?>
        <p style="border: 1px solid red;">
        <ul>
            <?php
$_from = $_smarty_tpl->tpl_vars['errors']->value;
if (!is_array($_from) && !is_object($_from)) {
settype($_from, 'array');
}
$__foreach_error_0_saved_item = isset($_smarty_tpl->tpl_vars['error']) ? $_smarty_tpl->tpl_vars['error'] : false;
$_smarty_tpl->tpl_vars['error'] = new Smarty_Variable();
$_smarty_tpl->tpl_vars['error']->_loop = false;
foreach ($_from as $_smarty_tpl->tpl_vars['error']->value) {
$_smarty_tpl->tpl_vars['error']->_loop = true;
$__foreach_error_0_saved_local_item = $_smarty_tpl->tpl_vars['error'];
?>
                <li><?php echo $_smarty_tpl->tpl_vars['error']->value;?>
</li>
            <?php
$_smarty_tpl->tpl_vars['error'] = $__foreach_error_0_saved_local_item;
}
if ($__foreach_error_0_saved_item) {
$_smarty_tpl->tpl_vars['error'] = $__foreach_error_0_saved_item;
}
?>
        </ul>
    <?php }?>

    <?php if (isset($_smarty_tpl->tpl_vars['location']->value)) {?>
        <h1><?php echo $_smarty_tpl->tpl_vars['location']->value->Title;?>
</h1>
        <p><?php echo $_smarty_tpl->tpl_vars['location']->value->Story;?>
</p>
        <?php echo $_smarty_tpl->tpl_vars['location']->value->Foto_url;?>

        <?php }?>

        <ul>
            <?php
$_from = $_smarty_tpl->tpl_vars['location']->value->Choices;
if (!is_array($_from) && !is_object($_from)) {
settype($_from, 'array');
}
$__foreach_choice_1_saved_item = isset($_smarty_tpl->tpl_vars['choice']) ? $_smarty_tpl->tpl_vars['choice'] : false;
$_smarty_tpl->tpl_vars['choice'] = new Smarty_Variable();
$_smarty_tpl->tpl_vars['choice']->_loop = false;
foreach ($_from as $_smarty_tpl->tpl_vars['choice']->value) {
$_smarty_tpl->tpl_vars['choice']->_loop = true;
$__foreach_choice_1_saved_local_item = $_smarty_tpl->tpl_vars['choice'];
?>
                <!-- change the string output to a int value  -->
                <?php echo intval($_smarty_tpl->tpl_vars['choice']->value->to_id);?>

                <!-- looks of  Choice->to_id  is equal to 22 or 23 or 24 or 25 then change them -->
                <!-- First looks of $_SESSION['Pickup'] Exist -->
                <?php if (!isset($_smarty_tpl->tpl_vars['_SESSION']) || !is_array($_smarty_tpl->tpl_vars['_SESSION']->value)) $_smarty_tpl->smarty->ext->_var->createLocalArrayVariable($_smarty_tpl, '_SESSION');
if ($_smarty_tpl->tpl_vars['_SESSION']->value['Pickup'] = true || $_smarty_tpl->tpl_vars['_SESSION']->value['End2']) {?>
                <?php if ($_smarty_tpl->tpl_vars['choice']->value->to_id == 22 || $_smarty_tpl->tpl_vars['choice']->value->to_id == 23 || $_smarty_tpl->tpl_vars['choice']->value->to_id == 24 || $_smarty_tpl->tpl_vars['choice']->value->to_id == 25) {?>
                    <p class="hide"> Nothing Here Friend</p>
                <?php } else { ?>
                    <li><a href="index.php?location_id=<?php echo $_smarty_tpl->tpl_vars['choice']->value->to_id;?>
"><?php echo $_smarty_tpl->tpl_vars['choice']->value->title;?>
</a></li>
                <?php }?>
                <?php }?>
            <?php
$_smarty_tpl->tpl_vars['choice'] = $__foreach_choice_1_saved_local_item;
}
if ($__foreach_choice_1_saved_item) {
$_smarty_tpl->tpl_vars['choice'] = $__foreach_choice_1_saved_item;
}
?>
        </ul>

        <ul>
            <?php
$_from = $_smarty_tpl->tpl_vars['location']->value->Inventory;
if (!is_array($_from) && !is_object($_from)) {
settype($_from, 'array');
}
$__foreach_hello_2_saved_item = isset($_smarty_tpl->tpl_vars['hello']) ? $_smarty_tpl->tpl_vars['hello'] : false;
$_smarty_tpl->tpl_vars['hello'] = new Smarty_Variable();
$_smarty_tpl->tpl_vars['hello']->_loop = false;
foreach ($_from as $_smarty_tpl->tpl_vars['hello']->value) {
$_smarty_tpl->tpl_vars['hello']->_loop = true;
$__foreach_hello_2_saved_local_item = $_smarty_tpl->tpl_vars['hello'];
?>
               <li> <?php echo $_smarty_tpl->tpl_vars['hello']->value->player_id;?>
 <?php echo $_smarty_tpl->tpl_vars['hello']->value->item_id;?>
 <?php echo $_smarty_tpl->tpl_vars['hello']->value->space;?>
</li>
            <?php
$_smarty_tpl->tpl_vars['hello'] = $__foreach_hello_2_saved_local_item;
}
if ($__foreach_hello_2_saved_item) {
$_smarty_tpl->tpl_vars['hello'] = $__foreach_hello_2_saved_item;
}
?>
        </ul>

    </div>
</body>
</html><?php }
}
