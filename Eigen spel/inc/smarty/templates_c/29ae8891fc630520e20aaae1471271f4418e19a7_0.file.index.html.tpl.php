<?php
/* Smarty version 3.1.29, created on 2016-10-27 14:12:52
  from "C:\wamp64\www\Eigen spel\tpl\index.html.tpl" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_5811ef44313eb2_92247423',
  'file_dependency' => 
  array (
    '29ae8891fc630520e20aaae1471271f4418e19a7' => 
    array (
      0 => 'C:\\wamp64\\www\\Eigen spel\\tpl\\index.html.tpl',
      1 => 1477570371,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5811ef44313eb2_92247423 ($_smarty_tpl) {
?>
<html>
<head>
    <title> <?php echo $_smarty_tpl->tpl_vars['pagetitle']->value;?>
 </title>
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <?php echo '<script'; ?>
 src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"><?php echo '</script'; ?>
>
</head>

<body>
    <div class="plaatje">
    <?php if (isset($_smarty_tpl->tpl_vars['errors']->value)) {?>
        <p style="border: 1px solid #ff0000;"></p>
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

                <?php if (isset($_smarty_tpl->tpl_vars['choice']->value->need_item_id)) {?>
                <?php
$_from = $_smarty_tpl->tpl_vars['location']->value->Inventory;
if (!is_array($_from) && !is_object($_from)) {
settype($_from, 'array');
}
$__foreach_Hai_2_saved_item = isset($_smarty_tpl->tpl_vars['Hai']) ? $_smarty_tpl->tpl_vars['Hai'] : false;
$_smarty_tpl->tpl_vars['Hai'] = new Smarty_Variable();
$_smarty_tpl->tpl_vars['Hai']->_loop = false;
foreach ($_from as $_smarty_tpl->tpl_vars['Hai']->value) {
$_smarty_tpl->tpl_vars['Hai']->_loop = true;
$__foreach_Hai_2_saved_local_item = $_smarty_tpl->tpl_vars['Hai'];
?>
                    <?php if ($_smarty_tpl->tpl_vars['Hai']->value->item_id == $_smarty_tpl->tpl_vars['choice']->value->need_item_id) {?>
                        <li><a href="index.php?location_id=<?php echo $_smarty_tpl->tpl_vars['choice']->value->to_id;?>
"><?php echo $_smarty_tpl->tpl_vars['choice']->value->title;?>
</a> </li>
                        <p class="Got"> Dorker You have the item <?php echo $_smarty_tpl->tpl_vars['choice']->value->need_item_id;?>
  </p>
                        <!-- <p class="Haha"> Nothing Here to find</p> -->
                    <?php }?>
                <?php
$_smarty_tpl->tpl_vars['Hai'] = $__foreach_Hai_2_saved_local_item;
}
if ($__foreach_Hai_2_saved_item) {
$_smarty_tpl->tpl_vars['Hai'] = $__foreach_Hai_2_saved_item;
}
?>
                <?php }?>
                 <!-- looks of  Choice->to_id  is equal to 22 or 23 or 24 or 25 then change them
                 First looks of $_SESSION['Paddle'] Exist -->
                <?php if (isset($_SESSION['Paddle'])) {?>
                <?php if ($_smarty_tpl->tpl_vars['choice']->value->to_id == 22) {?>
                    <p class="hide"> Nothing Here Friend</p>
                <?php } elseif (isset($_smarty_tpl->tpl_vars['choice']->value->need_item_id)) {?>
                    <li class="Gone"><a href="index.php?location_id=<?php echo $_smarty_tpl->tpl_vars['choice']->value->to_id;?>
"><?php echo $_smarty_tpl->tpl_vars['choice']->value->title;?>
</a></li>
                <?php } else { ?>
                    <li><a href="index.php?location_id=<?php echo $_smarty_tpl->tpl_vars['choice']->value->to_id;?>
"><?php echo $_smarty_tpl->tpl_vars['choice']->value->title;?>
</a> </li>
                <?php }?>
                    <?php } elseif (isset($_SESSION['End2'])) {?>
                    <?php if ($_smarty_tpl->tpl_vars['choice']->value->to_id == 25) {?>
                        <p class="hide"> Nothing Here Friend </p>
                    <?php } elseif (isset($_smarty_tpl->tpl_vars['choice']->value->need_item_id)) {?>
                        <li class="Gone"><a href="index.php?location_id=<?php echo $_smarty_tpl->tpl_vars['choice']->value->to_id;?>
"><?php echo $_smarty_tpl->tpl_vars['choice']->value->title;?>
</a></li>
                    <?php } else { ?>
                        <li><a href="index.php?location_id=<?php echo $_smarty_tpl->tpl_vars['choice']->value->to_id;?>
"><?php echo $_smarty_tpl->tpl_vars['choice']->value->title;?>
</a> </li>
                    <?php }?>
                    <?php } elseif (isset($_SESSION['Basebalbat'])) {?>
                    <?php if ($_smarty_tpl->tpl_vars['choice']->value->to_id == 23) {?>
                        <p class="hide"> Nothing Here friend</p>
                    <?php } elseif (isset($_smarty_tpl->tpl_vars['choice']->value->need_item_id)) {?>
                        <li class="Gone"><a href="index.php?location_id=<?php echo $_smarty_tpl->tpl_vars['choice']->value->to_id;?>
"><?php echo $_smarty_tpl->tpl_vars['choice']->value->title;?>
</a></li>
                    <?php } else { ?>
                        <li><a href="index.php?location_id=<?php echo $_smarty_tpl->tpl_vars['choice']->value->to_id;?>
"><?php echo $_smarty_tpl->tpl_vars['choice']->value->title;?>
</a> </li>
                    <?php }?>
                    <?php } elseif (isset($_SESSION['Axe'])) {?>
                    <?php if ($_smarty_tpl->tpl_vars['choice']->value->to_id == 24) {?>
                        <p class="hide"> Nothing Here friend</p>
                    <?php } elseif (isset($_smarty_tpl->tpl_vars['choice']->value->need_item_id)) {?>
                        <li class="Gone"><a href="index.php?location_id=<?php echo $_smarty_tpl->tpl_vars['choice']->value->to_id;?>
"><?php echo $_smarty_tpl->tpl_vars['choice']->value->title;?>
</a></li>
                    <?php } else { ?>
                        <li><a href="index.php?location_id=<?php echo $_smarty_tpl->tpl_vars['choice']->value->to_id;?>
"><?php echo $_smarty_tpl->tpl_vars['choice']->value->title;?>
</a> </li>
                    <?php }?>
                    <?php } elseif (isset($_SESSION['Hammer'])) {?>
                    <?php if ($_smarty_tpl->tpl_vars['choice']->value->to_id == 26) {?>
                        <p class="hide"> Nothing Here friend</p>
                    <?php } elseif (isset($_smarty_tpl->tpl_vars['choice']->value->need_item_id)) {?>
                        <li class="Gone"><a href="index.php?location_id=<?php echo $_smarty_tpl->tpl_vars['choice']->value->to_id;?>
"><?php echo $_smarty_tpl->tpl_vars['choice']->value->title;?>
</a></li>
                    <?php } else { ?>
                        <li><a href="index.php?location_id=<?php echo $_smarty_tpl->tpl_vars['choice']->value->to_id;?>
"><?php echo $_smarty_tpl->tpl_vars['choice']->value->title;?>
</a> </li>
                    <?php }?>
                    <?php } elseif (isset($_smarty_tpl->tpl_vars['choice']->value->need_item_id)) {?>
                    <li class="Gone"><a href="index.php?location_id=<?php echo $_smarty_tpl->tpl_vars['choice']->value->to_id;?>
"><?php echo $_smarty_tpl->tpl_vars['choice']->value->title;?>
</a></li>
                <?php } else { ?>
                    <li><a href="index.php?location_id=<?php echo $_smarty_tpl->tpl_vars['choice']->value->to_id;?>
"><?php echo $_smarty_tpl->tpl_vars['choice']->value->title;?>
</a> </li>
                <?php }?>
                <!-- <li><a href="index.php?location_id=<?php echo $_smarty_tpl->tpl_vars['choice']->value->to_id;?>
"><?php echo $_smarty_tpl->tpl_vars['choice']->value->title;?>
</a></li> -->
            <?php
$_smarty_tpl->tpl_vars['choice'] = $__foreach_choice_1_saved_local_item;
}
if ($__foreach_choice_1_saved_item) {
$_smarty_tpl->tpl_vars['choice'] = $__foreach_choice_1_saved_item;
}
?>
            <?php if ($_smarty_tpl->tpl_vars['location']->value->id == 25 || $_smarty_tpl->tpl_vars['location']->value->id == 29 || $_smarty_tpl->tpl_vars['location']->value->id == 51 || $_smarty_tpl->tpl_vars['location']->value->id == 52) {?>
                <?php echo session_unset();?>

                <?php echo session_destroy();?>

            <?php }?>
        </ul>

        <ul>
            <?php
$_from = $_smarty_tpl->tpl_vars['location']->value->Inventory;
if (!is_array($_from) && !is_object($_from)) {
settype($_from, 'array');
}
$__foreach_hello_3_saved_item = isset($_smarty_tpl->tpl_vars['hello']) ? $_smarty_tpl->tpl_vars['hello'] : false;
$_smarty_tpl->tpl_vars['hello'] = new Smarty_Variable();
$_smarty_tpl->tpl_vars['hello']->_loop = false;
foreach ($_from as $_smarty_tpl->tpl_vars['hello']->value) {
$_smarty_tpl->tpl_vars['hello']->_loop = true;
$__foreach_hello_3_saved_local_item = $_smarty_tpl->tpl_vars['hello'];
?>
               <li> <?php echo $_smarty_tpl->tpl_vars['hello']->value->player_id;?>
 <?php echo $_smarty_tpl->tpl_vars['hello']->value->item_id;?>
 <?php echo $_smarty_tpl->tpl_vars['hello']->value->space;?>
</li>
            <?php
$_smarty_tpl->tpl_vars['hello'] = $__foreach_hello_3_saved_local_item;
}
if ($__foreach_hello_3_saved_item) {
$_smarty_tpl->tpl_vars['hello'] = $__foreach_hello_3_saved_item;
}
?>
        </ul>

        <?php echo '<script'; ?>
 type="text/javascript">
            $(".Lel").each(function(){
                $('.Lel').hide();
            });

            $(document).ready(function(){
                $(".Hello").hide();
                $(".Gone").hide();
                $(".Display").hide();
            });

            document.getElementsByClassName('Gone').style.display = 'none';
        <?php echo '</script'; ?>
>
    </div>
</body>
</html><?php }
}
