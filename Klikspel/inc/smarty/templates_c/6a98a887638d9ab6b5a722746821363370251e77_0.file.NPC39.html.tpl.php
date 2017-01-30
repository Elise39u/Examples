<?php
/* Smarty version 3.1.29, created on 2017-01-30 08:42:59
  from "C:\wamp64\www\Examplecode\Klikspel\tpl\NPC39.html.tpl" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_588eee83e6a464_40169606',
  'file_dependency' => 
  array (
    '6a98a887638d9ab6b5a722746821363370251e77' => 
    array (
      0 => 'C:\\wamp64\\www\\Examplecode\\Klikspel\\tpl\\NPC39.html.tpl',
      1 => 1485761571,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_588eee83e6a464_40169606 ($_smarty_tpl) {
?>
<!DOCTYPE HTML>
<html>
<head>
    <title> <?php echo $_smarty_tpl->tpl_vars['pagetitle']->value;?>
 </title>
    <link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.17/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body class="test">
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

    <h1> Well i am Ingrit</h1>
    <p id="Bio"></p>
    <p id="NPC"></p>
    <p id="Quest"></p>
    <p id="Quest1"></p>
    <img src="img/Npcs/Npc39.png">
    <!--
    <button type="button" onclick="Clickme(this.id)" id="Player1"> Have you seen anything strange lastly ??</button> <br>
    <button type="button" onclick="Clickme(this.id)" id="Player2"> I am in need of items can you help me??</button> <br>
    <button type="button" onclick="Clickme(this.id)" id="Player3"> Do you need help with something </button>
    <div id="AddBtn"></div>
    -->

    <div id = "dialog-2" title = "Dialouge">
        <p id="Story">Ingrit: So what is the problem   </p>
    </div>
    <button id = "opener-2"> Welll hi there </button>

    <ul>
        <li><a href="SchoolClass7.php"> Go back  </a></li>
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

<?php echo '<script'; ?>
 type="text/javascript" src="https://rawgit.com/CodeOtter/thusspokenpc/master/index.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="inc/bootbox.min.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="https://code.jquery.com/jquery-1.12.4.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 type="text/javascript" src="JS/NPC/Npc39.js"><?php echo '</script'; ?>
>
</html><?php }
}
