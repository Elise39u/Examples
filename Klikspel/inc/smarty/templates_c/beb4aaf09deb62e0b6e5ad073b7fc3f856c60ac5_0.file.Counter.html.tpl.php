<?php
/* Smarty version 3.1.29, created on 2017-01-12 09:00:13
  from "C:\wamp64\www\Examplecode\Klikspel\tpl\Counter.html.tpl" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_5877378d542463_58120529',
  'file_dependency' => 
  array (
    'beb4aaf09deb62e0b6e5ad073b7fc3f856c60ac5' => 
    array (
      0 => 'C:\\wamp64\\www\\Examplecode\\Klikspel\\tpl\\Counter.html.tpl',
      1 => 1484208008,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5877378d542463_58120529 ($_smarty_tpl) {
?>
<!DOCTYPE HTML>
<html>
<head>
    <title> The <?php echo $_smarty_tpl->tpl_vars['pagetitle']->value;?>
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

    <h1> Money </h1>
    <p>Welcome to the bank </p>   <p> You currently have <strong><?php echo $_smarty_tpl->tpl_vars['inbank']->value;?>
</strong> gold in the bank, and <strong><?php echo $_smarty_tpl->tpl_vars['gold']->value;?>
</strong> gold in hand.</p>
    <form action='Counter.php' method='post'>
        <input type='number' name='amount' /><br />
        <input type='submit' name='action' value='Deposit' /> or
        <input type='submit' name='action' value='Withdraw' /> 	</form>

    <?php if (isset($_smarty_tpl->tpl_vars['info']->value)) {?>
        <p class="item"> <?php echo $_smarty_tpl->tpl_vars['info']->value;?>
 <br>
        You cant withdraw/depoist a negtive number</p>
    <?php }?>
    <?php if (isset($_smarty_tpl->tpl_vars['deposited']->value)) {?>
        <?php if ($_smarty_tpl->tpl_vars['deposited']->value != 0) {?>
            <p>You deposited <strong><?php echo $_smarty_tpl->tpl_vars['deposited']->value;?>
</strong> gold into your bank account. Your total in the bank is now <strong><?php echo $_smarty_tpl->tpl_vars['inbank']->value;?>
</strong>.</p>
        <?php }?>
    <?php }?>
    <?php if (isset($_smarty_tpl->tpl_vars['withdrawn']->value)) {?>
        <?php if ($_smarty_tpl->tpl_vars['withdrawn']->value != 0) {?>
            <p>You withdraw <strong><?php echo $_smarty_tpl->tpl_vars['withdrawn']->value;?>
</strong> gold from your bank account. Your total gold in hand is now <strong><?php echo $_smarty_tpl->tpl_vars['gold']->value;?>
</strong>.</p>
        <?php }?>
    <?php }?>

    <img src="img/Bank2.png">
    <ul>
        <li><a href=Bank.php> Go back  </a> </li>
    </ul>
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
