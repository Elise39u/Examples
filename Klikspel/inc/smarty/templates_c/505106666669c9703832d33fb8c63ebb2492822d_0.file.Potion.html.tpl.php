<?php
/* Smarty version 3.1.29, created on 2017-02-01 08:21:39
  from "C:\wamp64\www\Examplecode\Klikspel\tpl\Potion.html.tpl" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_58918c8392b939_04049283',
  'file_dependency' => 
  array (
    '505106666669c9703832d33fb8c63ebb2492822d' => 
    array (
      0 => 'C:\\wamp64\\www\\Examplecode\\Klikspel\\tpl\\Potion.html.tpl',
      1 => 1485933694,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_58918c8392b939_04049283 ($_smarty_tpl) {
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

    <h1> Healing And Potions? </h1>
    <p>Welcome to the healer. You currently have <strong><?php echo $_smarty_tpl->tpl_vars['curhp']->value;?>
</strong> HP out of a maximum of <strong><?php echo $_smarty_tpl->tpl_vars['maxhp']->value;?>
</strong>.</p>
    <p>You have <strong><?php echo $_smarty_tpl->tpl_vars['gold']->value;?>
</strong> gold to heal yourself with, and it will cost you <strong>1 gold per HP healed</strong> to heal yourself.</p>
    <?php if (isset($_smarty_tpl->tpl_vars['healed']->value)) {?>
        <?php if (isset($_smarty_tpl->tpl_vars['info']->value)) {?>
            <p class="hide">  <?php echo $_smarty_tpl->tpl_vars['info']->value;?>
  <br>
            You can`t damge you`re self</p>
        <?php }?>
        <?php if ($_smarty_tpl->tpl_vars['healed']->value != 0) {?>
            <p>You have been healed for <strong><?php echo $_smarty_tpl->tpl_vars['healed']->value;?>
</strong> HP.</p>
        <?php }?>
    <?php }?>
    <form action='Potion.php' method='post'>
        <input type='text' name='amount' id='amount' /><br />
        <input type='submit' name='action' value='Heal Me' />
    </form>

    <p>Below are the Potions currently available for purchase.</p>
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

    <?php if (isset($_smarty_tpl->tpl_vars['Nope']->value)) {?>
        <?php if ($_smarty_tpl->tpl_vars['Nope']->value != '') {?>
            <p style="color: #980098;"><?php echo $_smarty_tpl->tpl_vars['Nope']->value;?>
 <br>
            So we assume one?</p>
        <?php }?>
    <?php }?>

    <?php if (isset($_smarty_tpl->tpl_vars['Mehhhhhh']->value)) {?>
        <?php if ($_smarty_tpl->tpl_vars['Mehhhhhh']->value != '') {?>
            <p style="color: #980098;"><?php echo $_smarty_tpl->tpl_vars['Mehhhhhh']->value;?>
 </p>
        <?php }?>
    <?php }?>

    <?php if (isset($_smarty_tpl->tpl_vars['NoNo']->value)) {?>
        <?php if ($_smarty_tpl->tpl_vars['NoNo']->value != '') {?>
            <p style="color: #980098;"><?php echo $_smarty_tpl->tpl_vars['NoNo']->value;?>
 </p>
        <?php }?>
    <?php }?>

    <?php if (isset($_smarty_tpl->tpl_vars['Damm']->value)) {?>
        <?php if ($_smarty_tpl->tpl_vars['Damm']->value != '') {?>
            <p style="color: #980098;"><?php echo $_smarty_tpl->tpl_vars['Damm']->value;?>
 </p>
        <?php }?>
    <?php }?>

    <ul>
        <?php
$_from = $_smarty_tpl->tpl_vars['potion']->value;
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
            <form action='Potion.php' method='post'>
                <input type='hidden' name='potion-id' value='<?php echo $_smarty_tpl->tpl_vars['i']->value['id'];?>
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
    </ul>
    <p> As you standing there thinking need i a healing or potions its op to you.</p>
    <img src="img/Healer.png">

    <ul>
        <li><a href="AgianStreet.php"> Go back ^.^ </a></li>
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
