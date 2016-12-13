<?php
/* Smarty version 3.1.29, created on 2016-12-13 08:32:30
  from "C:\wamp64\www\Examplecode\Klikspel\tpl\Message.html.tpl" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_584fa40e903931_53035103',
  'file_dependency' => 
  array (
    '2a47cc2aa4b87e7578b75d7aeb462a55671a37d2' => 
    array (
      0 => 'C:\\wamp64\\www\\Examplecode\\Klikspel\\tpl\\Message.html.tpl',
      1 => 1481614271,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_584fa40e903931_53035103 ($_smarty_tpl) {
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

    <h1> Like wut ?? </h1>

    <p>  As you build you`re Antenne you recvie the folowwing messages <br>
        Message 1: For any ..... Out ....! If you`re still .... and not .... come to the roof of the police .... and we ... pick ... with one of our choppers. The ... needed is a flare ... signal Greeting the Army <br>
        Message 2: We want to that you follow the next steps friend: 1. Go to the graveyard 2. Find us weapons 3. Signal a flare 4. in exchange you can ride with us Only if you make the promisis you can find redemption Greetings Mr. S <br>
        What wil you do now the 2nd message was so clear if it came out of space but wait you recevie a anthor message. <br>
        Message 3: ... Citziten of New york ... We ... conformation ... Army .. Will .... ... the City.. in case of the outbreak.... to all Citziten ... still ... ... evac at the bridige... ... luck ... all ... ... Channel 6 <br>
        And now thinking who shoud i message back to escape this god damm city </p>

    <img src="img/Message.png">
    <ul>
        <li><a href="eroof.php"> Go back </li>
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
