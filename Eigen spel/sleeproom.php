<?php
include_once( "inc/class.TemplatePower.inc.php" );

$tpl = new TemplatePower( "tpl/sleeproom.html.tpl" );
$tpl->prepare();

$tpl->assign( "name", "Ron" );

$tpl->printToScreen();