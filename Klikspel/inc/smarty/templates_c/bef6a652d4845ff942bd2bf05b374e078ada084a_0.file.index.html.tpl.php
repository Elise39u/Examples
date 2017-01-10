<?php
/* Smarty version 3.1.29, created on 2017-01-10 10:05:35
  from "C:\wamp64\www\Examplecode\Klikspel\tpl\index.html.tpl" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_5874a3df653b24_92116772',
  'file_dependency' => 
  array (
    'bef6a652d4845ff942bd2bf05b374e078ada084a' => 
    array (
      0 => 'C:\\wamp64\\www\\Examplecode\\Klikspel\\tpl\\index.html.tpl',
      1 => 1484039133,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5874a3df653b24_92116772 ($_smarty_tpl) {
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

        <form method="post" action="index.php">
            <!-- pattern='[a-z][A-Z][0-9\s]+@' -->
            <h1> Register to save stats</h1> <br>
            First name:<br>
            <input type="text" name="FirstName" id="FirstName" value="<?php if (isset($_POST['FirstName'])) {
echo $_POST['FirstName'];
}?>"><br>
            Last name:<br>
            <input type="text" name="LastName" id="LastName" value="<?php if (isset($_POST['LastName'])) {
echo $_POST['LastName'];
}?>"><br>
            Email: <br>
            <input type="text" name="Email" id="Email" value="<?php if (isset($_POST['Email'])) {
echo $_POST['Email'];
}?>"><br>
            Password:<br>
            <input type="text" name="Password" id="Password" onblur="verifyMinLength(this, 10)" value="<?php if (isset($_POST['Password'])) {
echo $_POST['Password'];
}?>"><br>
            Username:<br>
            <input type="text" name="Username" id="Username" value="<?php if (isset($_POST['Username'])) {
echo $_POST['Username'];
}?>"><br>
            <input type="submit" name="submit" value="Submit">
        </form>


    <P>  Welcome to my internet game. Do you want to escape this abonded city? <br>
        So yes click the button below <br>
        No then i say close the page </P>
    <img src="img/image-3747618.jpg">
    <?php echo '<script'; ?>
 type="text/javascript">
        function verifyMinLength(o, len) {
            if (o.value.length < len) {
                alert('The password must be 10 characters in length.');
                location.href = "http://localhost/Examplecode/Klikspel/fault.php";
            }
        }
    <?php echo '</script'; ?>
>

    <ul>
        <?php
$_from = $_smarty_tpl->tpl_vars['inventory']->value;
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
            <li> <?php echo $_smarty_tpl->tpl_vars['i']->value['player_id'];?>
 <?php echo $_smarty_tpl->tpl_vars['i']->value['item_id'];?>
 <?php echo $_smarty_tpl->tpl_vars['i']->value['space'];?>
 <?php echo $_smarty_tpl->tpl_vars['i']->value['quantity'];?>
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

</div>
</body>
</html><?php }
}
