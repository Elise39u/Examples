<?php
/* Smarty version 3.1.29, created on 2016-11-10 15:56:19
  from "C:\wamp64\www\Eigen spel\tpl\index.html.tpl" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_58248a93918fe0_46170042',
  'file_dependency' => 
  array (
    '29ae8891fc630520e20aaae1471271f4418e19a7' => 
    array (
      0 => 'C:\\wamp64\\www\\Eigen spel\\tpl\\index.html.tpl',
      1 => 1478789778,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_58248a93918fe0_46170042 ($_smarty_tpl) {
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

        <?php if ($_smarty_tpl->tpl_vars['location']->value->id == 97) {?>
            <?php if ($_smarty_tpl->tpl_vars['combat']->value == '') {?>
            <p>You've encountered a <?php echo $_smarty_tpl->tpl_vars['monster']->value;?>
!</p>
            <form action='index.php?location_id=97' method='post'>
                <input type='submit' name='action' value='Attack' /> or
                <input type='submit' name='action' value='Run Away' />
                <input type='hidden' name='monster' value='<?php echo $_smarty_tpl->tpl_vars['monster']->value;?>
' />
            </form>
        <?php } else { ?>
                <ul>
                    <?php
$_from = $_smarty_tpl->tpl_vars['combat']->value;
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
                        <li><strong><?php echo $_smarty_tpl->tpl_vars['i']->value['attacker'];?>
</strong> attacks <?php echo $_smarty_tpl->tpl_vars['i']->value['defender'];?>
 for <?php echo $_smarty_tpl->tpl_vars['i']->value['damage'];?>
 damage!</li>
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
                <?php if ($_smarty_tpl->tpl_vars['won']->value == 1) {?>
                    <p>You killed <strong><?php echo $_POST['monster'];?>
</strong>! You gained <strong><?php echo $_smarty_tpl->tpl_vars['gold']->value;?>
</strong> gold.</p>
                    <p><a href='index.php?location_id=44'>Go on Friend</a></p>
                    <p><a href="index.php?location_id=34">Go back to the station </a> </p>
                <?php }?>
                <?php if ($_smarty_tpl->tpl_vars['lost']->value == 1) {?>
                    <p>You were killed by <strong><?php echo $_POST['monster'];?>
</strong>.</p>
                    <p><a href='index.php'>Game over</a></p>
                <?php }?>
            <?php }?>
        <?php }?>

        <?php if ($_smarty_tpl->tpl_vars['location']->value->id == 2) {?>
            <li><a href="index.php?location_id=1"> Log out </a></li>
            <?php echo '<script'; ?>
 type="text/javascript">
                window.alert("Fooled You Friend There is no Button");
            <?php echo '</script'; ?>
>
        <?php }?>

        <?php if ($_smarty_tpl->tpl_vars['location']->value->id == 1) {?>
            <form method="post" action="index.php?location_id=1">
                <h1> Register to save stats</h1> <br>
                First name:<br>
                <input type="text" name="FirstName" id="FirstName" value=""><br>
                Last name:<br>
                <input type="text" name="LastName" id="LastName" value=""><br>
                Email: <br>
                <input type="text" name="Email" id="Email" value=""><br>
                Password:<br>
                <input type="text" name="Password" id="Password" onblur="verifyMinLength(this, 10)" value=""><br>
                Username:<br>
                <input type="text" name="Username" id="Username" value=""><br>
                <input type="submit" name="Submit" value="Submit">
            </form>
        <?php }?>

        <?php echo '<script'; ?>
 type="text/javascript">
        function verifyMinLength(o, len) {
        if (o.value.length < len) {
            alert('The password must be 10 characters in length.');
            location.href = "http://localhost/Eigen%20spel/index.php?location_id=96";
                }
            }
        <?php echo '</script'; ?>
>

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
$__foreach_choice_2_saved_item = isset($_smarty_tpl->tpl_vars['choice']) ? $_smarty_tpl->tpl_vars['choice'] : false;
$_smarty_tpl->tpl_vars['choice'] = new Smarty_Variable();
$_smarty_tpl->tpl_vars['choice']->_loop = false;
foreach ($_from as $_smarty_tpl->tpl_vars['choice']->value) {
$_smarty_tpl->tpl_vars['choice']->_loop = true;
$__foreach_choice_2_saved_local_item = $_smarty_tpl->tpl_vars['choice'];
?>
                <!-- change the string output to a int value  -->
                <?php echo intval($_smarty_tpl->tpl_vars['choice']->value->to_id);?>

                <?php if (isset($_smarty_tpl->tpl_vars['choice']->value->need_item_id)) {?>
                <?php
$_from = $_smarty_tpl->tpl_vars['location']->value->Inventory;
if (!is_array($_from) && !is_object($_from)) {
settype($_from, 'array');
}
$__foreach_Hai_3_saved_item = isset($_smarty_tpl->tpl_vars['Hai']) ? $_smarty_tpl->tpl_vars['Hai'] : false;
$_smarty_tpl->tpl_vars['Hai'] = new Smarty_Variable();
$_smarty_tpl->tpl_vars['Hai']->_loop = false;
foreach ($_from as $_smarty_tpl->tpl_vars['Hai']->value) {
$_smarty_tpl->tpl_vars['Hai']->_loop = true;
$__foreach_Hai_3_saved_local_item = $_smarty_tpl->tpl_vars['Hai'];
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
$_smarty_tpl->tpl_vars['Hai'] = $__foreach_Hai_3_saved_local_item;
}
if ($__foreach_Hai_3_saved_item) {
$_smarty_tpl->tpl_vars['Hai'] = $__foreach_Hai_3_saved_item;
}
?>
                <?php }?>
                <?php if (isset($_smarty_tpl->tpl_vars['choice']->value->need_item_id)) {?>
                    <li class="Gone"><a href="index.php?location_id=<?php echo $_smarty_tpl->tpl_vars['choice']->value->to_id;?>
"><?php echo $_smarty_tpl->tpl_vars['choice']->value->title;?>
</a></li>
                    <?php } elseif ($_smarty_tpl->tpl_vars['location']->value->id == 1) {?>
                    <li class="Gone"><a href="index.php?location_id=<?php echo $_smarty_tpl->tpl_vars['choice']->value->to_id;?>
"><?php echo $_smarty_tpl->tpl_vars['choice']->value->title;?>
</a></li>
                <?php } else { ?>
                    <li><a href="index.php?location_id=<?php echo $_smarty_tpl->tpl_vars['choice']->value->to_id;?>
"><?php echo $_smarty_tpl->tpl_vars['choice']->value->title;?>
</a> </li>
                <?php }?>
            <?php
$_smarty_tpl->tpl_vars['choice'] = $__foreach_choice_2_saved_local_item;
}
if ($__foreach_choice_2_saved_item) {
$_smarty_tpl->tpl_vars['choice'] = $__foreach_choice_2_saved_item;
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
$__foreach_hello_4_saved_item = isset($_smarty_tpl->tpl_vars['hello']) ? $_smarty_tpl->tpl_vars['hello'] : false;
$_smarty_tpl->tpl_vars['hello'] = new Smarty_Variable();
$_smarty_tpl->tpl_vars['hello']->_loop = false;
foreach ($_from as $_smarty_tpl->tpl_vars['hello']->value) {
$_smarty_tpl->tpl_vars['hello']->_loop = true;
$__foreach_hello_4_saved_local_item = $_smarty_tpl->tpl_vars['hello'];
?>
               <li> <?php echo $_smarty_tpl->tpl_vars['hello']->value->player_id;?>
 <?php echo $_smarty_tpl->tpl_vars['hello']->value->item_id;?>
 <?php echo $_smarty_tpl->tpl_vars['hello']->value->space;?>
</li>
            <?php
$_smarty_tpl->tpl_vars['hello'] = $__foreach_hello_4_saved_local_item;
}
if ($__foreach_hello_4_saved_item) {
$_smarty_tpl->tpl_vars['hello'] = $__foreach_hello_4_saved_item;
}
?>
        </ul>

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
        </ul>

        <?php echo '<script'; ?>
 type="text/javascript">
            $(document).ready(function(){
                $(".Gone").hide();
            });
        <?php echo '</script'; ?>
>
    </div>
</body>
</html><?php }
}
