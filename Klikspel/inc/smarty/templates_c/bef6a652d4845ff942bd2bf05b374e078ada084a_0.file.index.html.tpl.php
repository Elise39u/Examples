<?php
/* Smarty version 3.1.29, created on 2016-11-29 15:58:18
  from "C:\wamp64\www\Examplecode\Klikspel\tpl\index.html.tpl" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_583d978a7a66b6_57296315',
  'file_dependency' => 
  array (
    'bef6a652d4845ff942bd2bf05b374e078ada084a' => 
    array (
      0 => 'C:\\wamp64\\www\\Examplecode\\Klikspel\\tpl\\index.html.tpl',
      1 => 1480431497,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_583d978a7a66b6_57296315 ($_smarty_tpl) {
if (!is_callable('smarty_function_html_image')) require_once 'C:\\wamp64\\www\\Examplecode\\Klikspel\\inc\\smarty\\plugins\\function.html_image.php';
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
    <h1> <?php echo $_smarty_tpl->tpl_vars['title']->value;?>
 </h1>
    <?php echo smarty_function_html_image(array('file'=>$_smarty_tpl->tpl_vars['img']->value),$_smarty_tpl);?>

    <p> <?php echo $_smarty_tpl->tpl_vars['story']->value;?>
 </p>

    <ul>
        <li> <?php echo $_smarty_tpl->tpl_vars['choice']->value;?>
 </li>
    </ul>
</div>
</body>
</html><?php }
}
