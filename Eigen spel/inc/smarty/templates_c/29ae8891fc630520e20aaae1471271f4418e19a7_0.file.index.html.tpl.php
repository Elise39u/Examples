<?php
/* Smarty version 3.1.29, created on 2016-06-30 12:39:16
  from "C:\wamp64\www\Eigen spel\tpl\index.html.tpl" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_5774f6d417ba97_40851905',
  'file_dependency' => 
  array (
    '29ae8891fc630520e20aaae1471271f4418e19a7' => 
    array (
      0 => 'C:\\wamp64\\www\\Eigen spel\\tpl\\index.html.tpl',
      1 => 1467283154,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5774f6d417ba97_40851905 ($_smarty_tpl) {
?>
<html>
<head>
    <title> Mijn eigen spel</title>
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
        </p>
    <?php }?>

    <?php if (isset($_smarty_tpl->tpl_vars['location']->value)) {?>
        <p><?php echo $_smarty_tpl->tpl_vars['location']->value->Title;?>
</p>
        <p><?php echo $_smarty_tpl->tpl_vars['location']->value->Story;?>
</p>
        <?php echo $_smarty_tpl->tpl_vars['location']->value->Foto_url;?>


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
            <li><a href="index.php?location_id=<?php echo $_smarty_tpl->tpl_vars['choice']->value->to_id;?>
"><?php echo $_smarty_tpl->tpl_vars['choice']->value->title;?>
</a></li>
            <p> Hallo dit is een test regel </p>
            <?php
$_smarty_tpl->tpl_vars['choice'] = $__foreach_choice_1_saved_local_item;
}
if ($__foreach_choice_1_saved_item) {
$_smarty_tpl->tpl_vars['choice'] = $__foreach_choice_1_saved_item;
}
?>
        </ul>
    <?php }?>

    </div>
</body>
</html><?php }
}
